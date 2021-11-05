.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 8089
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 8089
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 8092
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8097
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 8098
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8101
    .local v1, "dockState":I
    if-eq v1, v4, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 8116
    const/4 v2, 0x0

    .local v2, "config":I
    goto :goto_0

    .line 8112
    .end local v2    # "config":I
    :cond_0
    const/16 v2, 0x9

    .line 8113
    .restart local v2    # "config":I
    goto :goto_0

    .line 8109
    .end local v2    # "config":I
    :cond_1
    const/16 v2, 0x8

    .line 8110
    .restart local v2    # "config":I
    goto :goto_0

    .line 8106
    .end local v2    # "config":I
    :cond_2
    const/4 v2, 0x6

    .line 8107
    .restart local v2    # "config":I
    goto :goto_0

    .line 8103
    .end local v2    # "config":I
    :cond_3
    const/4 v2, 0x7

    .line 8104
    .restart local v2    # "config":I
    nop

    .line 8120
    :goto_0
    if-eq v1, v3, :cond_5

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 8122
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$8600(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 8123
    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    const-string v5, "ACTION_DOCK_EVENT intent"

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 8126
    :cond_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$8602(Lcom/android/server/audio/AudioService;I)I

    .line 8127
    .end local v1    # "dockState":I
    .end local v2    # "config":I
    goto/16 :goto_5

    :cond_6
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 8128
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_4

    .line 8130
    :cond_7
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8131
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8132
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 8134
    :cond_8
    const-string/jumbo v1, "screen_state=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 8135
    :cond_9
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 8136
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8138
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 8140
    :cond_a
    const-string/jumbo v1, "screen_state=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 8141
    :cond_b
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8142
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 8143
    :cond_c
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 8144
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8147
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 8149
    :cond_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$8902(Lcom/android/server/audio/AudioService;Z)Z

    .line 8151
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 8154
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;Z)V

    .line 8156
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 8161
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v9, v1, v3

    const/4 v10, 0x0

    .line 8156
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_5

    .line 8162
    :cond_e
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "no_record_audio"

    const-string v5, "android.intent.extra.user_handle"

    const/4 v6, -0x1

    if-eqz v1, :cond_10

    .line 8164
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8165
    .local v1, "userId":I
    if-ltz v1, :cond_f

    .line 8167
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 8168
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v2}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 8170
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_f
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 8172
    .end local v1    # "userId":I
    goto/16 :goto_5

    :cond_10
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8174
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8175
    .restart local v1    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 8177
    .end local v1    # "userId":I
    goto/16 :goto_5

    :cond_11
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8178
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8179
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1b

    .line 8180
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->disconnectAllBluetoothProfiles()V

    goto/16 :goto_5

    .line 8182
    .end local v1    # "state":I
    :cond_12
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 8183
    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_3

    .line 8185
    :cond_13
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 8186
    const-string v1, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 8187
    .local v1, "suspendedUids":[I
    nop

    .line 8188
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8189
    .local v2, "suspendedPackages":[Ljava/lang/String;
    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    array-length v3, v2

    array-length v4, v1

    if-eq v3, v4, :cond_14

    goto :goto_2

    .line 8193
    :cond_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_16

    .line 8194
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 8195
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    aget-object v5, v2, v3

    aget v6, v1, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->noFocusForSuspendedApp(Ljava/lang/String;I)V

    .line 8193
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8199
    .end local v1    # "suspendedUids":[I
    .end local v2    # "suspendedPackages":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_16
    goto :goto_5

    .line 8191
    .restart local v1    # "suspendedUids":[I
    .restart local v2    # "suspendedPackages":[Ljava/lang/String;
    :cond_17
    :goto_2
    return-void

    .line 8201
    .end local v1    # "suspendedUids":[I
    .end local v2    # "suspendedPackages":[Ljava/lang/String;
    :cond_18
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 8202
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 8203
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 8204
    .local v3, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 8207
    new-array v5, v4, [I

    const/16 v6, 0xb2

    aput v6, v5, v2

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 8208
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 8209
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x29

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x2710

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8216
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$9402(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_5

    .line 8184
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_19
    :goto_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1, p2}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_5

    .line 8129
    :cond_1a
    :goto_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    .line 8224
    :cond_1b
    :goto_5
    return-void
.end method
