.class public final synthetic Lcom/android/server/-$$Lambda$TestNetworkService$1hp-BCN-pFkUplS_GtzJEkxX10Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/TestNetworkService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TestNetworkService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$TestNetworkService$1hp-BCN-pFkUplS_GtzJEkxX10Y;->f$0:Lcom/android/server/TestNetworkService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$TestNetworkService$1hp-BCN-pFkUplS_GtzJEkxX10Y;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$TestNetworkService$1hp-BCN-pFkUplS_GtzJEkxX10Y;->f$0:Lcom/android/server/TestNetworkService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$TestNetworkService$1hp-BCN-pFkUplS_GtzJEkxX10Y;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/TestNetworkService;->lambda$setupTestNetwork$1$TestNetworkService(Ljava/lang/String;)V

    return-void
.end method
