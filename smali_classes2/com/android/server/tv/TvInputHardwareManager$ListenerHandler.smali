.class Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;
.super Landroid/os/Handler;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerHandler"
.end annotation


# static fields
.field private static final HARDWARE_DEVICE_ADDED:I = 0x2

.field private static final HARDWARE_DEVICE_REMOVED:I = 0x3

.field private static final HDMI_DEVICE_ADDED:I = 0x4

.field private static final HDMI_DEVICE_REMOVED:I = 0x5

.field private static final HDMI_DEVICE_UPDATED:I = 0x6

.field private static final STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputHardwareManager$1;

    .line 1151
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1161
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1203
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1189
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1191
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1000(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1192
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2200(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1193
    .local v2, "inputId":Ljava/lang/String;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    if-eqz v2, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_0

    .line 1197
    :cond_0
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Could not resolve input ID matching the device info; ignoring."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    goto :goto_0

    .line 1193
    .end local v2    # "inputId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1184
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1185
    .restart local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1186
    goto :goto_0

    .line 1179
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1180
    .restart local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1181
    goto :goto_0

    .line 1174
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 1175
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 1176
    goto :goto_0

    .line 1169
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 1170
    .restart local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 1171
    goto :goto_0

    .line 1163
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1164
    .local v0, "inputId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1165
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onStateChanged(Ljava/lang/String;I)V

    .line 1166
    nop

    .line 1207
    .end local v0    # "inputId":Ljava/lang/String;
    .end local v1    # "state":I
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
