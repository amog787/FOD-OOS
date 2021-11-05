.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$nhAzHg7QTBpf8pouN-v8m2BZNzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$nhAzHg7QTBpf8pouN-v8m2BZNzI;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$nhAzHg7QTBpf8pouN-v8m2BZNzI;->f$0:J

    check-cast p1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-static {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController;->lambda$invalidateAllExecutionStatsLocked$0(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    return-void
.end method
