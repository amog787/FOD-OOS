.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

.field public final synthetic f$2:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;->f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;->f$2:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;->f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;->f$2:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionFinished$1$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method
