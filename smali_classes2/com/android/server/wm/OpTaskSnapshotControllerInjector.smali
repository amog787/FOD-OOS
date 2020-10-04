.class public Lcom/android/server/wm/OpTaskSnapshotControllerInjector;
.super Ljava/lang/Object;
.source "OpTaskSnapshotControllerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpTaskSnapshotControllerInjector"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTaskSnapshot(Lcom/android/server/wm/Task;FLandroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 5
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "scaleFraction"    # F
    .param p2, "tmpRect"    # Landroid/graphics/Rect;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 87
    sget-boolean v0, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to take screenshot. No surface control for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpTaskSnapshotControllerInjector"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-object v1

    .line 93
    :cond_1
    nop

    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    .line 94
    invoke-static {v0, p2, p1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    .line 96
    .local v0, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_2
    move-object v2, v1

    :goto_0
    nop

    .line 99
    .local v2, "buffer":Landroid/graphics/GraphicBuffer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    if-gt v3, v4, :cond_3

    goto :goto_1

    .line 102
    :cond_3
    return-object v0

    .line 100
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "state"    # Lcom/android/server/wm/WindowState;

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->isEmpty(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "OpTaskSnapshotControllerInjector"

    const-string v1, "LetterBox insets empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->maxRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Rect;
    goto :goto_0

    .line 114
    .end local v0    # "insets":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 115
    .restart local v0    # "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 117
    :goto_0
    return-object v0
.end method

.method private static isEmpty(Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 121
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static maxRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "rect1"    # Landroid/graphics/Rect;
    .param p1, "rect2"    # Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 134
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 135
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 132
    return-object v0
.end method

.method private static minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "rect1"    # Landroid/graphics/Rect;
    .param p1, "rect2"    # Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 126
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 127
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 128
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    return-object v0
.end method

.method public static updateTaskSnapshotOrientation(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 10
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "appOrientation"    # I
    .param p2, "mainWindowRect"    # Landroid/graphics/Rect;
    .param p3, "tmpRect"    # Landroid/graphics/Rect;

    .line 35
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 36
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 37
    .local v1, "height":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    .line 38
    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 41
    .local v4, "winOrientation":I
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 42
    const/4 v5, 0x0

    invoke-virtual {p3, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 44
    const-string v6, "OpTaskSnapshotControllerInjector"

    if-eqz p1, :cond_7

    .line 46
    if-eq p1, v4, :cond_3

    .line 47
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 50
    invoke-virtual {p3, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 52
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App and window orientation conflicts, use window orientation: winOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tmpRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    return v4

    .line 60
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    move v7, v5

    .line 61
    .local v7, "tmpRectPortrait":Z
    :goto_1
    if-ne p1, v2, :cond_5

    if-nez v7, :cond_6

    :cond_5
    if-ne p1, v3, :cond_7

    if-nez v7, :cond_7

    .line 63
    :cond_6
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    iget v9, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    sget-boolean v2, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App orientation and tmpRect size conflicts, swap the dimension of tmpRect: tmpRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v7    # "tmpRectPortrait":Z
    :cond_7
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeAnimating()Z

    move-result v2

    if-nez v2, :cond_8

    .line 73
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 74
    :cond_8
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->getOffsetY()I

    move-result v2

    .line 75
    .local v2, "offsetY":I
    invoke-virtual {p3, v5, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 76
    sget-boolean v3, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "one-handed mode is running, offset snapshot region. tmpRect="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v2    # "offsetY":I
    :cond_9
    return p1
.end method
