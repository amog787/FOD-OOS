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
.method constructor <init>(Ljava/util/function/Supplier;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p2, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/server/wm/DisplayContent;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    .line 43
    .local p1, "surfaceFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/Surface;>;"
    const-string v0, "StrictModeFlash"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 44
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "ctrl":Landroid/view/SurfaceControl;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v2, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const/4 v4, -0x3

    .line 50
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object v1, v3

    .line 55
    const v3, 0xf6950

    invoke-virtual {p3, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 56
    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 57
    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v1, p3, v3, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 66
    iput-boolean v2, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 67
    return-void
.end method

.method private drawIfNeeded()V
    .locals 8

    .line 70
    iget-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 74
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 75
    .local v1, "dw":I
    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 77
    .local v2, "dh":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .local v3, "dirty":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 80
    .local v4, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 83
    :goto_0
    goto :goto_1

    .line 82
    :catch_0
    move-exception v5

    goto :goto_1

    .line 81
    :catch_1
    move-exception v5

    goto :goto_0

    .line 84
    :goto_1
    if-nez v4, :cond_1

    .line 85
    return-void

    .line 89
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 90
    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x14

    invoke-direct {v5, v0, v0, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 91
    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 92
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 94
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 95
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0, v0, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 96
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 97
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 99
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 100
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v1, -0x14

    invoke-direct {v6, v7, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 101
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 102
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 104
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 105
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v2, -0x14

    invoke-direct {v6, v0, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 106
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 107
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 110
    return-void
.end method


# virtual methods
.method positionSurface(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 127
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 131
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 134
    return-void
.end method

.method public setVisibility(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 119
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 124
    :goto_0
    return-void
.end method
