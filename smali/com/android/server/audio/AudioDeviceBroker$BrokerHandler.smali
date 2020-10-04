.class Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
.super Landroid/os/Handler;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrokerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p2, "x1"    # Lcom/android/server/audio/AudioDeviceBroker$1;

    .line 754
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 758
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 971
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$800(Lcom/android/server/audio/AudioDeviceBroker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$802(Lcom/android/server/audio/AudioDeviceBroker;Z)Z

    .line 973
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 974
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v1, "setBluetoothScoOn msg setStream STREAM_VOICE_CALL unMute "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 965
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 966
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->sendHfpReconnectBroadcast(Ljava/lang/String;)V

    .line 967
    .end local v0    # "packageName":Ljava/lang/String;
    goto/16 :goto_0

    .line 854
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 856
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->scoClientDied(Ljava/lang/Object;)V

    .line 857
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 859
    goto/16 :goto_0

    .line 857
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_4
    throw v2

    .line 858
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 946
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    .line 947
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBluetoothA2dpActiveDeviceChangeExt  state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 952
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " prof="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " supprNoisy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " vol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 954
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 947
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 955
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 956
    :try_start_5
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    iget-boolean v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    iget v8, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceInventory;->handleBluetoothA2dpActiveDeviceChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 959
    monitor-exit v1

    .line 960
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    goto/16 :goto_0

    .line 959
    .restart local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 933
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    .line 935
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHearingAidDeviceConnectionState state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 937
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " supprNoisy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 939
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 935
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 940
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 941
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mState:I

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mSupprNoisy:Z

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mMusicDevice:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    .line 943
    monitor-exit v1

    .line 944
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    goto/16 :goto_0

    .line 943
    .restart local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 917
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    .line 918
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent  state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 923
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " prof="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " supprNoisy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " vol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 925
    const-string v3, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 918
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 926
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 927
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    iget-boolean v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V

    .line 930
    monitor-exit v1

    .line 931
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    goto/16 :goto_0

    .line 930
    .restart local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v2

    .line 910
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 912
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 913
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 914
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 915
    goto/16 :goto_0

    .line 913
    :catchall_5
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_c
    throw v2

    .line 914
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v1

    .line 905
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 906
    :try_start_d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V

    .line 907
    monitor-exit v0

    .line 908
    goto/16 :goto_0

    .line 907
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v1

    .line 900
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 901
    :try_start_e
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    .line 902
    monitor-exit v0

    .line 903
    goto/16 :goto_0

    .line 902
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw v1

    .line 895
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 896
    :try_start_f
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 897
    monitor-exit v0

    .line 898
    goto/16 :goto_0

    .line 897
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v1

    .line 888
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_10
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 890
    :try_start_11
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->disconnectHeadset()V

    .line 891
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 892
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 893
    goto/16 :goto_0

    .line 891
    :catchall_a
    move-exception v2

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_14
    throw v2

    .line 892
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    throw v1

    .line 883
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 884
    :try_start_15
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHearingAid()V

    .line 885
    monitor-exit v0

    .line 886
    goto/16 :goto_0

    .line 885
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    throw v1

    .line 878
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 879
    :try_start_16
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dpSink()V

    .line 880
    monitor-exit v0

    .line 881
    goto/16 :goto_0

    .line 880
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    throw v1

    .line 873
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 874
    :try_start_17
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dp()V

    .line 875
    monitor-exit v0

    .line 876
    goto/16 :goto_0

    .line 875
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    throw v1

    .line 866
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 867
    :try_start_18
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 870
    monitor-exit v0

    .line 871
    goto/16 :goto_0

    .line 870
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    throw v1

    .line 861
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 862
    :try_start_19
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    .line 863
    monitor-exit v0

    .line 864
    goto/16 :goto_0

    .line 863
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    throw v1

    .line 847
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    .line 849
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothSco(I)V

    .line 850
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    .line 851
    :try_start_1c
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    .line 852
    goto/16 :goto_0

    .line 850
    :catchall_11
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_1e
    throw v2

    .line 851
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    throw v1

    .line 842
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 843
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 844
    monitor-exit v0

    .line 845
    goto/16 :goto_0

    .line 844
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    throw v1

    .line 837
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 838
    :try_start_20
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(II)V

    .line 839
    monitor-exit v0

    .line 840
    goto/16 :goto_0

    .line 839
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    throw v1

    .line 781
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 782
    :try_start_21
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    .line 783
    monitor-exit v0

    .line 784
    goto/16 :goto_0

    .line 783
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_15

    throw v1

    .line 830
    :pswitch_14
    new-array v0, v1, [I

    const/16 v1, 0xaa

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postCancelAutoPlayback()V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$700(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 835
    goto/16 :goto_0

    .line 819
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 820
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 821
    :try_start_22
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 822
    .local v3, "a2dpCodec":I
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    const/4 v6, -0x1

    invoke-direct {v5, v0, v6, v3}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v4, v5, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 825
    monitor-exit v1

    .line 826
    goto/16 :goto_0

    .line 825
    .end local v3    # "a2dpCodec":I
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    throw v2

    .line 813
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 814
    :try_start_23
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 815
    monitor-exit v0

    .line 816
    goto/16 :goto_0

    .line 815
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_17

    throw v1

    .line 805
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_24
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_19

    .line 807
    :try_start_25
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 808
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_18

    .line 809
    :try_start_26
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_19

    .line 810
    goto/16 :goto_0

    .line 808
    :catchall_18
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_18

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_28
    throw v2

    .line 809
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    throw v1

    .line 798
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 799
    :try_start_29
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 801
    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$600(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v4

    .line 799
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 802
    monitor-exit v0

    .line 803
    goto/16 :goto_0

    .line 802
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1a

    throw v1

    .line 792
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 793
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 795
    monitor-exit v0

    .line 796
    goto/16 :goto_0

    .line 795
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1b

    throw v1

    .line 786
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 787
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 789
    monitor-exit v0

    .line 790
    goto :goto_0

    .line 789
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1c

    throw v1

    .line 778
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;IILjava/lang/String;)V

    .line 779
    goto :goto_0

    .line 772
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 773
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onBroadcastScoConnectionState(I)V

    .line 774
    monitor-exit v0

    .line 775
    goto :goto_0

    .line 774
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1d

    throw v1

    .line 766
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 767
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    .line 769
    monitor-exit v0

    .line 770
    goto :goto_0

    .line 769
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1e

    throw v1

    .line 760
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 761
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()V

    .line 762
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->onAudioServerDiedRestoreA2dp()V

    .line 763
    monitor-exit v0

    .line 764
    goto :goto_0

    .line 763
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1f

    throw v1

    .line 981
    :cond_1
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$900(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$1000(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_0

    .line 986
    goto :goto_1

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Exception releasing wakelock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 988
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
