.class public final synthetic Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:J

.field private final synthetic f$2:J

.field private final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(IJJLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;->f$0:I

    iput-wide p2, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;->f$1:J

    iput-wide p4, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;->f$2:J

    iput-object p6, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;->f$0:I

    iget-wide v1, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;->f$1:J

    iget-wide v3, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;->f$2:J

    iget-object v5, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;->f$3:Ljava/util/List;

    move-object v7, p2

    check-cast v7, [J

    move v6, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/stats/StatsCompanionService;->lambda$pullKernelUidCpuFreqTime$2(IJJLjava/util/List;I[J)V

    return-void
.end method
