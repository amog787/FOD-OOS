.class public final synthetic Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$wU1YjYaM1_enRLsRLQ25SnC1ECw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Dimmer$DimState;

.field public final synthetic f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/Dimmer$DimAnimatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$wU1YjYaM1_enRLsRLQ25SnC1ECw;->f$0:Lcom/android/server/wm/Dimmer$DimState;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$wU1YjYaM1_enRLsRLQ25SnC1ECw;->f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$wU1YjYaM1_enRLsRLQ25SnC1ECw;->f$0:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$wU1YjYaM1_enRLsRLQ25SnC1ECw;->f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/Dimmer$DimState;->lambda$new$0$Dimmer$DimState(Lcom/android/server/wm/Dimmer$DimAnimatable;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
