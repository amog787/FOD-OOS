.class Lcom/android/server/wm/SurfaceFreezer$Snapshot;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceFreezer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Snapshot"
.end annotation


# instance fields
.field private mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field private mFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/SurfaceFreezer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceFreezer;Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/GraphicBuffer;Landroid/view/SurfaceControl;)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/wm/SurfaceFreezer;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p5, "parent"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/graphics/GraphicBuffer;",
            "Landroid/view/SurfaceControl;",
            ")V"
        }
    .end annotation

    .line 153
    .local p2, "surfaceFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/Surface;>;"
    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->this$0:Lcom/android/server/wm/SurfaceFreezer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 157
    .local v0, "drawSurface":Landroid/view/Surface;
    invoke-virtual {p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    .line 158
    .local v1, "width":I
    invoke-virtual {p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    .line 160
    .local v2, "height":I
    invoke-static {p1}, Lcom/android/server/wm/SurfaceFreezer;->access$000(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snapshot anim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {p1}, Lcom/android/server/wm/SurfaceFreezer;->access$000(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 162
    invoke-virtual {v3, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 163
    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 164
    invoke-virtual {v3, p5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 165
    const-string v4, "SurfaceFreezer.Snapshot"

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 168
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x27df7779

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 172
    invoke-virtual {v0, p4}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 173
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 174
    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 178
    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v4, 0x7fffffff

    invoke-virtual {p3, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 179
    return-void
.end method


# virtual methods
.method cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "restarting"    # Z

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 219
    .local v0, "leash":Landroid/view/SurfaceControl;
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 220
    .local v1, "animation":Lcom/android/server/wm/AnimationAdapter;
    iget-object v2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 222
    .local v2, "animationFinishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 223
    iput-object v3, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 224
    if-eqz v1, :cond_0

    .line 225
    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 226
    if-nez p2, :cond_0

    .line 227
    if-eqz v2, :cond_0

    .line 228
    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 233
    :cond_0
    if-nez p2, :cond_1

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->destroy(Landroid/view/SurfaceControl$Transaction;)V

    .line 236
    :cond_1
    return-void
.end method

.method destroy(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 187
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "type"    # I
    .param p4, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 202
    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 203
    iput-object p4, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 206
    return-void

    .line 208
    :cond_0
    invoke-interface {p2, v0, p1, p3, p4}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 209
    return-void
.end method
