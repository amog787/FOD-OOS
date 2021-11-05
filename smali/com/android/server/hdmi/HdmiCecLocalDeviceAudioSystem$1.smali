.class Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;
.super Landroid/media/tv/TvInputManager$TvInputCallback;
.source "HdmiCecLocalDeviceAudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 132
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$TvInputCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->access$100(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V

    .line 146
    return-void
.end method
