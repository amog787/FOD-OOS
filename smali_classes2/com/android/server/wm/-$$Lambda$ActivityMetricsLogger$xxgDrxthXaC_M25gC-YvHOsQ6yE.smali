.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field private final synthetic f$1:Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;->f$1:Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;->f$1:Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionReportedDrawn$2$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method
