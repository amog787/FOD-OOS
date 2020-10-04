.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 38
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "StrictModeFlash"

    .line 44
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v1, v1}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 46
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object v0, v2

    .line 48
    const v2, 0xf6950

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 50
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 51
    iget-object v2, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 54
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 55
    iput-boolean v1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 56
    return-void
.end method

.method private drawIfNeeded()V
    .locals 8

    .line 59
    iget-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 63
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 64
    .local v1, "dw":I
    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 66
    .local v2, "dh":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 67
    .local v3, "dirty":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 69
    .local v4, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 72
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v5

    goto :goto_1

    .line 70
    :catch_1
    move-exception v5

    goto :goto_0

    .line 73
    :goto_1
    if-nez v4, :cond_1

    .line 74
    return-void

    .line 78
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 79
    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x14

    invoke-direct {v5, v0, v0, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 80
    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 81
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 84
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0, v0, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 85
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 86
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 88
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 89
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v1, -0x14

    invoke-direct {v6, v7, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 90
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 93
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 94
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v2, -0x14

    invoke-direct {v6, v0, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 95
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 96
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method


# virtual methods
.method positionSurface(II)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .line 116
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 120
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setBufferSize(II)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 123
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 108
    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 113
    :goto_0
    return-void
.end method
