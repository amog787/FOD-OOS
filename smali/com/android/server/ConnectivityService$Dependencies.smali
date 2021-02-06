.class public Lcom/android/server/ConnectivityService$Dependencies;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    .line 1038
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    return-object v0
.end method

.method public getIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;
    .locals 1

    .line 1033
    nop

    .line 1034
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1033
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;
    .locals 2

    .line 1025
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    const-string/jumbo v1, "no IpConnectivityMetrics service"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    return-object v0
.end method

.method public getNetworkStack()Landroid/net/NetworkStackClient;
    .locals 1

    .line 981
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;
    .locals 1

    .line 967
    new-instance v0, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    return-object v0
.end method

.method public hasService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1018
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .line 974
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConnectivityServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public makeMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "r"    # Ljava/lang/Runnable;

    .line 1011
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public makeNetIdManager()Lcom/android/server/NetIdManager;
    .locals 1

    .line 996
    new-instance v0, Lcom/android/server/NetIdManager;

    invoke-direct {v0}, Lcom/android/server/NetIdManager;-><init>()V

    return-object v0
.end method

.method public makeProxyTracker(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/connectivity/ProxyTracker;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connServiceHandler"    # Landroid/os/Handler;

    .line 989
    new-instance v0, Lcom/android/server/connectivity/ProxyTracker;

    const/16 v1, 0x10

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/connectivity/ProxyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    return-object v0
.end method

.method public queryUserAccess(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "netId"    # I

    .line 1003
    invoke-static {p1, p2}, Landroid/net/NetworkUtils;->queryUserAccess(II)Z

    move-result v0

    return v0
.end method
