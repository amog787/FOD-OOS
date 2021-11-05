.class public final synthetic Lcom/android/server/wm/-$$Lambda$dwJG8BAnLlvKNGuDY9U3-haNY4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$dwJG8BAnLlvKNGuDY9U3-haNY4M;->f$0:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$dwJG8BAnLlvKNGuDY9U3-haNY4M;->f$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
