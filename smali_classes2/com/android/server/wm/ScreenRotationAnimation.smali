.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"

# interfaces
.implements Lcom/android/server/wm/IScreenRotationAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;
    }
.end annotation


# static fields
.field private static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field private static final SCREEN_FREEZE_LAYER_ENTER:I = 0x1eab90

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAnimRunning:Z

.field private mBackColorSurface:Landroid/view/SurfaceControl;

.field private final mContext:Landroid/content/Context;

.field private mCurRotation:I

.field private mCurrentDisplayRect:Landroid/graphics/Rect;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEndLuma:F

.field private mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

.field private final mEnterTransformation:Landroid/view/animation/Transformation;

.field private mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field private mFinishAnimReady:Z

.field private mFinishAnimStartTime:J

.field private mForceDefaultOrientation:Z

.field private mHeight:I

.field private mIsPerfLockAcquired:Z

.field private mIsRotation0:Z

.field private mOriginalDisplayRect:Landroid/graphics/Rect;

.field private final mOriginalHeight:I

.field private final mOriginalRotation:I

.field private final mOriginalWidth:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field private mRotateEnterAnimation:Landroid/view/animation/Animation;

.field private final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field private mRotateExitAnimation:Landroid/view/animation/Animation;

.field private final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field private mScreenshotLayer:Landroid/view/SurfaceControl;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field private mStartLuma:F

.field private mStarted:Z

.field private mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

.field private mTakingScreenshotSuccess:Z

