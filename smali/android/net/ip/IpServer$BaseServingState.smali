.class Landroid/net/ip/IpServer$BaseServingState;
.super Lcom/android/internal/util/State;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseServingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpServer;

    .line 774
    iput-object p1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 777
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 779
    return-void

    .line 783
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    nop

    .line 790
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1800(Landroid/net/ip/IpServer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "Failed to startIPv6"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 793
    return-void

    .line 795
    :cond_1
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 787
    return-void
.end method

.method public exit()V
    .locals 4

    .line 802
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1900(Landroid/net/ip/IpServer;)V

    .line 805
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 808
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to untether interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 811
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2000(Landroid/net/ip/IpServer;)V

    .line 813
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2100(Landroid/net/ip/IpServer;)V

    .line 814
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 818
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 819
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "IpServer"

    packed-switch v0, :pswitch_data_0

    .line 845
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 833
    :pswitch_1
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$1400(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 834
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2300(Landroid/net/ip/IpServer;)V

    .line 835
    goto :goto_0

    .line 841
    :pswitch_2
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 842
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 843
    goto :goto_0

    .line 829
    :pswitch_3
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1300(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 830
    invoke-static {}, Landroid/net/ip/IpServer;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untethered (ifdown)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 823
    :pswitch_4
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/ip/IpServer;->access$1002(Landroid/net/ip/IpServer;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 826
    invoke-static {}, Landroid/net/ip/IpServer;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untethered (unrequested)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x50067
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
