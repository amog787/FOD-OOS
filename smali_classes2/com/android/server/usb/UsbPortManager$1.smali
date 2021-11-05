.class Lcom/android/server/usb/UsbPortManager$1;
.super Landroid/os/Handler;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbPortManager;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 1234
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 1237
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 1277
    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 1278
    .local v3, "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    iget-object v5, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    iget v7, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    iget v8, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    iget-boolean v9, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    iget v10, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    iget-boolean v11, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    iget v12, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    iget-boolean v13, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    const/4 v14, 0x1

    iget v15, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-static/range {v4 .. v18}, Lcom/android/server/usb/UsbPortManager;->access$1100(Lcom/android/server/usb/UsbPortManager;Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 1287
    .end local v3    # "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_0

    .line 1288
    :cond_1
    const-string v0, "UsbPortManager"

    const-string v3, "MSG_USB_CONTAMINANT_RECOVERED message handled."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1254
    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 1255
    .restart local v3    # "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    iget-object v5, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    iget v7, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    iget v8, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    iget-boolean v9, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    iget v10, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    iget-boolean v11, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    iget v12, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    iget-boolean v13, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    const/4 v14, 0x1

    iget v15, v3, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    invoke-static/range {v4 .. v18}, Lcom/android/server/usb/UsbPortManager;->access$1100(Lcom/android/server/usb/UsbPortManager;Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 1264
    .end local v3    # "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_1

    .line 1265
    :cond_3
    const-string v0, "UsbPortManager"

    const-string v3, "MSG_USB_CONTAMINANT_DETECTED message handled."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v0, Lcom/android/server/usb/UsbPortManager$1$1;

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbPortManager$1$1;-><init>(Lcom/android/server/usb/UsbPortManager$1;)V

    .line 1272
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager$1$1;->start()V

    .line 1274
    goto :goto_2

    .line 1247
    :cond_4
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    .line 1248
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$1000(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1247
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbPortManager;->access$902(Lcom/android/server/usb/UsbPortManager;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 1249
    goto :goto_2

    .line 1239
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1240
    .local v3, "b":Landroid/os/Bundle;
    const-string v0, "port_info"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1241
    .local v4, "PortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$500(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1242
    :try_start_0
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    const/4 v6, 0x0

    invoke-static {v0, v6, v4}, Lcom/android/server/usb/UsbPortManager;->access$800(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 1243
    monitor-exit v5

    .line 1244
    nop

    .line 1293
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "PortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    :goto_2
    return-void

    .line 1243
    .restart local v3    # "b":Landroid/os/Bundle;
    .restart local v4    # "PortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
