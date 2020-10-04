.class Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;
.super Landroid/os/Handler;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/EntitlementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntitlementHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 504
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 505
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 506
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 510
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$000(Lcom/android/server/connectivity/tethering/EntitlementManager;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/ResultReceiver;

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 526
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$200(I)Z

    move-result v3

    .line 525
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$700(Lcom/android/server/connectivity/tethering/EntitlementManager;ILandroid/os/ResultReceiver;Z)V

    .line 527
    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$100(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 522
    .local v0, "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {v1, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$600(Lcom/android/server/connectivity/tethering/EntitlementManager;Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 523
    goto :goto_0

    .line 518
    .end local v0    # "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$200(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$500(Lcom/android/server/connectivity/tethering/EntitlementManager;Z)V

    .line 519
    goto :goto_0

    .line 515
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$400(Lcom/android/server/connectivity/tethering/EntitlementManager;I)V

    .line 516
    goto :goto_0

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$200(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$300(Lcom/android/server/connectivity/tethering/EntitlementManager;IZ)V

    .line 513
    nop

    .line 532
    :goto_0
    return-void
.end method
