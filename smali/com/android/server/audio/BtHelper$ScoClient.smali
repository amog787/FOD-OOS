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

.field final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/BtHelper;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 926
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    .line 928
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    .line 929
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/BtHelper$ScoClient;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper$ScoClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 922
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    move-result v0

    return v0
.end method

.method private requestScoState(II)Z
    .locals 10
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    .line 967
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

    .line 970
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$200(Lcom/android/server/audio/BtHelper;)V

    .line 971
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, ", scoAudioMode="

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", num SCO clients="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 973
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return v3

    .line 976
    :cond_0
    const/16 v0, 0xc

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne p1, v0, :cond_c

    .line 979
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 982
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getModeOwnerPid()I

    move-result v0

    .line 983
    .local v0, "modeOwnerPid":I
    if-eqz v0, :cond_1

    iget v9, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    if-eq v0, v9, :cond_1

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: audio mode is not NORMAL and modeOwnerPid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != creatorPid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 987
    return v7

    .line 989
    :cond_1
    iget-object v9, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v9}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v9

    if-eqz v9, :cond_5

    if-eq v9, v6, :cond_4

    if-eq v9, v5, :cond_3

    if-eq v9, v4, :cond_2

    .line 1046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: failed to connect in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1047
    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1049
    return v7

    .line 1036
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 1037
    goto/16 :goto_0

    .line 1039
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v6}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 1040
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1041
    return v7

    .line 1043
    :cond_4
    const-string/jumbo v2, "requestScoState: already in ACTIVE mode, simply return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    goto/16 :goto_0

    .line 991
    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, p2}, Lcom/android/server/audio/BtHelper;->access$602(Lcom/android/server/audio/BtHelper;I)I

    .line 992
    const/4 v2, -0x1

    if-ne p2, v2, :cond_7

    .line 993
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, v7}, Lcom/android/server/audio/BtHelper;->access$602(Lcom/android/server/audio/BtHelper;I)I

    .line 994
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 995
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 996
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bluetooth_sco_channel_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 998
    invoke-static {v9}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 995
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/audio/BtHelper;->access$602(Lcom/android/server/audio/BtHelper;I)I

    .line 1000
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    if-gt v2, v8, :cond_6

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    if-gez v2, :cond_7

    .line 1001
    :cond_6
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2, v7}, Lcom/android/server/audio/BtHelper;->access$602(Lcom/android/server/audio/BtHelper;I)I

    .line 1005
    :cond_7
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1006
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$900(Lcom/android/server/audio/BtHelper;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1007
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v3}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_0

    .line 1009
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1010
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1013
    return v7

    .line 1017
    :cond_9
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_a

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1019
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1022
    return v7

    .line 1024
    :cond_a
    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1025
    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v5}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v5

    .line 1024
    invoke-static {v2, v4, v5}, Lcom/android/server/audio/BtHelper;->access$1000(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1026
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v6}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_0

    .line 1028
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1029
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1028
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1032
    return v7

    .line 1051
    .end local v0    # "modeOwnerPid":I
    :cond_c
    const/16 v0, 0xa

    if-ne p1, v0, :cond_13

    .line 1052
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v0

    if-eq v0, v3, :cond_12

    if-eq v0, v6, :cond_d

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState: failed to disconnect in state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1088
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1090
    return v7

    .line 1054
    :cond_d
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1055
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$900(Lcom/android/server/audio/BtHelper;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1056
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v5}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_1

    .line 1058
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1059
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 1061
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1063
    return v7

    .line 1067
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1068
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 1069
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1071
    goto :goto_1

    .line 1073
    :cond_10
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 1074
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    .line 1073
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/BtHelper;->access$1100(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1075
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v4}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_1

    .line 1077
    :cond_11
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 1078
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1081
    goto :goto_1

    .line 1083
    :cond_12
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 1084
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 1085
    goto :goto_1

    .line 1051
    :cond_13
    :goto_0
    nop

    .line 1093
    :goto_1
    return v3
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postScoClientDied(Ljava/lang/Object;)V

    .line 952
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method getPid()I
    .locals 1

    .line 959
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public registerDeathRecipient()V
    .locals 3

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScoClient could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method remove(ZZ)V
    .locals 2
    .param p1, "stop"    # Z
    .param p2, "unregister"    # Z

    .line 1098
    if-eqz p2, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper$ScoClient;->unregisterDeathRecipient()V

    .line 1101
    :cond_0
    if-eqz p1, :cond_1

    .line 1102
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1106
    return-void
.end method

.method public unregisterDeathRecipient()V
    .locals 3

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AS.BtHelper"

    const-string v2, "ScoClient could not not unregistered to binder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    return-void
.end method
