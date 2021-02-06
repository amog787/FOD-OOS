.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$wET8a4xmjbGGr2q4TaT3zvgVlHY;
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

    iput p1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$wET8a4xmjbGGr2q4TaT3zvgVlHY;->f$0:I

    iput-object p2, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$wET8a4xmjbGGr2q4TaT3zvgVlHY;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$wET8a4xmjbGGr2q4TaT3zvgVlHY;->f$0:I

    iget-object v1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$wET8a4xmjbGGr2q4TaT3zvgVlHY;->f$1:Ljava/util/List;

    check-cast p2, [J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuClusterTimeLocked$13(ILjava/util/List;I[J)V

    return-void
.end method
