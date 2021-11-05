.class public final synthetic Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$zbLki1x5Fhwh-g7q-dA43aw6Y4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LocalAnimationAdapter;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$zbLki1x5Fhwh-g7q-dA43aw6Y4M;->f$0:Lcom/android/server/wm/LocalAnimationAdapter;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$zbLki1x5Fhwh-g7q-dA43aw6Y4M;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$zbLki1x5Fhwh-g7q-dA43aw6Y4M;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$zbLki1x5Fhwh-g7q-dA43aw6Y4M;->f$0:Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$zbLki1x5Fhwh-g7q-dA43aw6Y4M;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$zbLki1x5Fhwh-g7q-dA43aw6Y4M;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/LocalAnimationAdapter;->lambda$startAnimation$0$LocalAnimationAdapter(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    return-void
.end method
