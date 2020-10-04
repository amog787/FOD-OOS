.class public final synthetic Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/net/dhcp/IDhcpServer;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;ILandroid/net/dhcp/IDhcpServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;->f$0:Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iput p2, p0, Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;->f$1:I

    iput-object p3, p0, Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;->f$2:Landroid/net/dhcp/IDhcpServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;->f$0:Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget v1, p0, Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;->f$1:I

    iget-object v2, p0, Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;->f$2:Landroid/net/dhcp/IDhcpServer;

    invoke-virtual {v0, v1, v2}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->lambda$onDhcpServerCreated$0$IpServer$DhcpServerCallbacksImpl(ILandroid/net/dhcp/IDhcpServer;)V

    return-void
.end method
