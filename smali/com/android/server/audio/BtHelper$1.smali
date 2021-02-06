.class Lcom/android/server/audio/BtHelper$1;
.super Ljava/lang/Object;
.source "BtHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/BtHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/BtHelper;

    .line 834
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In onServiceConnected(), profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "BT profile service: connecting HEARING_AID profile"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 862
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V

    .line 864
    goto :goto_0

    .line 848
    :cond_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "BT profile service: connecting A2DP_SINK profile"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 850
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postBtA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    .line 851
    goto :goto_0

    .line 842
    :cond_2
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "BT profile service: connecting A2DP profile"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 844
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 845
    goto :goto_0

    .line 854
    :cond_3
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "BT profile service: connecting HEADSET profile"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 856
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtHeasetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 857
    nop

    .line 868
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .param p1, "profile"    # I

    .line 871
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHearingAid()V

    .line 886
    goto :goto_0

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dpSink()V

    .line 878
    goto :goto_0

    .line 873
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dp()V

    .line 874
    goto :goto_0

    .line 881
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHeadset()V

    .line 882
    nop

    .line 891
    :goto_0
    return-void
.end method
