.class Lcom/android/server/hdmi/OneTouchRecordAction$1;
.super Ljava/lang/Object;
.source "OneTouchRecordAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/OneTouchRecordAction;->sendRecordOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/OneTouchRecordAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/OneTouchRecordAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 61
    iput-object p1, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 3
    .param p1, "error"    # I

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 67
    invoke-static {v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->access$000(Lcom/android/server/hdmi/OneTouchRecordAction;)I

    move-result v1

    const/16 v2, 0x31

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 69
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->finish()V

    .line 70
    return-void

    .line 72
    :cond_0
    return-void
.end method
