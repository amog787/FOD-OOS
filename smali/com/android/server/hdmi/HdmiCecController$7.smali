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

    .line 620
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 623
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

    .line 624
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->access$600(I[B)[B

    move-result-object v0

    .line 625
    .local v0, "body":[B
    const/4 v1, 0x0

    .line 626
    .local v1, "i":I
    const/4 v2, 0x0

    move v8, v1

    move v1, v2

    .line 628
    .local v1, "errorCode":I
    .local v8, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecController;->access$800(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiCecController;->access$700(Lcom/android/server/hdmi/HdmiCecController;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 629
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v6

    .line 628
    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(JII[B)I

    move-result v1

    .line 630
    if-nez v1, :cond_0

    .line 631
    move v2, v8

    goto :goto_1

    .line 633
    :cond_0
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "i":I
    .local v2, "i":I
    const/4 v3, 0x1

    if-lt v8, v3, :cond_3

    .line 635
    :goto_1
    move v3, v1

    .line 636
    .local v3, "finalError":I
    if-eqz v3, :cond_1

    .line 637
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

    .line 639
    :cond_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz v4, :cond_2

    .line 640
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$7$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/HdmiCecController$7$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiCecController;->access$500(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    .line 647
    :cond_2
    return-void

    .line 633
    .end local v3    # "finalError":I
    :cond_3
    move v8, v2

    goto :goto_0
.end method
