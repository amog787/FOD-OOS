.class public Landroid/net/NetworkMonitorManager;
.super Ljava/lang/Object;
.source "NetworkMonitorManager.java"


# instance fields
.field private final mNetworkMonitor:Landroid/net/INetworkMonitor;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/INetworkMonitor;)V
    .locals 1
    .param p1, "networkMonitorManager"    # Landroid/net/INetworkMonitor;

    .line 48
    const-class v0, Landroid/net/NetworkMonitorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkMonitorManager;-><init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "networkMonitorManager"    # Landroid/net/INetworkMonitor;
    .param p2, "tag"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    .line 44
    iput-object p2, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 52
    iget-object v0, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return-void
.end method


# virtual methods
.method public forceReevaluation(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->forceReevaluation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v2, 0x1

    .line 118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    return v2

    .line 118
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in forceReevaluation"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const/4 v3, 0x0

    .line 118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    return v3

    .line 118
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public launchCaptivePortalApp()Z
    .locals 4

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 73
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->launchCaptivePortalApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const/4 v2, 0x1

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    return v2

    .line 79
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in launchCaptivePortalApp"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    const/4 v3, 0x0

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return v3

    .line 79
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyCaptivePortalAppFinished(I)Z
    .locals 4
    .param p1, "response"    # I

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 86
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyCaptivePortalAppFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v2, 0x1

    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    return v2

    .line 92
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyCaptivePortalAppFinished"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v3, 0x0

    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    return v3

    .line 92
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyDnsResponse(I)Z
    .locals 4
    .param p1, "returnCode"    # I

    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 138
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyDnsResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    const/4 v2, 0x1

    .line 144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    return v2

    .line 144
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyDnsResponse"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    const/4 v3, 0x0

    .line 144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    return v3

    .line 144
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)Z
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 177
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    const/4 v2, 0x1

    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    return v2

    .line 183
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyLinkPropertiesChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    const/4 v3, 0x0

    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    return v3

    .line 183
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 190
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v2, 0x1

    .line 196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    return v2

    .line 196
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyNetworkCapabilitiesChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    const/4 v3, 0x0

    .line 196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    return v3

    .line 196
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 151
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkMonitor;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const/4 v2, 0x1

    .line 157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    return v2

    .line 157
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyNetworkConnected"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const/4 v3, 0x0

    .line 157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    return v3

    .line 157
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyNetworkDisconnected()Z
    .locals 4

    .line 162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 164
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->notifyNetworkDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    const/4 v2, 0x1

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    return v2

    .line 170
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyNetworkDisconnected"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    const/4 v3, 0x0

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    return v3

    .line 170
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/PrivateDnsConfigParcel;

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    const/4 v2, 0x1

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    return v2

    .line 131
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyPrivateDnsChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    const/4 v3, 0x0

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    return v3

    .line 131
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAcceptPartialConnectivity()Z
    .locals 4

    .line 97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 99
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->setAcceptPartialConnectivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v2, 0x1

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    return v2

    .line 105
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in setAcceptPartialConnectivity"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const/4 v3, 0x0

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    return v3

    .line 105
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public start()Z
    .locals 4

    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 60
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const/4 v2, 0x1

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    return v2

    .line 66
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in start"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    const/4 v3, 0x0

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    return v3

    .line 66
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
