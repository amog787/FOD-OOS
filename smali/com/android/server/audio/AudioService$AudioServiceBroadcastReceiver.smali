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

    .line 8124
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 8124
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 8127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 8132
    .local v3, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 8133
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8136
    .local v4, "dockState":I
    if-eq v4, v7, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    if-eq v4, v6, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 8151
    const/4 v5, 0x0

    .local v5, "config":I
    goto :goto_0

    .line 8147
    .end local v5    # "config":I
    :cond_0
    const/16 v5, 0x9

    .line 8148
    .restart local v5    # "config":I
    goto :goto_0

    .line 8144
    .end local v5    # "config":I
    :cond_1
    const/16 v5, 0x8

    .line 8145
    .restart local v5    # "config":I
    goto :goto_0

    .line 8141
    .end local v5    # "config":I
    :cond_2
    const/4 v5, 0x6

    .line 8142
    .restart local v5    # "config":I
    goto :goto_0

    .line 8138
    .end local v5    # "config":I
    :cond_3
    const/4 v5, 0x7

    .line 8139
    .restart local v5    # "config":I
    nop

    .line 8155
    :goto_0
    if-eq v4, v6, :cond_5

    if-nez v4, :cond_4

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 8157
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-eq v7, v6, :cond_5

    .line 8158
    :cond_4
    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v7

    const-string v8, "ACTION_DOCK_EVENT intent"

    invoke-virtual {v7, v6, v5, v8}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 8161
    :cond_5
    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v4}, Lcom/android/server/audio/AudioService;->access$8702(Lcom/android/server/audio/AudioService;I)I

    .line 8162
    .end local v4    # "dockState":I
    .end local v5    # "config":I
    goto/16 :goto_5

    :cond_6
    const-string v4, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 8163
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_4

    .line 8165
    :cond_7
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 8166
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 8167
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 8169
    :cond_8
    const-string/jumbo v4, "screen_state=on"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 8170
    :cond_9
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 8171
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 8173
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 8175
    :cond_a
    const-string/jumbo v4, "screen_state=off"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 8176
    :cond_b
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 8177
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 8178
    :cond_c
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 8179
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 8182
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 8184
    :cond_d
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v7}, Lcom/android/server/audio/AudioService;->access$9002(Lcom/android/server/audio/AudioService;Z)Z

    .line 8186
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 8189
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v7}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;Z)V

    .line 8191
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 8196
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v12, v4, v6

    const/4 v13, 0x0

    .line 8191
    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_5

    .line 8197
    :cond_e
    const-string v4, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v8, "no_record_audio"

    const-string v9, "android.intent.extra.user_handle"

    const/4 v10, -0x1

    if-eqz v4, :cond_10

    .line 8199
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8200
    .local v4, "userId":I
    if-ltz v4, :cond_f

    .line 8202
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 8203
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 8205
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_f
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v8, v7, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 8207
    .end local v4    # "userId":I
    goto/16 :goto_5

    :cond_10
    const-string v4, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 8209
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8210
    .restart local v4    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v8, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 8212
    .end local v4    # "userId":I
    goto/16 :goto_5

    :cond_11
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 8213
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8214
    .local v4, "state":I
    const/16 v5, 0xa

    if-ne v4, v5, :cond_1c

    .line 8215
    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->disconnectAllBluetoothProfiles()V

    goto/16 :goto_5

    .line 8217
    .end local v4    # "state":I
    :cond_12
    const-string v4, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 8218
    const-string v4, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_3

    .line 8220
    :cond_13
    const-string v4, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 8221
    const-string v4, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 8222
    .local v4, "suspendedUids":[I
    nop

    .line 8223
    const-string v5, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 8224
    .local v5, "suspendedPackages":[Ljava/lang/String;
    if-eqz v5, :cond_17

    if-eqz v4, :cond_17

    array-length v6, v5

    array-length v7, v4

    if-eq v6, v7, :cond_14

    goto :goto_2

    .line 8228
    :cond_14
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_16

    .line 8229
    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 8230
    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v7

    aget-object v8, v5, v6

    aget v9, v4, v6

    invoke-virtual {v7, v8, v9}, Lcom/android/server/audio/MediaFocusControl;->noFocusForSuspendedApp(Ljava/lang/String;I)V

    .line 8228
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8234
    .end local v4    # "suspendedUids":[I
    .end local v5    # "suspendedPackages":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_16
    goto/16 :goto_5

    .line 8226
    .restart local v4    # "suspendedUids":[I
    .restart local v5    # "suspendedPackages":[Ljava/lang/String;
    :cond_17
    :goto_2
    return-void

    .line 8236
    .end local v4    # "suspendedUids":[I
    .end local v5    # "suspendedPackages":[Ljava/lang/String;
    :cond_18
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 8237
    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 8238
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 8239
    .local v8, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 8242
    new-array v9, v7, [I

    const/16 v10, 0xb2

    aput v10, v9, v5

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    const-string v10, "AS.AudioService"

    if-eqz v9, :cond_19

    .line 8243
    iget-object v9, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "send_widevine_level_mdm"

    invoke-static {v9, v11, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_19

    .line 8244
    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x28

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1388

    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8251
    const-string v6, "Report Widevine key level"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8258
    :cond_19
    new-array v6, v7, [I

    const/16 v9, 0x144

    aput v9, v6, v5

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 8259
    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 8260
    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x29

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2710

    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8267
    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v7}, Lcom/android/server/audio/AudioService;->access$9502(Lcom/android/server/audio/AudioService;I)I

    .line 8268
    const-string v5, "Do Widevine keybox provsion through OTA"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8219
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v8    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_1a
    :goto_3
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v1, v2}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_5

    .line 8164
    :cond_1b
    :goto_4
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    .line 8276
    :cond_1c
    :goto_5
    return-void
.end method
