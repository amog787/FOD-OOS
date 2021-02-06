.class Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsetsPolicyAnimationControlCallbacks"
.end annotation


# instance fields
.field private mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

.field private mListener:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

.field final synthetic this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    .line 507
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    .line 508
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mListener:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    .line 509
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;ILandroid/util/SparseArray;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/util/SparseArray;
    .param p3, "x3"    # Z

    .line 502
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->controlAnimationUnchecked(ILandroid/util/SparseArray;Z)V

    return-void
.end method

.method private controlAnimationUnchecked(ILandroid/util/SparseArray;Z)V
    .locals 12
    .param p1, "typesReady"    # I
    .param p3, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z)V"
        }
    .end annotation

    .line 513
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    if-nez p1, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v0, v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v0, p3}, Lcom/android/server/wm/InsetsPolicy;->access$702(Lcom/android/server/wm/InsetsPolicy;Z)Z

    .line 519
    new-instance v0, Landroid/view/InsetsAnimationControlImpl;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, v1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 520
    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->getState()Landroid/view/InsetsState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mListener:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    .line 521
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->getDurationMs()J

    move-result-wide v8

    sget-object v10, Landroid/view/InsetsController;->SYSTEM_BARS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 523
    xor-int/lit8 v11, p3, 0x1

    move-object v1, v0

    move-object v2, p2

    move v6, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v11}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    .line 524
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks$g4iZp8JC81kbnUW8925AyPjUE34;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks$g4iZp8JC81kbnUW8925AyPjUE34;-><init>(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method private getState()Landroid/view/InsetsState;
    .locals 3

    .line 551
    new-instance v0, Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, v1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 557
    .local v0, "overrideState":Landroid/view/InsetsState;
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, v1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v2, v2, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/OpScreenCompatInjector;->isDisplayCompat(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, v1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 559
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v2, v2, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 560
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 561
    .end local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, v1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 565
    :goto_0
    return-object v0
.end method


# virtual methods
.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 572
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 573
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 574
    aget-object v2, p1, v1

    .line 575
    .local v2, "surfaceParams":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v3, v3, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v3}, Lcom/android/server/wm/InsetsPolicy;->access$800(Lcom/android/server/wm/InsetsPolicy;)[F

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 573
    .end local v2    # "surfaceParams":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 577
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 578
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 579
    return-void
.end method

.method public synthetic lambda$controlAnimationUnchecked$0$InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks(I)V
    .locals 2
    .param p1, "typesReady"    # I

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mListener:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    return-void
.end method

.method public notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 0
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 541
    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 585
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 586
    return-void
.end method

.method public reportPerceptible(IZ)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 599
    return-void
.end method

.method public scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 3
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 531
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->getState()Landroid/view/InsetsState;

    move-result-object v0

    .line 532
    .local v0, "state":Landroid/view/InsetsState;
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v1, v0}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v2, v2, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$700(Lcom/android/server/wm/InsetsPolicy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsAnimationControlImpl;->finish(Z)V

    .line 535
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/InsetsAnimationControlImpl;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 0
    .param p1, "controller"    # Landroid/view/InsetsAnimationControlImpl;
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 593
    return-void
.end method
