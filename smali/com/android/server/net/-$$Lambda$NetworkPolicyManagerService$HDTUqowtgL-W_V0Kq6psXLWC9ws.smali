.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p2, p0, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p0, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$networkScoreAndNetworkManagementServiceReady$0$NetworkPolicyManagerService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
