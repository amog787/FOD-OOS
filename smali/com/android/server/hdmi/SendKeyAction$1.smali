.class Lcom/android/server/hdmi/SendKeyAction$1;
.super Ljava/lang/Object;
.source "SendKeyAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SendKeyAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SendKeyAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/SendKeyAction;

    .line 157
    iput-object p1, p0, Lcom/android/server/hdmi/SendKeyAction$1;->this$0:Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 3
    .param p1, "error"    # I

    .line 160
    if-eqz p1, :cond_0

    .line 161
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AVR did not respond to <User Control Pressed>"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcom/android/server/hdmi/SendKeyAction$1;->this$0:Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {v1}, Lcom/android/server/hdmi/SendKeyAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 165
    :cond_0
    return-void
.end method
