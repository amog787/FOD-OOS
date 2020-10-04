.class Lcom/android/server/usb/UsbPortManager$HALCallback;
.super Landroid/hardware/usb/V1_2/IUsbCallback$Stub;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HALCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;
    }
.end annotation


# instance fields
.field private mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

.field public portManager:Lcom/android/server/usb/UsbPortManager;

.field public pw:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "portManager"    # Lcom/android/server/usb/UsbPortManager;

    .line 650
    invoke-direct {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;-><init>()V

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    .line 651
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 652
    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    .line 653
    return-void
.end method

.method public static isUsbContaminantDetected()Z
    .locals 8

    .line 880
    const-string/jumbo v0, "readFileByLines io close exception :"

    const-string v1, "UsbPortManager"

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/connect_disable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 882
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 884
    .local v4, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 885
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 889
    nop

    .line 891
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 894
    :goto_0
    goto :goto_2

    .line 892
    :catch_0
    move-exception v5

    .line 893
    .local v5, "e1":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e1":Ljava/io/IOException;
    goto :goto_0

    .line 889
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 886
    :catch_1
    move-exception v5

    .line 887
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readFileByLines io exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 889
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 891
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 892
    :catch_2
    move-exception v5

    .line 893
    .local v5, "e1":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 897
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is_vbus_connected "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 889
    :goto_3
    if-eqz v3, :cond_1

    .line 891
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 894
    goto :goto_4

    .line 892
    :catch_3
    move-exception v6

    .line 893
    .local v6, "e1":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v6    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v5
.end method


# virtual methods
.method public notifyPortStatusChange(Ljava/util/ArrayList;I)V
    .locals 20
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_0/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 657
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_0/PortStatus;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    return-void

    .line 661
    :cond_0
    if-eqz p2, :cond_1

    .line 662
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 663
    return-void

    .line 668
    :cond_1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    if-nez v1, :cond_2

    .line 669
    new-instance v1, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    invoke-direct {v1, v0}, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;-><init>(Lcom/android/server/usb/UsbPortManager$HALCallback;)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    .line 671
    :cond_2
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->startMonitor()V

    .line 672
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 673
    invoke-static {}, Lcom/android/server/usb/UsbPortManager$HALCallback;->isUsbContaminantDetected()Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$302(Z)Z

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to listen usb event, vbus_connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPortManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/V1_0/PortStatus;

    .line 693
    .local v3, "current":Landroid/hardware/usb/V1_0/PortStatus;
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 694
    new-instance v4, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v6, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v7, v3, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    const/4 v8, 0x0

    iget v9, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v10, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v11, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v12, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v13, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v14, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x3

    move-object v5, v4

    invoke-direct/range {v5 .. v18}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 702
    .local v4, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v4    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_1

    .line 705
    :cond_3
    new-instance v4, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v7, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    const/4 v9, 0x0

    iget v10, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v11, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v12, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v13, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v14, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v15, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x2

    move-object v6, v4

    invoke-direct/range {v6 .. v19}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 713
    .restart local v4    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    .end local v4    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    :goto_1
    const/4 v4, 0x4

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientCallback V1_0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 718
    .end local v3    # "current":Landroid/hardware/usb/V1_0/PortStatus;
    goto :goto_0

    .line 720
    :cond_4
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 721
    .local v2, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 722
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "port_info"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 723
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 724
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 725
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 726
    return-void
.end method

.method public notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V
    .locals 22
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;I)V"
        }
    .end annotation

    .line 731
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_1/PortStatus_1_1;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    return-void

    .line 735
    :cond_0
    if-eqz p2, :cond_1

    .line 736
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 737
    return-void

    .line 742
    :cond_1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    if-nez v1, :cond_2

    .line 743
    new-instance v1, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    invoke-direct {v1, v0}, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;-><init>(Lcom/android/server/usb/UsbPortManager$HALCallback;)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    .line 745
    :cond_2
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->startMonitor()V

    .line 746
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 747
    invoke-static {}, Lcom/android/server/usb/UsbPortManager$HALCallback;->isUsbContaminantDetected()Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$302(Z)Z

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to listen usb event, vbus_connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPortManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 753
    .local v2, "numStatus":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 754
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 769
    .local v5, "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 770
    new-instance v6, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v8, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v9, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    const/4 v10, 0x0

    iget v11, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v12, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v13, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v14, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v15, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x3

    move/from16 v16, v7

    move-object v7, v6

    invoke-direct/range {v7 .. v20}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 778
    .local v6, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$200()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    .end local v6    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_1

    .line 781
    :cond_3
    new-instance v6, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v9, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v10, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    const/4 v11, 0x0

    iget v12, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v13, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v14, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v15, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v8, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v8, v8, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    move/from16 v17, v8

    move-object v8, v6

    move/from16 v16, v7

    invoke-direct/range {v8 .. v21}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 789
    .restart local v6    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$200()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v6    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    :goto_1
    const/4 v6, 0x4

    iget-object v7, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientCallback V1_1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v9, v9, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 753
    .end local v5    # "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v4, p1

    .line 796
    .end local v3    # "i":I
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 797
    .local v3, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 798
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "port_info"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 799
    const/4 v6, 0x1

    iput v6, v3, Landroid/os/Message;->what:I

    .line 800
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 801
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 802
    return-void
.end method

.method public notifyPortStatusChange_1_2(Ljava/util/ArrayList;I)V
    .locals 23
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_2/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 806
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_2/PortStatus;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    return-void

    .line 810
    :cond_0
    if-eqz p2, :cond_1

    .line 811
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 812
    return-void

    .line 815
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 818
    .local v2, "numStatus":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 819
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_2/PortStatus;

    .line 820
    .local v5, "current":Landroid/hardware/usb/V1_2/PortStatus;
    new-instance v20, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v8, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v9, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v10, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v11, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v12, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v13, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v14, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v15, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    iget-boolean v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v21, v2

    .end local v2    # "numStatus":I
    .local v21, "numStatus":I
    iget v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    iget-boolean v4, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v22, v3

    .end local v3    # "i":I
    .local v22, "i":I
    iget v3, v5, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    move/from16 v16, v6

    move-object/from16 v6, v20

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v3

    invoke-direct/range {v6 .. v19}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    move-object/from16 v2, v20

    .line 833
    .local v2, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    const/4 v3, 0x4

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientCallback V1_2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 818
    .end local v2    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .end local v5    # "current":Landroid/hardware/usb/V1_2/PortStatus;
    add-int/lit8 v3, v22, 0x1

    move/from16 v2, v21

    .end local v22    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .end local v21    # "numStatus":I
    .local v2, "numStatus":I
    :cond_2
    move/from16 v21, v2

    move/from16 v22, v3

    .line 838
    .end local v2    # "numStatus":I
    .end local v3    # "i":I
    .restart local v21    # "numStatus":I
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 839
    .local v2, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 840
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "port_info"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 841
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 842
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 843
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
    .locals 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "role"    # Landroid/hardware/usb/V1_0/PortRole;
    .param p3, "retval"    # I

    .line 847
    if-nez p3, :cond_0

    .line 848
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " role switch successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " role switch failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 852
    :goto_0
    return-void
.end method
