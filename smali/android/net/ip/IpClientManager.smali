.class public Landroid/net/ip/IpClientManager;
.super Ljava/lang/Object;
.source "IpClientManager.java"


# instance fields
.field private final mIpClient:Landroid/net/ip/IIpClient;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/ip/IIpClient;)V
    .locals 1
    .param p1, "ipClient"    # Landroid/net/ip/IIpClient;

    .line 54
    const-class v0, Landroid/net/ip/IpClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpClientManager;-><init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "ipClient"    # Landroid/net/ip/IIpClient;
    .param p2, "tag"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 50
    iput-object p2, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 58
    iget-object v0, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    return-void
.end method

.method private startProvisioning(Landroid/net/shared/ProvisioningConfiguration;Z)Z
    .locals 4
    .param p1, "prov"    # Landroid/net/shared/ProvisioningConfiguration;
    .param p2, "roaming"    # Z

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "ROAMING"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 140
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p1}, Landroid/net/shared/ProvisioningConfiguration;->toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
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

    goto :goto_1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error starting IpClient provisioning"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
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
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw v2
.end method


# virtual methods
.method public addKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketData;)Z
    .locals 4
    .param p1, "slot"    # I
    .param p2, "pkt"    # Landroid/net/NattKeepalivePacketData;

    .line 251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 253
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 254
    invoke-static {p2}, Landroid/net/util/KeepalivePacketDataUtil;->toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;

    move-result-object v3

    .line 253
    invoke-interface {v2, p1, v3}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    const/4 v2, 0x1

    .line 260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    return v2

    .line 260
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    .line 257
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error adding NAT-T Keepalive Packet Filter "

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    const/4 v3, 0x0

    .line 260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    return v3

    .line 260
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw v2
.end method

.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketData;)Z
    .locals 4
    .param p1, "slot"    # I
    .param p2, "pkt"    # Landroid/net/TcpKeepalivePacketData;

    .line 235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 237
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p2}, Landroid/net/TcpKeepalivePacketData;->toStableParcelable()Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const/4 v2, 0x1

    .line 243
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return v2

    .line 243
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error adding Keepalive Packet Filter "

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    const/4 v3, 0x0

    .line 243
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    return v3

    .line 243
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw v2
.end method

.method public completedPreDhcpAction()Z
    .locals 4

    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 69
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const/4 v2, 0x1

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return v2

    .line 75
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error completing PreDhcpAction"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    const/4 v3, 0x0

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    return v3

    .line 75
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw v2
.end method

.method public confirmConfiguration()Z
    .locals 4

    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 85
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->confirmConfiguration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v2, 0x1

    return v2

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error confirming IpClient configuration"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    const/4 v3, 0x0

    return v3
.end method

.method public notifyPreconnectionComplete(Z)Z
    .locals 4
    .param p1, "success"    # Z

    .line 302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 304
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->notifyPreconnectionComplete(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    const/4 v2, 0x1

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    return v2

    .line 310
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error notifying IpClient Preconnection completed"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    const/4 v3, 0x0

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    return v3

    .line 310
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    throw v2
.end method

.method public readPacketFilterComplete([B)Z
    .locals 4
    .param p1, "data"    # [B

    .line 97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 99
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V
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
    const-string v3, "Error notifying IpClient of packet filter read"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
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

    .line 106
    throw v2
.end method

.method public refreshProvisioning()Z
    .locals 2

    .line 153
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/shared/ProvisioningConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/shared/ProvisioningConfiguration$Builder;->build()Landroid/net/shared/ProvisioningConfiguration;

    move-result-object v0

    .line 154
    .local v0, "prov":Landroid/net/shared/ProvisioningConfiguration;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpClientManager;->startProvisioning(Landroid/net/shared/ProvisioningConfiguration;Z)Z

    move-result v1

    return v1
.end method

.method public removeKeepalivePacketFilter(I)Z
    .locals 4
    .param p1, "slot"    # I

    .line 268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 270
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    const/4 v2, 0x1

    .line 276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    return v2

    .line 276
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error removing Keepalive Packet Filter "

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    const/4 v3, 0x0

    .line 276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    return v3

    .line 276
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    throw v2
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)Z
    .locals 4
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 204
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const/4 v2, 0x1

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return v2

    .line 210
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error setting IpClient proxy"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    const/4 v3, 0x0

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    return v3

    .line 210
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw v2
.end method

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "groupHint"    # Ljava/lang/String;

    .line 284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 286
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    const/4 v2, 0x1

    .line 292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    return v2

    .line 292
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Failed setL2KeyAndGroupHint"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    const/4 v3, 0x0

    .line 292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    return v3

    .line 292
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    throw v2
.end method

.method public setMulticastFilter(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 221
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    const/4 v2, 0x1

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    return v2

    .line 227
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error setting multicast filter"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    const/4 v3, 0x0

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    return v3

    .line 227
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    throw v2
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 185
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/4 v2, 0x1

    .line 191
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    return v2

    .line 191
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error setting IpClient TCP buffer sizes"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    const/4 v3, 0x0

    .line 191
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    return v3

    .line 191
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    throw v2
.end method

.method public shutdown()Z
    .locals 4

    .line 113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 115
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const/4 v2, 0x1

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    return v2

    .line 121
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error shutting down IpClient"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    const/4 v3, 0x0

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    return v3

    .line 121
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw v2
.end method

.method public startProvisioning(Landroid/net/shared/ProvisioningConfiguration;)Z
    .locals 1
    .param p1, "prov"    # Landroid/net/shared/ProvisioningConfiguration;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpClientManager;->startProvisioning(Landroid/net/shared/ProvisioningConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 4

    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 166
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->stop()V
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
    const-string v3, "Error stopping IpClient"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
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

.method public updateLayer2Information(Landroid/net/shared/Layer2Information;)Z
    .locals 4
    .param p1, "info"    # Landroid/net/shared/Layer2Information;

    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 320
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p1}, Landroid/net/shared/Layer2Information;->toStableParcelable()Landroid/net/Layer2InformationParcelable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/ip/IIpClient;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    const/4 v2, 0x1

    .line 326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    return v2

    .line 326
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error updating layer2 information"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    const/4 v3, 0x0

    .line 326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    return v3

    .line 326
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    throw v2
.end method
