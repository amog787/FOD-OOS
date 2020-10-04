.class Lcom/android/server/hdmi/HdmiControlService$BinderService$12;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->setArcMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1823
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1826
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1827
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_0

    .line 1828
    const-string v1, "HdmiControlService"

    const-string v2, "Local tv device not available to change arc mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    return-void

    .line 1831
    :cond_0
    return-void
.end method
