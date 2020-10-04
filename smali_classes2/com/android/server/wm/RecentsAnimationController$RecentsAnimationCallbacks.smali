.class public interface abstract Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentsAnimationCallbacks"
.end annotation


# virtual methods
.method public abstract onAnimationFinished(IZZ)V
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
.end method
