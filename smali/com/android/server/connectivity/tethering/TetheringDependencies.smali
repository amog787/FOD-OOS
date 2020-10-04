.class public Lcom/android/server/connectivity/tethering/TetheringDependencies;
.super Ljava/lang/Object;
.source "TetheringDependencies.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDataSubscriptionId()I
    .locals 1

    .line 94
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public getDefaultNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntitlementManager(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)Lcom/android/server/connectivity/tethering/EntitlementManager;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "target"    # Lcom/android/internal/util/StateMachine;
    .param p3, "log"    # Landroid/net/util/SharedLog;
    .param p4, "what"    # I
    .param p5, "systemProperties"    # Lcom/android/server/connectivity/MockableSystemProperties;

    .line 87
    new-instance v6, Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/EntitlementManager;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)V

    return-object v6
.end method

.method public getIPv6TetheringCoordinator(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
    .locals 1
    .param p2, "log"    # Landroid/net/util/SharedLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/ip/IpServer;",
            ">;",
            "Landroid/net/util/SharedLog;",
            ")",
            "Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;"
        }
    .end annotation

    .line 58
    .local p1, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ip/IpServer;>;"
    new-instance v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-direct {v0, p1, p2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;-><init>(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)V

    return-object v0
.end method

.method public getIpServerDependencies()Landroid/net/ip/IpServer$Dependencies;
    .locals 1

    .line 65
    new-instance v0, Landroid/net/ip/IpServer$Dependencies;

    invoke-direct {v0}, Landroid/net/ip/IpServer$Dependencies;-><init>()V

    return-object v0
.end method

.method public getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "log"    # Landroid/net/util/SharedLog;

    .line 42
    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-direct {v0, p1, p2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;-><init>(Landroid/os/Handler;Landroid/net/util/SharedLog;)V

    return-object v0
.end method

.method public getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "target"    # Lcom/android/internal/util/StateMachine;
    .param p3, "log"    # Landroid/net/util/SharedLog;
    .param p4, "what"    # I

    .line 50
    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V

    return-object v0
.end method

.method public isTetheringSupported()Z
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method
