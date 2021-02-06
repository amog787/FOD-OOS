.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkStatsService$InNd0bxX6ObmdmLP-_WGePLtUfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkStats;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkStats;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$InNd0bxX6ObmdmLP-_WGePLtUfE;->f$0:Landroid/net/NetworkStats;

    iput p2, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$InNd0bxX6ObmdmLP-_WGePLtUfE;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$InNd0bxX6ObmdmLP-_WGePLtUfE;->f$0:Landroid/net/NetworkStats;

    iget v1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$InNd0bxX6ObmdmLP-_WGePLtUfE;->f$1:I

    check-cast p1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkStatsService;->lambda$getNetworkStatsFromProviders$3(Landroid/net/NetworkStats;ILcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V

    return-void
.end method
