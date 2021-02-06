.class public Landroid/net/INetd$Default;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public bandwidthAddNaughtyApp(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    return-void
.end method

.method public bandwidthAddNiceApp(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    return-void
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public bandwidthRemoveNaughtyApp(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    return-void
.end method

.method public bandwidthRemoveNiceApp(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public bandwidthSetGlobalAlert(J)V
    .locals 0
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    return-void
.end method

.method public clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "nat64Prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public clatdStop(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method public firewallEnableChildChain(IZ)V
    .locals 0
    .param p1, "childChain"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    return-void
.end method

.method public firewallRemoveUidInterfaceRules([I)V
    .locals 0
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    return-void
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .locals 1
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "isWhitelist"    # Z
    .param p3, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public firewallSetFirewallType(I)V
    .locals 0
    .param p1, "firewalltype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    return-void
.end method

.method public firewallSetInterfaceRule(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public firewallSetUidRule(III)V
    .locals 0
    .param p1, "childChain"    # I
    .param p2, "uid"    # I
    .param p3, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    return-void
.end method

.method public getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;
    .locals 1
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 358
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public getOemNetd()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public interfaceClearAddrs(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    return-void
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public interfaceGetList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    .locals 0
    .param p1, "cfg"    # Landroid/net/InterfaceConfigurationParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    return-void
.end method

.method public interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    return-void
.end method

.method public interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    return-void
.end method

.method public interfaceSetMtu(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    return-void
.end method

.method public ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    .locals 0
    .param p1, "transformId"    # I
    .param p2, "mode"    # I
    .param p3, "sourceAddress"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "underlyingNetId"    # I
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "authAlgo"    # Ljava/lang/String;
    .param p10, "authKey"    # [B
    .param p11, "authTruncBits"    # I
    .param p12, "cryptAlgo"    # Ljava/lang/String;
    .param p13, "cryptKey"    # [B
    .param p14, "cryptTruncBits"    # I
    .param p15, "aeadAlgo"    # Ljava/lang/String;
    .param p16, "aeadKey"    # [B
    .param p17, "aeadIcvBits"    # I
    .param p18, "encapType"    # I
    .param p19, "encapLocalPort"    # I
    .param p20, "encapRemotePort"    # I
    .param p21, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "tmplSrcAddress"    # Ljava/lang/String;
    .param p5, "tmplDstAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "remoteAddress"    # Ljava/lang/String;
    .param p4, "iKey"    # I
    .param p5, "oKey"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "transformId"    # I
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "transformId"    # I
    .param p3, "direction"    # I
    .param p4, "sourceAddress"    # Ljava/lang/String;
    .param p5, "destinationAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "transformId"    # I
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "spi"    # I
    .param p5, "markValue"    # I
    .param p6, "markMask"    # I
    .param p7, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public ipSecDeleteSecurityPolicy(IIIIII)V
    .locals 0
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "markValue"    # I
    .param p5, "markMask"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "newUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "tmplSrcAddress"    # Ljava/lang/String;
    .param p5, "tmplDstAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "remoteAddress"    # Ljava/lang/String;
    .param p4, "iKey"    # I
    .param p5, "oKey"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public ipfwdDisableForwarding(Ljava/lang/String;)V
    .locals 0
    .param p1, "requester"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method public ipfwdEnableForwarding(Ljava/lang/String;)V
    .locals 0
    .param p1, "requester"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public ipfwdEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public ipfwdGetRequesterList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public isAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public networkAddInterface(ILjava/lang/String;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    return-void
.end method

.method public networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    return-void
.end method

.method public networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    return-void
.end method

.method public networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public networkCanProtect(I)Z
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public networkClearDefault()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public networkClearPermissionForUser([I)V
    .locals 0
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    return-void
.end method

.method public networkCreatePhysical(II)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public networkCreateVpn(IZ)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public networkDestroy(I)V
    .locals 0
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public networkGetDefault()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    .locals 0
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public networkRemoveInterface(ILjava/lang/String;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    return-void
.end method

.method public networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    return-void
.end method

.method public networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    return-void
.end method

.method public networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public networkSetDefault(I)V
    .locals 0
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public networkSetPermissionForNetwork(II)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public networkSetPermissionForUser(I[I)V
    .locals 0
    .param p1, "permission"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public networkSetProtectAllow(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    return-void
.end method

.method public networkSetProtectDeny(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    return-void
.end method

.method public networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    return-void
.end method

.method public registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    return-void
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rmemValues"    # Ljava/lang/String;
    .param p2, "wmemValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    return-void
.end method

.method public socketDestroy([Landroid/net/UidRangeParcel;[I)V
    .locals 0
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .param p2, "exemptUids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public strictUidCleartextPenalty(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "policyPenalty"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "intIface"    # Ljava/lang/String;
    .param p2, "extIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    return-void
.end method

.method public tetherApplyDnsInterfaces()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public tetherDnsList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public tetherDnsSet(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "dnsAddrs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    return-void
.end method

.method public tetherGetStats()[Landroid/net/TetherStatsParcel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public tetherInterfaceAdd(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public tetherInterfaceList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public tetherInterfaceRemove(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public tetherIsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;
    .locals 1
    .param p1, "ifIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V
    .locals 0
    .param p1, "rule"    # Landroid/net/TetherOffloadRuleParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    return-void
.end method

.method public tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V
    .locals 0
    .param p1, "rule"    # Landroid/net/TetherOffloadRuleParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    return-void
.end method

.method public tetherOffloadSetInterfaceQuota(IJ)V
    .locals 0
    .param p1, "ifIndex"    # I
    .param p2, "quotaBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    return-void
.end method

.method public tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "intIface"    # Ljava/lang/String;
    .param p2, "extIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    return-void
.end method

.method public tetherStart([Ljava/lang/String;)V
    .locals 0
    .param p1, "dhcpRanges"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V
    .locals 0
    .param p1, "config"    # Landroid/net/TetherConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    return-void
.end method

.method public tetherStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public trafficSetNetPermForUids(I[I)V
    .locals 0
    .param p1, "permission"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    return-void
.end method

.method public trafficSwapActiveStatsMap()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    return-void
.end method

.method public wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method public wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method
