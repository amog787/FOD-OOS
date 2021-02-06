.class final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;
.super Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HdmiCecCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;

    .line 929
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCecMessage$0$HdmiCecController$HdmiCecCallback(Landroid/hardware/tv/cec/V1_0/CecMessage;[B)V
    .locals 3
    .param p1, "message"    # Landroid/hardware/tv/cec/V1_0/CecMessage;
    .param p2, "body"    # [B

    .line 937
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    iget v2, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/hdmi/HdmiCecController;->access$900(Lcom/android/server/hdmi/HdmiCecController;II[B)V

    return-void
.end method

.method public synthetic lambda$onHotplugEvent$1$HdmiCecController$HdmiCecCallback(Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/tv/cec/V1_0/HotplugEvent;

    .line 942
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

    iget-boolean v2, p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->access$800(Lcom/android/server/hdmi/HdmiCecController;IZ)V

    return-void
.end method

.method public onCecMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)V
    .locals 3
    .param p1, "message"    # Landroid/hardware/tv/cec/V1_0/CecMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    iget-object v0, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 933
    .local v0, "body":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 934
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v2, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;Landroid/hardware/tv/cec/V1_0/CecMessage;[B)V

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->access$500(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    .line 938
    return-void
.end method

.method public onHotplugEvent(Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/tv/cec/V1_0/HotplugEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$4-RVFN1kudwsncLnWj5l8GAvuWE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$4-RVFN1kudwsncLnWj5l8GAvuWE;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->access$500(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    .line 943
    return-void
.end method
