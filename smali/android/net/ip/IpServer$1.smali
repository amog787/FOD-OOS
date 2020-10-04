.class Landroid/net/ip/IpServer$1;
.super Landroid/net/ip/IpServer$OnHandlerStatusCallback;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpServer;->stopDhcp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/ip/IpServer;

    .line 375
    iput-object p1, p0, Landroid/net/ip/IpServer$1;->this$0:Landroid/net/ip/IpServer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpServer$OnHandlerStatusCallback;-><init>(Landroid/net/ip/IpServer;Landroid/net/ip/IpServer$1;)V

    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 3
    .param p1, "statusCode"    # I

    .line 378
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/net/ip/IpServer$1;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error stopping DHCP server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Landroid/net/ip/IpServer$1;->this$0:Landroid/net/ip/IpServer;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 383
    :cond_0
    return-void
.end method
