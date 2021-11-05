.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStore$LPW97BoNSL4rh_RVPiAHfCbmGHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStore$LPW97BoNSL4rh_RVPiAHfCbmGHU;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStore$LPW97BoNSL4rh_RVPiAHfCbmGHU;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p1}, Landroid/net/IpMemoryStore;->lambda$runWhenServiceReady$1(Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
