.class Landroid/net/ip/IpServer$InitialState;
.super Lcom/android/internal/util/State;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpServer;

    .line 733
    iput-object p1, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 736
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    .line 737
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 741
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 742
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x50066

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x50068

    if-eq v0, v1, :cond_1

    const v1, 0x50071

    if-eq v0, v1, :cond_0

    .line 768
    return v2

    .line 765
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$1400(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 766
    goto :goto_0

    .line 762
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1300(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 763
    goto :goto_0

    .line 744
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0, v2}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 747
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$1002(Landroid/net/ip/IpServer;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD_TETHER_REQUESTED received, mCallerPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1000(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 758
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "Invalid tethering interface serving state specified."

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 760
    goto :goto_0

    .line 752
    :cond_3
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 753
    goto :goto_0

    .line 755
    :cond_4
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1200(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 756
    nop

    .line 770
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
