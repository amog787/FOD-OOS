.class Lcom/android/server/wm/AppWindowThumbnail;
.super Ljava/lang/Object;
.source "AppWindowThumbnail.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private final mHeight:I

.field private final mRelative:Z

.field private final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;Z)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;Z)V
    .locals 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p4, "relative"    # Z

    .line 71
    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;ZLandroid/view/Surface;Lcom/android/server/wm/SurfaceAnimator;)V

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;ZLandroid/view/Surface;Lcom/android/server/wm/SurfaceAnimator;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p4, "relative"    # Z
    .param p5, "drawSurface"    # Landroid/view/Surface;
    .param p6, "animator"    # Lcom/android/server/wm/SurfaceAnimator;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 77
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowThumbnail;->mRelative:Z

    .line 78
    if-eqz p6, :cond_0

    .line 79
    iput-object p6, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppWindowThumbnail$hHTeq2FR5SSE1YyVM6K-wuzeLLo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowThumbnail$hHTeq2FR5SSE1YyVM6K-wuzeLLo;-><init>(Lcom/android/server/wm/AppWindowThumbnail;)V

    iget-object v2, p2, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 86
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    .line 87
    invoke-virtual {p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    .line 90
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 95
    .local v0, "window":Lcom/android/server/wm/WindowState;
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumbnail anim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    iget v3, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    .line 97
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, -0x3

    .line 98
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p2, Lcom/android/server/wm/AppWindowToken;->windowType:I

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 101
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 100
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 104
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  THUMBNAIL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p5, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 110
    invoke-virtual {p5, p3}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 111
    invoke-virtual {p5}, Landroid/view/Surface;->release()V

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 117
    if-eqz p4, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 120
    :cond_3
    return-void
.end method

.method public static synthetic lambda$hHTeq2FR5SSE1YyVM6K-wuzeLLo(Lcom/android/server/wm/AppWindowThumbnail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowThumbnail;->onAnimationFinished()V

    return-void
.end method

.method private onAnimationFinished()V
    .locals 0

    .line 144
    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->commitPendingTransaction()V

    .line 187
    return-void
.end method

.method destroy()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowThumbnail;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 159
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 191
    const v0, 0x7fffffff

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 192
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mRelative:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 195
    :cond_0
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 203
    return-void
.end method

.method setShowing(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 1
    .param p1, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "show"    # Z

    .line 148
    if-eqz p2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 153
    :goto_0
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 124
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Landroid/view/animation/Animation;
    .param p3, "position"    # Landroid/graphics/Point;

    .line 127
    const-wide/16 v0, 0x2710

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 131
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 132
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v4

    invoke-direct {v2, p2, p3, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object v3, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 129
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 134
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 141
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 171
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 172
    iget v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 173
    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 176
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 177
    return-void
.end method
