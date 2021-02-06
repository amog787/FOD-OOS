.class Lcom/android/server/wm/TaskScreenshotAnimatable;
.super Ljava/lang/Object;
.source "TaskScreenshotAnimatable.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskScreenshotAnim"


# instance fields
.field private mHeight:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mTask:Lcom/android/server/wm/Task;

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/util/function/Function;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    .locals 15
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "screenshotBuffer"    # Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/SurfaceSession;",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Lcom/android/server/wm/Task;",
            "Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;",
            ")V"
        }
    .end annotation

    .line 43
    .local p1, "surfaceControlFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Builder;>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 45
    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    .line 46
    .local v2, "buffer":Landroid/graphics/GraphicBuffer;
    :goto_0
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    .line 47
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    .line 48
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    iput v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    .line 49
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v5, :cond_3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    iget v6, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    int-to-long v6, v6

    .local v6, "protoLogParam1":J
    iget v8, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    int-to-long v8, v8

    .local v8, "protoLogParam2":J
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v11, 0x76489e36

    const/16 v12, 0x14

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v4, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v10, v11, v12, v1, v13}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":J
    .end local v8    # "protoLogParam2":J
    :cond_3
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    move-object/from16 v4, p1

    invoke-interface {v4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Builder;

    .line 53
    const-string v5, "RecentTaskScreenshotSurface"

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    iget v6, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    .line 54
    invoke-virtual {v1, v5, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 55
    const-string v5, "TaskScreenshotAnimatable"

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 57
    if-eqz v2, :cond_4

    .line 58
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    .line 59
    .local v1, "surface":Landroid/view/Surface;
    iget-object v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 61
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 62
    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 63
    .local v6, "scale":F
    iget-object v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v7, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 65
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v6    # "scale":F
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskScreenshotAnimatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 66
    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 76
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 81
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 89
    :cond_0
    return-void
.end method
