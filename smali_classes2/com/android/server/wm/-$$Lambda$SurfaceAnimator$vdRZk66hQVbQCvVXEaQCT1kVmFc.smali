.class public final synthetic Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$vdRZk66hQVbQCvVXEaQCT1kVmFc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SurfaceAnimator;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimator;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$vdRZk66hQVbQCvVXEaQCT1kVmFc;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$vdRZk66hQVbQCvVXEaQCT1kVmFc;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$vdRZk66hQVbQCvVXEaQCT1kVmFc;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$vdRZk66hQVbQCvVXEaQCT1kVmFc;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator;->lambda$getFinishedCallback$1$SurfaceAnimator(Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
