.class interface abstract Lcom/android/server/wm/SurfaceAnimator$Animatable;
.super Ljava/lang/Object;
.source "SurfaceAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Animatable"
.end annotation


# virtual methods
.method public abstract commitPendingTransaction()V
.end method

.method public abstract getAnimationLeashParent()Landroid/view/SurfaceControl;
.end method

.method public abstract getParentSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract getSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getSurfaceHeight()I
.end method

.method public abstract getSurfaceWidth()I
.end method

.method public abstract makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
.end method

.method public abstract onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 551
    return-void
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 609
    const/4 v0, 0x0

    return v0
.end method
