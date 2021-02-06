.class public final synthetic Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/TestNetworkService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TestNetworkService;ZLjava/lang/String;[Landroid/net/LinkAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;->f$0:Lcom/android/server/TestNetworkService;

    iput-boolean p2, p0, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;->f$1:Z

    iput-object p3, p0, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;->f$3:[Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;->f$0:Lcom/android/server/TestNetworkService;

    iget-boolean v1, p0, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;->f$1:Z

    iget-object v2, p0, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;->f$3:[Landroid/net/LinkAddress;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/TestNetworkService;->lambda$createInterface$0$TestNetworkService(ZLjava/lang/String;[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object v0

    return-object v0
.end method
