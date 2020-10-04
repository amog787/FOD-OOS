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
.method private constructor <init>(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "screenshotBuffer"    # Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p2, :cond_0

    .line 57
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 58
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    .line 59
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    .line 60
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    :cond_2
    iput v1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    .line 61
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v1, :cond_3

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating TaskScreenshotAnimatable: task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskScreenshotAnim"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 66
    const-string v2, "RecentTaskScreenshotSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    iget v3, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 69
    if-eqz v0, :cond_4

    .line 70
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    .line 71
    .local v1, "surface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 72
    invoke-virtual {v1, v0}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 73
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 75
    .end local v1    # "surface":Landroid/view/Surface;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskScreenshotAnimatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 76
    return-void
.end method

.method public static create(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskScreenshotAnimatable;
    .locals 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 41
    new-instance v0, Lcom/android/server/wm/TaskScreenshotAnimatable;

    invoke-static {p0}, Lcom/android/server/wm/TaskScreenshotAnimatable;->getBufferFromTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TaskScreenshotAnimatable;-><init>(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V

    return-object v0
.end method

.method private static getBufferFromTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 3
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 49
    .local v0, "tmpRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    invoke-static {v1, v0, v2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 86
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 91
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 99
    :cond_0
    return-void
.end method
