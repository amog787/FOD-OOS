.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$N3j3xQ1hfm1lj2ROiq1dyExvslk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$N3j3xQ1hfm1lj2ROiq1dyExvslk;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$N3j3xQ1hfm1lj2ROiq1dyExvslk;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$N3j3xQ1hfm1lj2ROiq1dyExvslk;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$N3j3xQ1hfm1lj2ROiq1dyExvslk;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->lambda$screenshotRecentTask$4$RecentsAnimationController(IILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