.field private final mTmpFloats:[F

.field private mWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;I)V
    .locals 23
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "originalRotation"    # I

    .line 171
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const-string v0, "ScreenRotationAnimation"

    const-string v10, "WindowManager"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v11, 0x0

    iput-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 113
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 117
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 118
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 119
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 121
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 122
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 142
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 163
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    .line 168
    iput-boolean v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    .line 172
    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 173
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 174
    iput-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 175
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 177
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    .line 181
    .local v14, "displayInfo":Landroid/view/DisplayInfo;
    iget v15, v14, Landroid/view/DisplayInfo;->rotation:I

    .line 184
    .local v15, "realOriginalRotation":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iput-boolean v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    .line 187
    iget v2, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 188
    .local v2, "originalWidth":I
    iget v3, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move v7, v2

    move v6, v3

    .local v3, "originalHeight":I
    goto :goto_0

    .line 191
    .end local v2    # "originalWidth":I
    .end local v3    # "originalHeight":I
    :cond_0
    iget v2, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 192
    .restart local v2    # "originalWidth":I
    iget v3, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    move v7, v2

    move v6, v3

    .line 194
    .end local v2    # "originalWidth":I
    .local v6, "originalHeight":I
    .local v7, "originalWidth":I
    :goto_0
    const/4 v5, 0x3

    if-eq v15, v13, :cond_2

    if-ne v15, v5, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 200
    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_2

    .line 196
    :cond_2
    :goto_1
    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 197
    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 203
    :goto_2
    iput v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 208
    invoke-static {v9, v15}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v4

    .line 209
    .local v4, "delta":I
    if-eq v4, v13, :cond_4

    if-ne v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v2, v12

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v13

    :goto_4
    move/from16 v16, v2

    .line 210
    .local v16, "flipped":Z
    if-eqz v16, :cond_5

    move v2, v6

    goto :goto_5

    :cond_5
    move v2, v7

    :goto_5
    iput v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 211
    if-eqz v16, :cond_6

    move v2, v7

    goto :goto_6

    :cond_6
    move v2, v6

    :goto_6
    iput v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 212
    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;-><init>(Lcom/android/server/wm/ScreenRotationAnimation;)V

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v3

    .line 216
    .local v3, "isSecure":Z
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 218
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_0
    invoke-virtual {v8, v11}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v11, "BackColorSurface"

    .line 219
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 220
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 221
    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 222
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v11, "RotationLayer"

    .line 225
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 226
    invoke-virtual {v5, v11, v12}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 227
    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 228
    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 229
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v11, "EnterBlackFrameLayer"

    .line 232
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 233
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 234
    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 239
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    move-object v11, v0

    .line 240
    .local v11, "t2":Landroid/view/SurfaceControl$Transaction;
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v0, v13}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 241
    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    move v12, v0

    .line 245
    .local v12, "displayId":I
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    move-object v5, v0

    .line 246
    .local v5, "surface":Landroid/view/Surface;
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 247
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 248
    invoke-virtual {v0, v12}, Landroid/hardware/display/DisplayManagerInternal;->systemScreenshot(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    move-object/from16 v18, v0

    .line 249
    .local v18, "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v18, :cond_a

    .line 250
    const-string v0, "ScreenRotationAnimation#getMedianBorderLuma"
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v19, v14

    .end local v14    # "displayInfo":Landroid/view/DisplayInfo;
    .local v19, "displayInfo":Landroid/view/DisplayInfo;
    const-wide/16 v13, 0x20

    :try_start_1
    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 252
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 253
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v13

    .line 252
    invoke-static {v0, v13}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)F

    move-result v0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    .line 257
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_7

    .line 258
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    iget-object v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v20, v7

    .end local v7    # "originalWidth":I
    .local v20, "originalWidth":I
    :try_start_2
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v2

    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .local v8, "t":Landroid/view/SurfaceControl$Transaction;
    move-object/from16 v2, p1

    move/from16 v21, v3

    .end local v3    # "isSecure":Z
    .local v21, "isSecure":Z
    move v3, v0

    move/from16 v22, v4

    .end local v4    # "delta":I
    .local v22, "delta":I
    move-object v4, v13

    move-object v13, v5

    const/4 v9, 0x3

    .end local v5    # "surface":Landroid/view/Surface;
    .local v13, "surface":Landroid/view/Surface;
    move-object/from16 v5, v18

    move/from16 v17, v6

    .end local v6    # "originalHeight":I
    .local v17, "originalHeight":I
    move-object v6, v14

    move/from16 v14, v20

    .end local v20    # "originalWidth":I
    .local v14, "originalWidth":I
    :try_start_3
    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->init(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    goto :goto_7

    .line 302
    .end local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v11    # "t2":Landroid/view/SurfaceControl$Transaction;
    .end local v12    # "displayId":I
    .end local v13    # "surface":Landroid/view/Surface;
    .end local v14    # "originalWidth":I
    .end local v17    # "originalHeight":I
    .end local v18    # "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .end local v21    # "isSecure":Z
    .end local v22    # "delta":I
    .restart local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "isSecure":Z
    .restart local v4    # "delta":I
    .restart local v6    # "originalHeight":I
    .restart local v20    # "originalWidth":I
    :catch_0
    move-exception v0

    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v17, v6

    move/from16 v14, v20

    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "isSecure":Z
    .end local v4    # "delta":I
    .end local v6    # "originalHeight":I
    .end local v20    # "originalWidth":I
    .restart local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v14    # "originalWidth":I
    .restart local v17    # "originalHeight":I
    .restart local v21    # "isSecure":Z
    .restart local v22    # "delta":I
    goto/16 :goto_b

    .line 257
    .end local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v14    # "originalWidth":I
    .end local v17    # "originalHeight":I
    .end local v21    # "isSecure":Z
    .end local v22    # "delta":I
    .restart local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "isSecure":Z
    .restart local v4    # "delta":I
    .restart local v5    # "surface":Landroid/view/Surface;
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    .restart local v11    # "t2":Landroid/view/SurfaceControl$Transaction;
    .restart local v12    # "displayId":I
    .restart local v18    # "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :cond_7
    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-object v13, v5

    move/from16 v17, v6

    move v14, v7

    const/4 v9, 0x3

    .line 262
    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "isSecure":Z
    .end local v4    # "delta":I
    .end local v5    # "surface":Landroid/view/Surface;
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .restart local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v13    # "surface":Landroid/view/Surface;
    .restart local v14    # "originalWidth":I
    .restart local v17    # "originalHeight":I
    .restart local v21    # "isSecure":Z
    .restart local v22    # "delta":I
    :goto_7
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_3

    .line 264
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 265
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 264
    invoke-virtual {v13, v0, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_3

    .line 268
    goto :goto_8

    .line 266
    :catch_1
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to attach screenshot - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 273
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 275
    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const v2, 0x1eab90

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 276
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 277
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 284
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_9

    .line 285
    invoke-static {v8}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->setInitColorForBackColorSurface(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_9

    .line 287
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    new-array v2, v9, [F

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    aput v4, v2, v3

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 290
    :goto_9
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 291
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 292
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a

    .line 302
    .end local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v11    # "t2":Landroid/view/SurfaceControl$Transaction;
    .end local v12    # "displayId":I
    .end local v13    # "surface":Landroid/view/Surface;
    .end local v14    # "originalWidth":I
    .end local v17    # "originalHeight":I
    .end local v18    # "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .end local v21    # "isSecure":Z
    .end local v22    # "delta":I
    .restart local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "isSecure":Z
    .restart local v4    # "delta":I
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    :catch_2
    move-exception v0

    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v17, v6

    move v14, v7

    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "isSecure":Z
    .end local v4    # "delta":I
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .restart local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v14    # "originalWidth":I
    .restart local v17    # "originalHeight":I
    .restart local v21    # "isSecure":Z
    .restart local v22    # "delta":I
    goto :goto_b

    .line 294
    .end local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v17    # "originalHeight":I
    .end local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v21    # "isSecure":Z
    .end local v22    # "delta":I
    .restart local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "isSecure":Z
    .restart local v4    # "delta":I
    .restart local v5    # "surface":Landroid/view/Surface;
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    .restart local v11    # "t2":Landroid/view/SurfaceControl$Transaction;
    .restart local v12    # "displayId":I
    .local v14, "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18    # "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :cond_a
    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-object v13, v5

    move/from16 v17, v6

    move-object/from16 v19, v14

    move v14, v7

    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "isSecure":Z
    .end local v4    # "delta":I
    .end local v5    # "surface":Landroid/view/Surface;
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .restart local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v13    # "surface":Landroid/view/Surface;
    .local v14, "originalWidth":I
    .restart local v17    # "originalHeight":I
    .restart local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v21    # "isSecure":Z
    .restart local v22    # "delta":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to take screenshot of display "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    .line 301
    :goto_a
    invoke-virtual {v13}, Landroid/view/Surface;->destroy()V
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_3

    .line 304
    .end local v11    # "t2":Landroid/view/SurfaceControl$Transaction;
    .end local v12    # "displayId":I
    .end local v13    # "surface":Landroid/view/Surface;
    .end local v18    # "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    goto :goto_c

    .line 302
    :catch_3
    move-exception v0

    goto :goto_b

    .end local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v17    # "originalHeight":I
    .end local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v21    # "isSecure":Z
    .end local v22    # "delta":I
    .restart local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "isSecure":Z
    .restart local v4    # "delta":I
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    .local v14, "displayInfo":Landroid/view/DisplayInfo;
    :catch_4
    move-exception v0

    move-object v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v17, v6

    move-object/from16 v19, v14

    move v14, v7

    .line 303
    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "isSecure":Z
    .end local v4    # "delta":I
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    .local v14, "originalWidth":I
    .restart local v17    # "originalHeight":I
    .restart local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v21    # "isSecure":Z
    .restart local v22    # "delta":I
    :goto_b
    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_c
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0xa1e0f4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v6, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_b
    invoke-virtual {v1, v8, v15}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 309
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/BlackFrame;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ScreenRotationAnimation;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 101
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    return v0
.end method

.method private setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .locals 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 336
    .local v1, "x":F
    const/4 v2, 0x5

    aget v0, v0, v2

    .line 337
    .local v0, "y":F
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 339
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 340
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 343
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

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

    .line 347
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 348
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 349
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .locals 27
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    .line 401
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 403
    return v9

    .line 405
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    .line 406
    return v10

    .line 409
    :cond_1
    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 412
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v0, v11}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v11

    .line 416
    .local v11, "delta":I
    const/4 v0, 0x3

    const/4 v12, 0x2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 417
    const/4 v13, 0x1

    .line 418
    .local v13, "customAnim":Z
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v14, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 419
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v14, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 420
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a008e

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 423
    .end local v13    # "customAnim":Z
    :cond_2
    const/4 v13, 0x0

    .line 424
    .restart local v13    # "customAnim":Z
    if-eqz v11, :cond_6

    if-eq v11, v10, :cond_5

    if-eq v11, v12, :cond_4

    if-eq v11, v0, :cond_3

    goto :goto_0

    .line 448
    :cond_3
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0093

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 450
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0092

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 442
    :cond_4
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a008c

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 444
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a008b

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 446
    goto :goto_0

    .line 436
    :cond_5
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0095

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 438
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0094

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 440
    goto :goto_0

    .line 426
    :cond_6
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a008a

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 428
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0089

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 432
    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    .line 434
    nop

    .line 456
    :goto_0
    sget-boolean v14, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v14, :cond_7

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .local v14, "protoLogParam0":Ljava/lang/String;
    iget v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-static {v15}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .local v15, "protoLogParam1":Ljava/lang/String;
    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v12}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v0, v9

    const/16 v17, 0x1

    aput-object v15, v0, v17

    const/16 v16, 0x2

    aput-object v12, v0, v16

    const v7, -0xa8d6d15

    const/4 v8, 0x0

    invoke-static {v10, v7, v9, v8, v0}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 472
    .end local v12    # "protoLogParam2":Ljava/lang/String;
    .end local v14    # "protoLogParam0":Ljava/lang/String;
    .end local v15    # "protoLogParam1":Ljava/lang/String;
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_8

    .line 483
    const/4 v0, 0x0

    invoke-static {v11, v0, v5, v6}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->loadAnimation(IZII)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 485
    const/4 v7, 0x1

    invoke-static {v11, v7, v5, v6}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->loadAnimation(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 488
    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 489
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 491
    :goto_1
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 492
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 493
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 494
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 498
    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 499
    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 501
    if-eqz v13, :cond_9

    .line 502
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 503
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 506
    :cond_9
    if-eqz v13, :cond_a

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_a

    .line 508
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    neg-int v7, v5

    neg-int v8, v6

    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v10, v6, 0x2

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v21, v0

    .line 510
    .local v21, "outer":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v22, v0

    .line 511
    .local v22, "inner":Landroid/graphics/Rect;
    new-instance v0, Lcom/android/server/wm/BlackFrame;

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    const v23, 0x1eab90

    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v25, 0x0

    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v20, p1

    move-object/from16 v24, v8

    move-object/from16 v26, v9

    invoke-direct/range {v18 .. v26}, Lcom/android/server/wm/BlackFrame;-><init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;ZLandroid/view/SurfaceControl;)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v21    # "outer":Landroid/graphics/Rect;
    .end local v22    # "inner":Landroid/graphics/Rect;
    goto :goto_2

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v7, "WindowManager"

    const-string v8, "Unable to allocate black surface"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_a
    :goto_2
    if-eqz v13, :cond_b

    .line 519
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startCustomAnimation()V

    goto :goto_3

    .line 527
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    if-nez v0, :cond_c

    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_c

    .line 538
    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->startScreenRotationAnimation()V

    goto :goto_3

    .line 540
    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenRotationAnimation()V

    .line 545
    :goto_3
    const/4 v7, 0x1

    return v7
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 555
    return v1

    .line 557
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 559
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 558
    invoke-static {v0, v3}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    .line 563
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 570
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 569
    invoke-static {v0, v3, v4}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->calColorForSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;I)V

    .line 574
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-nez v3, :cond_2

    .line 577
    const/16 v3, 0x1090

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 578
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 581
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_3

    .line 582
    return v1

    .line 584
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 585
    return v2
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 313
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 314
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 315
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 316
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 317
    return-void
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public hasScreenshot()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 651
    sget-boolean v0, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->IS_SCREEN_ROTATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTakingScreenshotSuccess:Z

    if-eqz v0, :cond_0

    .line 657
    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->isAnimating()Z

    move-result v0

    return v0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 661
    :goto_0
    return v0
.end method

.method public isRotating()Z
    .locals 2

    .line 666
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
    .locals 6

    .line 592
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsRotation0:Z

    if-nez v0, :cond_0

    .line 593
    invoke-static {}, Lcom/android/server/wm/OpScreenRotationImprovementInjector;->kill()V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->cancel()V

    .line 599
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 603
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x40f3b7ee

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 604
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 605
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 606
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 608
    :cond_3
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 610
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_5

    .line 611
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 612
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 614
    :cond_4
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 616
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_7

    .line 617
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 618
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 620
    :cond_6
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 622
    :cond_7
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 625
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_9

    .line 626
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 627
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 629
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 630
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 631
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 633
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b

    .line 634
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 635
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 637
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 638
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 639
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 642
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v1, :cond_d

    .line 643
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 644
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 646
    :cond_d
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 352
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 353
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 354
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 355
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 361
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 362
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 363
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 364
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 365
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 366
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 367
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 368
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 369
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 370
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 371
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 373
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 375
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 377
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 378
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_1

    .line 379
    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    :cond_1
    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rotation"    # I

    .line 385
    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 390
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 391
    .local v0, "delta":I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/utils/RotationAnimationUtils;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 394
    return-void
.end method
