.class Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 678
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 679
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 680
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 685
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "option":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    .line 687
    .local v1, "enabled":Z
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "hdmi_control_volume_control_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_1
    const-string v3, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "mhl_power_charge_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "mhl_input_switching_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v3, "hdmi_system_audio_control_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v3, "device_name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_7
    const-string v3, "hdmi_cec_switch_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_8
    const-string v3, "hdmi_control_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v4, "HdmiControlService"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 739
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "deviceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 736
    .end local v2    # "deviceName":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v2

    const/16 v3, 0x66

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$900(Z)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 737
    goto/16 :goto_3

    .line 733
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setMhlInputChangeEnabled(Z)V

    .line 734
    goto/16 :goto_3

    .line 723
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 724
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 725
    const-string v2, "Switch device has not registered yet. Can\'t turn routing on."

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    goto/16 :goto_3

    .line 729
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingControlFeatureEnables(Z)V

    goto/16 :goto_3

    .line 710
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 711
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioControlFeatureEnabled(Z)V

    .line 713
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 714
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v2

    if-nez v2, :cond_3

    .line 715
    const-string v2, "Audio System device has not registered yet. Can\'t turn system audio mode on."

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    goto :goto_3

    .line 719
    :cond_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->onSystemAduioControlFeatureSupportChanged(Z)V

    goto :goto_3

    .line 701
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$700(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 702
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$800(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v4

    .line 703
    .local v4, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-eqz v4, :cond_4

    .line 704
    invoke-virtual {v4, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setAutoDeviceOff(Z)V

    .line 706
    .end local v3    # "type":I
    .end local v4    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_4
    goto :goto_2

    .line 708
    :cond_5
    goto :goto_3

    .line 695
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 696
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAutoWakeup(Z)V

    .line 698
    :cond_6
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setCecOption(IZ)V

    .line 699
    goto :goto_3

    .line 692
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabled(Z)V

    .line 693
    goto :goto_3

    .line 689
    :pswitch_8
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(Z)V

    .line 690
    nop

    .line 743
    :cond_7
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77ca2448 -> :sswitch_8
        -0x5dc26305 -> :sswitch_7
        -0x5bf9652c -> :sswitch_6
        -0x58c072d3 -> :sswitch_5
        -0x4b40ad13 -> :sswitch_4
        -0x34cb9782 -> :sswitch_3
        0x2b4f3cc8 -> :sswitch_2
        0x610a030f -> :sswitch_1
        0x7b9a85e3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
