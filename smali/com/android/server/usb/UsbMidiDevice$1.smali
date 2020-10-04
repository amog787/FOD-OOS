.class Lcom/android/server/usb/UsbMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 77
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    .line 113
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 6
    .param p1, "server"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 81
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 82
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v1

    .line 83
    .local v1, "inputPorts":I
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v2

    .line 84
    .local v2, "outputPorts":I
    const/4 v3, 0x0

    .line 86
    .local v3, "hasOpenPorts":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 87
    invoke-virtual {p2, v4}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    const/4 v3, 0x1

    .line 89
    goto :goto_1

    .line 86
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-nez v3, :cond_3

    .line 94
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 95
    invoke-virtual {p2, v4}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v5

    if-lez v5, :cond_2

    .line 96
    const/4 v3, 0x1

    .line 97
    goto :goto_3

    .line 94
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 102
    .end local v4    # "i":I
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v4}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 103
    if-eqz v3, :cond_4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 104
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$200(Lcom/android/server/usb/UsbMidiDevice;)Z

    goto :goto_4

    .line 108
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 105
    :cond_4
    if-nez v3, :cond_5

    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 106
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$300(Lcom/android/server/usb/UsbMidiDevice;)V

    .line 108
    :cond_5
    :goto_4
    monitor-exit v4

    .line 109
    return-void

    .line 108
    :goto_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
