.class public Landroid/net/ip/IIpClient$Default;
.super Ljava/lang/Object;
.source "IIpClient.java"

# interfaces
.implements Landroid/net/ip/IIpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "pkt"    # Landroid/net/TcpKeepalivePacketDataParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "pkt"    # Landroid/net/NattKeepalivePacketDataParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public completedPreDhcpAction()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public confirmConfiguration()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 58
    const/4 v0, -0x1

    return v0
.end method

.method public readPacketFilterComplete([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public removeKeepalivePacketFilter(I)V
    .locals 0
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "groupHint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public setMulticastFilter(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 0
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    .locals 0
    .param p1, "req"    # Landroid/net/ProvisioningConfigurationParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
