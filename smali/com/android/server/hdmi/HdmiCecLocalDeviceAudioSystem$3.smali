.class Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceAudioSystem.java"

# interfaces
.implements Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->launchDeviceDiscovery()V
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

    .line 1375
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscoveryDone(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1378
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1379
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1380
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_0

    .line 1381
    :cond_0
    return-void
.end method
