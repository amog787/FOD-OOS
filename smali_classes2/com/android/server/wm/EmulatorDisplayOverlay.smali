.class Lcom/android/server/wm/EmulatorDisplayOverlay;
.super Ljava/lang/Object;
.source "EmulatorDisplayOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mRotation:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "zOrder"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    .line 52
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 53
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    .line 54
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "EmulatorDisplayOverlay"

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 60
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object v1, v2

    .line 63
    invoke-virtual {v1, p3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 65
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 66
    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 69
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 70
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 71
    const v2, 0x10802cb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 73
    return-void
.end method

.method private drawIfNeeded()V
    .locals 5

    .line 76
    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v1, "dirty":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 84
    .local v2, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 87
    :goto_0
    goto :goto_1

    .line 86
    :catch_0
    move-exception v3

    goto :goto_1

    .line 85
    :catch_1
    move-exception v3

    goto :goto_0

    .line 88
    :goto_1
    if-nez v2, :cond_1

    .line 89
    return-void

    .line 91
    :cond_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 94
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 95
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v0, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 98
    return-void

    .line 77
    .end local v1    # "dirty":Landroid/graphics/Rect;
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v3    # "size":I
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method positionSurface(III)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "rotation"    # I

    .line 116
    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    if-ne v0, p3, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iput p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    .line 120
    iput p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 122
    iput p3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    .line 123
    invoke-direct {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    .line 124
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    .line 107
    invoke-direct {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    .line 108
    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 113
    :goto_0
    return-void
.end method
