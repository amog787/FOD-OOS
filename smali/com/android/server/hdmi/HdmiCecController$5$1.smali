.class Lcom/android/server/hdmi/HdmiCecController$5$1;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$5;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiCecController$5;

    .line 506
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 509
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    iget v2, v0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    iget-object v3, v0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    iget v4, v0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    iget-object v5, v0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    iget-object v6, v0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecController;->access$400(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    .line 511
    return-void
.end method
