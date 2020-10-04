.class Lcom/android/server/display/color/ColorDisplayService$2;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 329
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 332
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 334
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "setting":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    .line 336
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v2, "oneplus_dc_dimming_value"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v2, "temp_disable_scene_screen_effect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "display_color_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v2, "oem_nightmode_progress_status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "display_white_balance_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "op_gamut_mapping_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_7
    const-string/jumbo v2, "night_display_activated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_8
    const-string v2, "accessibility_display_daltonizer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "accessibility_display_inversion_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_a
    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_b
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_c
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_d
    const-string/jumbo v2, "night_display_auto_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_e
    const-string/jumbo v2, "oem_nightmode_brightness_progress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xd

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 410
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->updateReadModeStatusForApp()V

    goto/16 :goto_2

    .line 406
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v1, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setNightBrightness()V

    .line 407
    goto/16 :goto_2

    .line 403
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v1, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setColorTemperature()V

    .line 404
    goto/16 :goto_2

    .line 399
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v1, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->onDCEnable()V

    .line 400
    goto/16 :goto_2

    .line 393
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->updateColorGamutMode()V

    .line 394
    goto/16 :goto_2

    .line 388
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 389
    goto/16 :goto_2

    .line 385
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1900(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 386
    goto/16 :goto_2

    .line 379
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->updateNightStatusForInvAndDalAndGray()V

    .line 381
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1900(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 382
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1800(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 383
    goto/16 :goto_2

    .line 371
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->updateNightStatusForInvAndDalAndGray()V

    .line 373
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1700(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 374
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1800(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 375
    goto/16 :goto_2

    .line 366
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1500(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1600(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 367
    goto/16 :goto_2

    .line 362
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 363
    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    .line 362
    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1400(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    .line 364
    goto :goto_2

    .line 358
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 359
    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    .line 358
    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1200(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    .line 360
    goto :goto_2

    .line 355
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$900(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1000(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 356
    goto :goto_2

    .line 346
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v1

    .line 348
    .local v1, "temperature":I
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 350
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    .line 351
    invoke-virtual {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onColorTemperatureChanged(I)V

    goto :goto_2

    .line 338
    .end local v1    # "temperature":I
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v1

    .line 340
    .local v1, "activated":Z
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 341
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2

    if-eq v2, v1, :cond_3

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 415
    .end local v1    # "activated":Z
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b8b0f11 -> :sswitch_e
        -0x797bb571 -> :sswitch_d
        -0x6900ebe5 -> :sswitch_c
        -0x39c8c50c -> :sswitch_b
        -0x28f198ce -> :sswitch_a
        -0x20db1ad9 -> :sswitch_9
        0x1ccf6530 -> :sswitch_8
        0x2fb0ca2d -> :sswitch_7
        0x38c293ff -> :sswitch_6
        0x425e310b -> :sswitch_5
        0x482cf6d8 -> :sswitch_4
        0x5d15789c -> :sswitch_3
        0x5e128274 -> :sswitch_2
        0x77e1d08f -> :sswitch_1
        0x7d72bd2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
