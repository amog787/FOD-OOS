.class public Landroid/net/dhcp/IDhcpEventCallbacks$Default;
.super Ljava/lang/Object;
.source "IDhcpEventCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpEventCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpEventCallbacks;
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public onLeasesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/dhcp/DhcpLeaseParcelable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    .local p1, "newLeases":Ljava/util/List;, "Ljava/util/List<Landroid/net/dhcp/DhcpLeaseParcelable;>;"
    return-void
.end method

.method public onNewPrefixRequest(Landroid/net/IpPrefix;)V
    .locals 0
    .param p1, "currentPrefix"    # Landroid/net/IpPrefix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
