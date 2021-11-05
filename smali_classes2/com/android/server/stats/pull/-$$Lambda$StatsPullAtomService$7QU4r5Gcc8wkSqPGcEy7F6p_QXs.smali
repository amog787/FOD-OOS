.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$7QU4r5Gcc8wkSqPGcEy7F6p_QXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$7QU4r5Gcc8wkSqPGcEy7F6p_QXs;->f$0:I

    iput-object p2, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$7QU4r5Gcc8wkSqPGcEy7F6p_QXs;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$7QU4r5Gcc8wkSqPGcEy7F6p_QXs;->f$0:I

    iget-object v1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$7QU4r5Gcc8wkSqPGcEy7F6p_QXs;->f$1:Ljava/util/List;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuActiveTimeLocked$12(ILjava/util/List;ILjava/lang/Long;)V

    return-void
.end method
