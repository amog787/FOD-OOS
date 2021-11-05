.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceAdded$2(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
