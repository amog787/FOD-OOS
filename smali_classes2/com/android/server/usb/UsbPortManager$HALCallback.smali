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

    .line 656
    invoke-direct {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;-><init>()V

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    .line 657
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 658
    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    .line 659
    return-void
.end method

.method public static isUsbContaminantDetected()Z
    .locals 8

    .line 853
    const-string v0, "readFileByLines io close exception :"

    const-string v1, "UsbPortManager"

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/connect_disable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 854
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 855
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 857
    .local v4, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 858
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 862
    nop

    .line 864
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 867
    :goto_0
    goto :goto_2

    .line 865
    :catch_0
    move-exception v5

    .line 866
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

    .line 862
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 859
    :catch_1
    move-exception v5

    .line 860
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFileByLines io exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 862
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 864
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 865
    :catch_2
    move-exception v5

    .line 866
    .local v5, "e1":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 870
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_vbus_connected "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 862
    :goto_3
    if-eqz v3, :cond_1

    .line 864
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 867
    goto :goto_4

    .line 865
    :catch_3
    move-exception v6

    .line 866
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

    .line 869
    .end local v6    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v5
.end method


# virtual methods
.method public notifyPortStatusChange(Ljava/util/ArrayList;I)V
    .locals 19
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_0/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 663
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_0/PortStatus;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    return-void

    .line 667
    :cond_0
    if-eqz p2, :cond_1

    .line 668
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 669
    return-void

    .line 672
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/V1_0/PortStatus;

    .line 675
    .local v3, "current":Landroid/hardware/usb/V1_0/PortStatus;
    new-instance v18, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v5, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v6, v3, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    const/4 v7, 0x0

    iget v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v9, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v10, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v11, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v12, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v13, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, v18

    invoke-direct/range {v4 .. v17}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 683
    .local v4, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    const/4 v5, 0x4

    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientCallback V1_0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 685
    .end local v3    # "current":Landroid/hardware/usb/V1_0/PortStatus;
    .end local v4    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_0

    .line 687
    :cond_2
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 688
    .local v2, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 689
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "port_info"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 690
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 691
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 692
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 693
    return-void
.end method

.method public notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V
    .locals 21
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;I)V"
        }
    .end annotation

    .line 698
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_1/PortStatus_1_1;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    return-void

    .line 702
    :cond_0
    if-eqz p2, :cond_1

    .line 703
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 704
    return-void

    .line 707
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 710
    .local v2, "numStatus":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 711
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 712
    .local v5, "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    new-instance v20, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v8, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    const/4 v9, 0x0

    iget v10, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v11, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v12, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v13, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v14, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v15, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v6, v20

    invoke-direct/range {v6 .. v19}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 720
    .local v6, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    const/4 v7, 0x4

    iget-object v8, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClientCallback V1_1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v10, v10, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 710
    .end local v5    # "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    .end local v6    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p1

    .line 724
    .end local v3    # "i":I
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 725
    .local v3, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 726
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "port_info"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 727
    const/4 v6, 0x1

    iput v6, v3, Landroid/os/Message;->what:I

    .line 728
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 729
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 730
    return-void
.end method

.method public notifyPortStatusChange_1_2(Ljava/util/ArrayList;I)V
    .locals 22
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_2/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 734
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_2/PortStatus;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    return-void

    .line 738
    :cond_0
    if-eqz p2, :cond_1

    .line 739
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 740
    return-void

    .line 745
    :cond_1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    if-nez v1, :cond_2

    .line 746
    new-instance v1, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    invoke-direct {v1, v0}, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;-><init>(Lcom/android/server/usb/UsbPortManager$HALCallback;)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    .line 748
    :cond_2
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->mOemUEventObserver:Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->startMonitor()V

    .line 749
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 750
    invoke-static {}, Lcom/android/server/usb/UsbPortManager$HALCallback;->isUsbContaminantDetected()Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$402(Z)Z

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to listen usb event, vbus_connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$400()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPortManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 756
    .local v2, "numStatus":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 757
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_2/PortStatus;

    .line 777
    .local v5, "current":Landroid/hardware/usb/V1_2/PortStatus;
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$400()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 778
    new-instance v6, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v8, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v9, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v10, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v11, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v12, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v13, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v14, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v15, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x3

    move/from16 v16, v7

    move-object v7, v6

    invoke-direct/range {v7 .. v20}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 789
    .local v6, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v6    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_1

    .line 792
    :cond_3
    new-instance v6, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v9, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v10, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v11, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v12, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v13, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v14, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v15, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v8, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v8, v8, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v8, v8, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    move/from16 v17, v8

    move-object v8, v6

    move/from16 v16, v7

    invoke-direct/range {v8 .. v21}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 803
    .restart local v6    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-static {}, Lcom/android/server/usb/UsbPortManager;->access$300()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    .end local v6    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    :goto_1
    const/4 v6, 0x4

    iget-object v7, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientCallback V1_2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v9, v9, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v9, v9, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 756
    .end local v5    # "current":Landroid/hardware/usb/V1_2/PortStatus;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v4, p1

    .line 811
    .end local v3    # "i":I
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 812
    .local v3, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 813
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "port_info"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 814
    const/4 v6, 0x1

    iput v6, v3, Landroid/os/Message;->what:I

    .line 815
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 816
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 817
    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
    .locals 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "role"    # Landroid/hardware/usb/V1_0/PortRole;
    .param p3, "retval"    # I

    .line 820
    if-nez p3, :cond_0

    .line 821
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

    .line 823
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

    .line 825
    :goto_0
    return-void
.end method
