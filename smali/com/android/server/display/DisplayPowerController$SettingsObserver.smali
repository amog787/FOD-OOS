.class final Lcom/android/server/display/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3125
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3126
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3127
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 17
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 3134
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " selfChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DisplayPowerController"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    const-string/jumbo v2, "smtbrn"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 3136
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 3138
    .local v2, "smtbrn":I
    if-ne v2, v6, :cond_0

    .line 3139
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide v8, 0x3fecccccc0000000L    # 0.8999999761581421

    const/high16 v10, 0x42f00000    # 120.0f

    const v11, 0x3f7d70a4    # 0.99f

    const/high16 v12, 0x42a00000    # 80.0f

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DFFF)V

    goto :goto_0

    .line 3140
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 3141
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    const/high16 v8, 0x42f00000    # 120.0f

    const v9, 0x3f7d70a4    # 0.99f

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DFFF)V

    goto :goto_0

    .line 3142
    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 3143
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    const/high16 v8, 0x42f00000    # 120.0f

    const v9, 0x3f7d70a4    # 0.99f

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DFFF)V

    goto :goto_0

    .line 3145
    :cond_2
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/high16 v14, 0x42f00000    # 120.0f

    const v15, 0x3f7d70a4    # 0.99f

    const/high16 v16, 0x42a00000    # 80.0f

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DFFF)V

    .line 3146
    .end local v2    # "smtbrn":I
    :goto_0
    goto/16 :goto_4

    :cond_3
    const-string v2, "game_mode_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3147
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 3149
    .local v2, "gameModeStarted":I
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "game_mode_close_automatic_brightness"

    invoke-static {v4, v8, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 3152
    .local v4, "disableAutoBrightness":I
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$3400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3153
    if-ne v2, v6, :cond_4

    if-ne v4, v6, :cond_4

    .line 3154
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$3400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3155
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$3400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->blockLightSensorForGameMode(Z)V

    goto :goto_1

    .line 3158
    :cond_4
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$3400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/display/AutomaticBrightnessController;->blockLightSensorForGameMode(Z)V

    .line 3161
    .end local v2    # "gameModeStarted":I
    .end local v4    # "disableAutoBrightness":I
    :cond_5
    :goto_1
    goto/16 :goto_4

    :cond_6
    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3162
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v7, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v6, :cond_7

    goto :goto_2

    :cond_7
    move v6, v7

    :goto_2
    move v2, v6

    .line 3164
    .local v2, "darkThemeOn":Z
    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "msmnile"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3165
    invoke-static {v2}, Lcom/android/server/display/DisplayOLC;->enableDarkThemeLimit(Z)V

    .line 3167
    :cond_8
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->onDarkModeChanged()V

    .line 3168
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4, v7}, Lcom/android/server/display/DisplayPowerController;->access$3500(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 3169
    .end local v2    # "darkThemeOn":Z
    goto/16 :goto_4

    :cond_9
    const-string v2, "flashlight_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3170
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v2, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v6, :cond_a

    goto :goto_3

    :cond_a
    move v6, v7

    :goto_3
    invoke-static {v4, v6}, Lcom/android/server/display/DisplayPowerController;->access$3602(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 3172
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$500(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_4

    .line 3173
    :cond_b
    const-string v2, "fod_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3174
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_4

    .line 3177
    :cond_c
    const-string v2, "aod_nits_flag"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3178
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$3700()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3179
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 3181
    .local v2, "aod_nits":I
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$3800(Lcom/android/server/display/DisplayPowerController;)I

    move-result v4

    if-eq v2, v4, :cond_d

    .line 3182
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4, v2}, Lcom/android/server/display/DisplayPowerController;->access$3802(Lcom/android/server/display/DisplayPowerController;I)I

    .line 3183
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 3186
    .end local v2    # "aod_nits":I
    :cond_d
    goto :goto_4

    .line 3187
    :cond_e
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2, v7}, Lcom/android/server/display/DisplayPowerController;->access$3500(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 3190
    :goto_4
    return-void
.end method
