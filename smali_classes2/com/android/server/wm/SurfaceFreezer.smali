.class Lcom/android/server/wm/SurfaceFreezer;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceFreezer$Freezable;,
        Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    }
.end annotation


# instance fields
.field private final mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

.field final mFreezeBounds:Landroid/graphics/Rect;

.field private mLeash:Landroid/view/SurfaceControl;

.field mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceFreezer$Freezable;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    .line 64
    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceFreezer;

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    return-object v0
.end method

.method private static createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .locals 6
    .param p0, "target"    # Landroid/view/SurfaceControl;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "cropBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 132
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 133
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    .line 135
    .local v1, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    goto :goto_0

    .line 136
    :cond_1
    move-object v4, v3

    :goto_0
    nop

    .line 137
    .local v4, "buffer":Landroid/graphics/GraphicBuffer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    if-le v5, v2, :cond_3

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    if-gt v5, v2, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    return-object v4

    .line 138
    :cond_3
    :goto_1
    return-object v3
.end method


# virtual methods
.method freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "startBounds"    # Landroid/graphics/Rect;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 76
    const/4 v4, 0x2

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 80
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v1, p1, v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 83
    .local v0, "freezeTarget":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0, p2}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;

    move-result-object v7

    .line 85
    .local v7, "snapshot":Landroid/graphics/GraphicBuffer;
    if-eqz v7, :cond_0

    .line 86
    new-instance v8, Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    iget-object v6, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;-><init>(Lcom/android/server/wm/SurfaceFreezer;Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/GraphicBuffer;Landroid/view/SurfaceControl;)V

    iput-object v8, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 89
    .end local v7    # "snapshot":Landroid/graphics/GraphicBuffer;
    :cond_0
    return-void
.end method

.method hasLeash()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method takeLeashForAnimation()Landroid/view/SurfaceControl;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 97
    .local v0, "out":Landroid/view/SurfaceControl;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 98
    return-object v0
.end method

.method unfreeze(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 110
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 113
    .local v0, "leash":Landroid/view/SurfaceControl;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 114
    iget-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    move-result v1

    .line 116
    .local v1, "scheduleAnim":Z
    if-eqz v1, :cond_2

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 119
    :cond_2
    return-void
.end method
