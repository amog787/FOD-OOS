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

    .line 50
    const-class v0, Landroid/net/NetworkMonitorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkMonitorManager;-><init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "networkMonitorManager"    # Landroid/net/INetworkMonitor;
    .param p2, "tag"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    .line 46
    iput-object p2, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 54
    iget-object v0, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    return-void
.end method


# virtual methods
.method public forceReevaluation(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 114
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->forceReevaluation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const/4 v2, 0x1

    .line 120
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    return v2

    .line 120
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in forceReevaluation"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 v3, 0x0

    .line 120
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    return v3

    .line 120
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    throw v2
.end method

.method public launchCaptivePortalApp()Z
    .locals 4

    .line 73
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 75
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->launchCaptivePortalApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v2, 0x1

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    return v2

    .line 81
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in launchCaptivePortalApp"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    const/4 v3, 0x0

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    return v3

    .line 81
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw v2
.end method

.method public notifyCaptivePortalAppFinished(I)Z
    .locals 4
    .param p1, "response"    # I

    .line 86
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 88
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyCaptivePortalAppFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/4 v2, 0x1

    .line 94
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    return v2

    .line 94
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyCaptivePortalAppFinished"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    const/4 v3, 0x0

    .line 94
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    return v3

    .line 94
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    throw v2
.end method

.method public notifyDnsResponse(I)Z
    .locals 4
    .param p1, "returnCode"    # I

    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 140
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyDnsResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    const/4 v2, 0x1

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    return v2

    .line 146
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyDnsResponse"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    const/4 v3, 0x0

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    return v3

    .line 146
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw v2
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)Z
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 179
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/4 v2, 0x1

    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    return v2

    .line 185
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyLinkPropertiesChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    const/4 v3, 0x0

    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    return v3

    .line 185
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw v2
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 192
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    const/4 v2, 0x1

    .line 198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    return v2

    .line 198
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyNetworkCapabilitiesChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const/4 v3, 0x0

    .line 198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    return v3

    .line 198
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw v2
.end method

.method public notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 153
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkMonitor;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const/4 v2, 0x1

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    return v2

    .line 159
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyNetworkConnected"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    const/4 v3, 0x0

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    return v3

    .line 159
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw v2
.end method

.method public notifyNetworkDisconnected()Z
    .locals 4

    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 166
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->notifyNetworkDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 v2, 0x1

    .line 172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    return v2

    .line 172
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyNetworkDisconnected"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    const/4 v3, 0x0

    .line 172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    return v3

    .line 172
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    throw v2
.end method

.method public notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/PrivateDnsConfigParcel;

    .line 125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 127
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 v2, 0x1

    .line 133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    return v2

    .line 133
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in notifyPrivateDnsChanged"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    const/4 v3, 0x0

    .line 133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    return v3

    .line 133
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    throw v2
.end method

.method public setAcceptPartialConnectivity()Z
    .locals 4

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 101
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->setAcceptPartialConnectivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const/4 v2, 0x1

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    return v2

    .line 107
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in setAcceptPartialConnectivity"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    const/4 v3, 0x0

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    return v3

    .line 107
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    throw v2
.end method

.method public start()Z
    .locals 4

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 62
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const/4 v2, 0x1

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    return v2

    .line 68
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error in start"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    const/4 v3, 0x0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    return v3

    .line 68
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    throw v2
.end method
