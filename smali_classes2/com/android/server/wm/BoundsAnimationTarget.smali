.class interface abstract Lcom/android/server/wm/BoundsAnimationTarget;
.super Ljava/lang/Object;
.source "BoundsAnimationTarget.java"


# virtual methods
.method public isAttached()Z
    .locals 1

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onAnimationEnd(ZLandroid/graphics/Rect;Z)V
.end method

.method public abstract onAnimationStart(ZZI)Z
    .param p3    # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param
.end method

.method public abstract setPinnedStackAlpha(F)Z
.end method

.method public abstract setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract shouldDeferStartOnMoveToFullscreen()Z
.end method
