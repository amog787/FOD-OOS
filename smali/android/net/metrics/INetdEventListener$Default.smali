.class public Landroid/net/metrics/INetdEventListener$Default;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .locals 0
    .param p1, "networkIds"    # [I
    .param p2, "sentPackets"    # [I
    .param p3, "lostPackets"    # [I
    .param p4, "rttUs"    # [I
    .param p5, "sentAckDiffMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ethertype"    # I
    .param p4, "ipNextHeader"    # I
    .param p5, "dstHw"    # [B
    .param p6, "srcIp"    # Ljava/lang/String;
    .param p7, "dstIp"    # Ljava/lang/String;
    .param p8, "srcPort"    # I
    .param p9, "dstPort"    # I
    .param p10, "timestampNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
