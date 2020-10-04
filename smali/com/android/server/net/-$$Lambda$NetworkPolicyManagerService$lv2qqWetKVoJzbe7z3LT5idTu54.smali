.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$updateNetworks$1(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
