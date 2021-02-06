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

    .line 2961
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2962
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2963
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 20
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 2970
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

    .line 2971
    const-string/jumbo v2, "smtbrn"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    .line 2972
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2974
    .local v2, "smtbrn":I
    if-ne v2, v7, :cond_0

    .line 2975
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide v9, 0x3fecccccc0000000L    # 0.8999999761581421

    const/high16 v11, 0x42f00000    # 120.0f

    const v12, 0x3f7d70a4    # 0.99f

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DFFF)V

    goto :goto_0

    .line 2976
    :cond_0
    if-ne v2, v5, :cond_1

    .line 2977
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide v15, 0x3fe99999a0000000L    # 0.800000011920929

    const/high16 v17, 0x42f00000    # 120.0f

    const v18, 0x3f7d70a4    # 0.99f

    const/high16 v19, 0x42a00000    # 80.0f

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DFFF)V

    goto :goto_0

    .line 2978
    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 2979
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    const/high16 v8, 0x42f00000    # 120.0f

    const v9, 0x3f7d70a4    # 0.99f

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DFFF)V

    goto :goto_0

    .line 2981
    :cond_2
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/high16 v14, 0x42f00000    # 120.0f

    const v15, 0x3f7d70a4    # 0.99f

    const/high16 v16, 0x42a00000    # 80.0f

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DFFF)V

    .line 2982
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

    .line 2983
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2985
    .local v2, "gameModeStarted":I
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_close_automatic_brightness"

    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 2988
    .local v4, "disableAutoBrightness":I
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$3000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2989
    if-ne v2, v7, :cond_4

    if-ne v4, v7, :cond_4

    .line 2990
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$3000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2991
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$3000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/display/AutomaticBrightnessController;->blockLightSensorForGameMode(Z)V

    goto :goto_1

    .line 2994
    :cond_4
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$3000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/server/display/AutomaticBrightnessController;->blockLightSensorForGameMode(Z)V

    .line 2997
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

    if-eqz v4, :cond_8

    .line 2998
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v8, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_7

    goto :goto_2

    :cond_7
    move v7, v8

    :goto_2
    move v2, v7

    .line 3000
    .local v2, "darkThemeOn":Z
    invoke-static {v2}, Lcom/android/server/display/DisplayOLC;->enableDarkThemeLimit(Z)V

    .line 3001
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->onDarkModeChanged()V

    .line 3002
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4, v8}, Lcom/android/server/display/DisplayPowerController;->access$3100(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 3003
    .end local v2    # "darkThemeOn":Z
    goto :goto_4

    :cond_8
    const-string v2, "flashlight_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3004
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v8, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v7, :cond_9

    goto :goto_3

    :cond_9
    move v7, v8

    :goto_3
    invoke-static {v4, v7}, Lcom/android/server/display/DisplayPowerController;->access$3202(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 3006
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$500(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_4

    .line 3007
    :cond_a
    const-string v2, "fod_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3008
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_4

    .line 3010
    :cond_b
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2, v8}, Lcom/android/server/display/DisplayPowerController;->access$3100(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 3013
    :goto_4
    return-void
.end method
