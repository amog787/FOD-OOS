.class Landroid/net/ip/IpServer$LocalHotspotState;
.super Landroid/net/ip/IpServer$BaseServingState;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalHotspotState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpServer;

    .line 856
    iput-object p1, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;-><init>(Landroid/net/ip/IpServer;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 859
    invoke-super {p0}, Landroid/net/ip/IpServer$BaseServingState;->enter()V

    .line 860
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$000(Landroid/net/ip/IpServer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 864
    :cond_0
    invoke-static {}, Landroid/net/ip/IpServer;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local hotspot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    .line 866
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 870
    invoke-super {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 872
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v2}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 873
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x50066

    if-eq v0, v2, :cond_2

    const v2, 0x50070

    if-eq v0, v2, :cond_1

    .line 881
    const/4 v0, 0x0

    return v0

    .line 879
    :cond_1
    goto :goto_0

    .line 875
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v2, "CMD_TETHER_REQUESTED while in local-only hotspot mode."

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 876
    nop

    .line 883
    :goto_0
    return v1
.end method
