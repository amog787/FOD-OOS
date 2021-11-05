.class public final synthetic Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/net/dhcp/DhcpServingParamsParcel;

.field public final synthetic f$2:Landroid/net/dhcp/IDhcpServerCallbacks;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;->f$1:Landroid/net/dhcp/DhcpServingParamsParcel;

    iput-object p3, p0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;->f$2:Landroid/net/dhcp/IDhcpServerCallbacks;

    return-void
.end method


# virtual methods
.method public final onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 3

    iget-object v0, p0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;->f$1:Landroid/net/dhcp/DhcpServingParamsParcel;

    iget-object v2, p0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;->f$2:Landroid/net/dhcp/IDhcpServerCallbacks;

    invoke-static {v0, v1, v2, p1}, Landroid/net/NetworkStackClient;->lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
