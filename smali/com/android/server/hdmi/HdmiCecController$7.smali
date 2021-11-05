.class Lcom/android/server/hdmi/HdmiCecController$7;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field final synthetic val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;

    .line 628
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[S]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->access$600(I[B)[B

    move-result-object v0

    .line 633
    .local v0, "body":[B
    const/4 v1, 0x0

    .line 634
    .local v1, "i":I
    const/4 v2, 0x0

    .line 636
    .local v2, "errorCode":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiCecController;->access$700(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 637
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v5

    .line 636
    invoke-interface {v3, v4, v5, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(II[B)I

    move-result v2

    .line 638
    if-nez v2, :cond_0

    .line 639
    goto :goto_1

    .line 641
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    const/4 v4, 0x1

    if-lt v1, v4, :cond_3

    move v1, v3

    .line 643
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :goto_1
    move v3, v2

    .line 644
    .local v3, "finalError":I
    if-eqz v3, :cond_1

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HdmiCecController"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz v4, :cond_2

    .line 648
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$7$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/HdmiCecController$7$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiCecController;->access$500(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    .line 655
    :cond_2
    return-void

    .line 641
    .end local v1    # "i":I
    .local v3, "i":I
    :cond_3
    move v1, v3

    goto :goto_0
.end method
