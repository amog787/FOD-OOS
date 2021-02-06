.class Lcom/android/server/wm/WindowContainerThumbnail;
.super Ljava/lang/Object;
.source "WindowContainerThumbnail.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mHeight:I

.field private final mRelative:Z

.field private final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mWidth:I

.field private final mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/graphics/GraphicBuffer;ZLandroid/view/Surface;Lcom/android/server/wm/SurfaceAnimator;)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p4, "relative"    # Z
    .param p5, "drawSurface"    # Landroid/view/Surface;
    .param p6, "animator"    # Lcom/android/server/wm/SurfaceAnimator;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 83
    iput-boolean p4, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mRelative:Z

    .line 84
    if-eqz p6, :cond_0

    .line 85
    iput-object p6, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowContainerThumbnail$TAAowaUKTiUY1j0FFlQQfUHXn0U;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$WindowContainerThumbnail$TAAowaUKTiUY1j0FFlQQfUHXn0U;-><init>(Lcom/android/server/wm/WindowContainerThumbnail;)V

    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 93
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    .line 94
    invoke-virtual {p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbnail anim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, -0x3

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 104
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 105
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 106
    const-string v1, "WindowContainerThumbnail"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 109
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x1faa1efa

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    invoke-static {v1, v3, v5, v4, v2}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p5, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 113
    invoke-virtual {p5, p3}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 114
    invoke-virtual {p5}, Landroid/view/Surface;->release()V

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 120
    if-eqz p4, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 123
    :cond_2
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/graphics/GraphicBuffer;)V
    .locals 6
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/GraphicBuffer;",
            ")V"
        }
    .end annotation

    .line 64
    .local p1, "surfaceFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/Surface;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/graphics/GraphicBuffer;Z)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/graphics/GraphicBuffer;Z)V
    .locals 8
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p5, "relative"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/GraphicBuffer;",
            "Z)V"
        }
    .end annotation

    .line 76
    .local p1, "surfaceFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/Surface;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/Surface;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/graphics/GraphicBuffer;ZLandroid/view/Surface;Lcom/android/server/wm/SurfaceAnimator;)V

    .line 77
    return-void
.end method

.method public static synthetic lambda$TAAowaUKTiUY1j0FFlQQfUHXn0U(Lcom/android/server/wm/WindowContainerThumbnail;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowContainerThumbnail;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method private onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 148
    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    .line 192
    return-void
.end method

.method destroy()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainerThumbnail;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 163
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 175
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 176
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 177
    iget v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 181
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 182
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 196
    const v0, 0x7fffffff

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 197
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mRelative:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 200
    :cond_0
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 208
    return-void
.end method

.method setShowing(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 1
    .param p1, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "show"    # Z

    .line 152
    if-eqz p2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 157
    :goto_0
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainerThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 127
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Landroid/view/animation/Animation;
    .param p3, "position"    # Landroid/graphics/Point;

    .line 130
    const-wide/16 v0, 0x2710

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 134
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 135
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v4

    invoke-direct {v2, p2, p3, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object v3, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 132
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 138
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 145
    return-void
.end method
