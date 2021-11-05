.class public final synthetic Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$Y4hCTFZUnyoMqrbq2rxOWj68ccg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimator;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$Y4hCTFZUnyoMqrbq2rxOWj68ccg;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$Y4hCTFZUnyoMqrbq2rxOWj68ccg;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$Y4hCTFZUnyoMqrbq2rxOWj68ccg;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$Y4hCTFZUnyoMqrbq2rxOWj68ccg;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->lambda$getFinishedCallback$1$SurfaceAnimator(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
