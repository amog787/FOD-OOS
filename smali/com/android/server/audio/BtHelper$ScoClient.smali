.class Lcom/android/server/audio/BtHelper$ScoClient;
.super Ljava/lang/Object;
.source "BtHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/BtHelper;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 849
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    .line 851
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    .line 852
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 853
    return-void
.end method

.method private requestScoState(II)Z
    .locals 11
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In requestScoState(), state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$200(Lcom/android/server/audio/BtHelper;)V

    .line 973
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper$ScoClient;->totalCount()I

    move-result v0

    .line 974
    .local v0, "clientCount":I
    const-string v2, ", scoAudioMode="

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 975
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clientCount="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return v3

    .line 979
    :cond_0
    const/16 v4, 0xc

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne p1, v4, :cond_b

    .line 982
    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    const/4 v9, 0x2

    invoke-static {v4, v9}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 985
    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->getModeOwnerPid()I

    move-result v4

    .line 986
    .local v4, "modeOwnerPid":I
    if-eqz v4, :cond_1

    iget v10, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    if-eq v4, v10, :cond_1

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: audio mode is not NORMAL and modeOwnerPid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != creatorPid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 990
    return v8

    .line 992
    :cond_1
    iget-object v10, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v10}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v10

    if-eqz v10, :cond_4

    if-eq v10, v6, :cond_3

    if-eq v10, v5, :cond_2

    .line 1046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: failed to connect in state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1047
    invoke-static {v5}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1049
    return v8

    .line 1039
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1040
    goto/16 :goto_0

    .line 1042
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1043
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1044
    return v8

    .line 994
    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, p2}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 995
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 996
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, v8}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 997
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 998
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 999
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bluetooth_sco_channel_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1001
    invoke-static {v10}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 998
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 1003
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    if-gt v2, v9, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    if-gez v2, :cond_6

    .line 1004
    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, v8}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 1008
    :cond_6
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1009
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1010
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_0

    .line 1012
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1013
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1012
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1016
    return v8

    .line 1020
    :cond_8
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1022
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1025
    return v8

    .line 1027
    :cond_9
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1028
    invoke-static {v5}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v6}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v6

    .line 1027
    invoke-static {v2, v5, v6}, Lcom/android/server/audio/BtHelper;->access$900(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1029
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_0

    .line 1031
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1032
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1035
    return v8

    .line 1052
    .end local v4    # "modeOwnerPid":I
    :cond_b
    const/16 v4, 0xa

    if-ne p1, v4, :cond_12

    .line 1053
    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v4

    if-eq v4, v3, :cond_11

    if-eq v4, v7, :cond_c

    .line 1088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: failed to disconnect in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1089
    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1088
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1091
    return v8

    .line 1055
    :cond_c
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_e

    .line 1056
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1057
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v6}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_1

    .line 1059
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1060
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1059
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1062
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1064
    return v8

    .line 1068
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_f

    .line 1069
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1070
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1072
    goto :goto_1

    .line 1074
    :cond_f
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1075
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v4

    .line 1074
    invoke-static {v1, v2, v4}, Lcom/android/server/audio/BtHelper;->access$1000(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1076
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v5}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_1

    .line 1078
    :cond_10
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1079
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1082
    goto :goto_1

    .line 1084
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$402(Lcom/android/server/audio/BtHelper;I)I

    .line 1085
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v8}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;I)V

    .line 1086
    goto :goto_1

    .line 1052
    :cond_12
    :goto_0
    nop

    .line 1094
    :goto_1
    return v3
.end method

.method private totalCount()I
    .locals 4

    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 956
    .local v2, "mScoClient":Lcom/android/server/audio/BtHelper$ScoClient;
    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 957
    .end local v2    # "mScoClient":Lcom/android/server/audio/BtHelper$ScoClient;
    goto :goto_0

    .line 959
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In totalCount(), count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postScoClientDied(Ljava/lang/Object;)V

    .line 860
    return-void
.end method

.method clearCount(Z)V
    .locals 5
    .param p1, "stopSco"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In clearCount(), stopSco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStartcount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 929
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 936
    if-eqz p1, :cond_1

    .line 937
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    .line 939
    :cond_1
    return-void
.end method

.method decCount()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In decCount(), mStartcount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    if-nez v0, :cond_0

    .line 903
    const-string v0, "ScoClient.decCount() already 0"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 905
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 906
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    :goto_0
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 914
    const-string v0, "Request sco disconnected with scoAudioMode(0) failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_2
    :goto_1
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method getCount()I
    .locals 1

    .line 942
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    return v0
.end method

.method getPid()I
    .locals 1

    .line 950
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    return v0
.end method

.method incCount(I)V
    .locals 4
    .param p1, "scoAudioMode"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In incCount(), mStartcount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request sco connected with scoAudioMode("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 872
    :cond_0
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    if-nez v0, :cond_1

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScoClient incCount() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 886
    const-string/jumbo v0, "mStartcount is 1, calling setBluetoothScoOn(true)in system context"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    const-string v1, "BtHelper.incCount"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    goto :goto_1

    .line 889
    :cond_2
    if-nez v0, :cond_3

    .line 890
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mStartcount:I

    .line 891
    const-string/jumbo v0, "mStartcount is 0, incrementing by 1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_3
    :goto_1
    return-void
.end method
