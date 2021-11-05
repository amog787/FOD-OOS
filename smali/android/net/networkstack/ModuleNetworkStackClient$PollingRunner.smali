.class Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;
.super Ljava/lang/Object;
.source "ModuleNetworkStackClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/networkstack/ModuleNetworkStackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollingRunner"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/networkstack/ModuleNetworkStackClient;


# direct methods
.method private constructor <init>(Landroid/net/networkstack/ModuleNetworkStackClient;)V
    .locals 0

    .line 83
    iput-object p1, p0, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;->this$0:Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/networkstack/ModuleNetworkStackClient;Landroid/net/networkstack/ModuleNetworkStackClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/networkstack/ModuleNetworkStackClient;
    .param p2, "x1"    # Landroid/net/networkstack/ModuleNetworkStackClient$1;

    .line 81
    invoke-direct {p0, p1}, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;-><init>(Landroid/net/networkstack/ModuleNetworkStackClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    :goto_0
    invoke-static {}, Landroid/net/NetworkStack;->getService()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, v0

    .local v1, "nss":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 91
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/net/networkstack/ModuleNetworkStackClient;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interrupted while waiting for NetworkStack connector"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;->this$0:Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-static {v1}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/networkstack/ModuleNetworkStackClient;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 99
    return-void
.end method
