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

    .line 51
    const-class v0, Landroid/net/ip/IpClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpClientManager;-><init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "ipClient"    # Landroid/net/ip/IIpClient;
    .param p2, "tag"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 47
    iput-object p2, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 55
    iget-object v0, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    return-void
.end method

.method private startProvisioning(Landroid/net/shared/ProvisioningConfiguration;Z)Z
    .locals 4
    .param p1, "prov"    # Landroid/net/shared/ProvisioningConfiguration;
    .param p2, "roaming"    # Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 133
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

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 137
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p1}, Landroid/net/shared/ProvisioningConfiguration;->toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    const/4 v2, 0x1

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    return v2

    .line 143
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error starting IpClient provisioning"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    const/4 v3, 0x0

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    return v3

    .line 143
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public addKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketData;)Z
    .locals 4
    .param p1, "slot"    # I
    .param p2, "pkt"    # Landroid/net/NattKeepalivePacketData;

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 250
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 251
    invoke-static {p2}, Landroid/net/util/KeepalivePacketDataUtil;->toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;

    move-result-object v3

    .line 250
    invoke-interface {v2, p1, v3}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v2, 0x1

    .line 257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    return v2

    .line 257
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error adding Keepalive Packet Filter "

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    const/4 v3, 0x0

    .line 257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    return v3

    .line 257
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketData;)Z
    .locals 4
    .param p1, "slot"    # I
    .param p2, "pkt"    # Landroid/net/TcpKeepalivePacketData;

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p2}, Landroid/net/TcpKeepalivePacketData;->toStableParcelable()Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const/4 v2, 0x1

    .line 240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    return v2

    .line 240
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error adding Keepalive Packet Filter "

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    const/4 v3, 0x0

    .line 240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return v3

    .line 240
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public completedPreDhcpAction()Z
    .locals 4

    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 66
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v2, 0x1

    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    return v2

    .line 72
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error completing PreDhcpAction"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 v3, 0x0

    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return v3

    .line 72
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public confirmConfiguration()Z
    .locals 4

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 82
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->confirmConfiguration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/4 v2, 0x1

    return v2

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error confirming IpClient configuration"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    const/4 v3, 0x0

    return v3
.end method

.method public readPacketFilterComplete([B)Z
    .locals 4
    .param p1, "data"    # [B

    .line 94
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 96
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/4 v2, 0x1

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    return v2

    .line 102
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error notifying IpClient of packet filter read"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    const/4 v3, 0x0

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    return v3

    .line 102
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public refreshProvisioning()Z
    .locals 2

    .line 150
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/shared/ProvisioningConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/shared/ProvisioningConfiguration$Builder;->build()Landroid/net/shared/ProvisioningConfiguration;

    move-result-object v0

    .line 151
    .local v0, "prov":Landroid/net/shared/ProvisioningConfiguration;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpClientManager;->startProvisioning(Landroid/net/shared/ProvisioningConfiguration;Z)Z

    move-result v1

    return v1
.end method

.method public removeKeepalivePacketFilter(I)Z
    .locals 4
    .param p1, "slot"    # I

    .line 265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 267
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/4 v2, 0x1

    .line 273
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    return v2

    .line 273
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error removing Keepalive Packet Filter "

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    const/4 v3, 0x0

    .line 273
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    return v3

    .line 273
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)Z
    .locals 4
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v2, 0x1

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    return v2

    .line 207
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error setting IpClient proxy"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    const/4 v3, 0x0

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return v3

    .line 207
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "groupHint"    # Ljava/lang/String;

    .line 281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 283
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    const/4 v2, 0x1

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    return v2

    .line 289
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Failed setL2KeyAndGroupHint"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    const/4 v3, 0x0

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    return v3

    .line 289
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setMulticastFilter(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .line 216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 218
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    const/4 v2, 0x1

    .line 224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    return v2

    .line 224
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error setting multicast filter"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/4 v3, 0x0

    .line 224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    return v3

    .line 224
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 182
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v2, 0x1

    .line 188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    return v2

    .line 188
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error setting IpClient TCP buffer sizes"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    const/4 v3, 0x0

    .line 188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    return v3

    .line 188
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shutdown()Z
    .locals 4

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->shutdown()V
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
    const-string v3, "Error shutting down IpClient"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
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

.method public startProvisioning(Landroid/net/shared/ProvisioningConfiguration;)Z
    .locals 1
    .param p1, "prov"    # Landroid/net/shared/ProvisioningConfiguration;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpClientManager;->startProvisioning(Landroid/net/shared/ProvisioningConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 4

    .line 161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 163
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const/4 v2, 0x1

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    return v2

    .line 169
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Error stopping IpClient"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    const/4 v3, 0x0

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    return v3

    .line 169
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
