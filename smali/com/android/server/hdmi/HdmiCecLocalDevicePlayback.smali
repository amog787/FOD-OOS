.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.super Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.source "HdmiCecLocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;,
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    }
.end annotation


# static fields
.field private static final SET_MENU_LANGUAGE:Z

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevicePlayback"


# instance fields
.field private mAutoTvOff:Z

.field private mLocalActivePath:I

.field protected mPlaybackDeviceActionOnRoutingControl:Ljava/lang/String;

.field protected mPowerStateChangeOnActiveSourceLost:Ljava/lang/String;

.field private mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Landroid/sysprop/HdmiProperties;->set_menu_language()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->SET_MENU_LANGUAGE:Z

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 75
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    .line 77
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string v2, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    .line 81
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    .line 83
    const-string/jumbo v0, "ro.hdmi.cec.source.playback_device_action_on_routing_control"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPlaybackDeviceActionOnRoutingControl:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "ro.hdmi.cec.source.power_state_change_on_active_source_lost"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPowerStateChangeOnActiveSourceLost:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 226
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    if-nez v0, :cond_1

    .line 227
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.hdmi.keep_awake"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    goto :goto_0

    .line 232
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 240
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No wakelock is used to keep the display on."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    return-object v0
.end method

.method private routeToPort(I)V
    .locals 0
    .param p1, "portId"    # I

    .line 428
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    .line 429
    return-void
.end method


# virtual methods
.method protected canGoToStandby()Z
    .locals 1

    .line 248
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->isHeld()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 0
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 420
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->checkIfPendingActionsCleared()V

    .line 424
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 438
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutoTvOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method protected findAudioReceiverAddress()I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x5

    return v0

    .line 414
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected findKeyReceiverAddress()I
    .locals 1

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method protected getLocalActivePath()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    return v0
.end method

.method protected getPreferredAddress()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 131
    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 254
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 255
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 256
    return v1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPowerStateChangeOnActiveSourceLost:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x434d11bc

    if-eq v3, v4, :cond_3

    const v4, 0x33af38

    if-eq v3, v4, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "standby_now"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid property \'ro.hdmi.cec.source.power_state_change_on_active_source_lost\' value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPowerStateChangeOnActiveSourceLost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HdmiCecLocalDevicePlayback"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v1

    .line 263
    :cond_4
    return v1

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 261
    return v1
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 366
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 367
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 368
    .local v0, "physicalAddress":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 369
    const/4 v1, 0x1

    return v1
.end method

.method protected handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6
    .param p1, "physicalAddress"    # I
    .param p2, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 383
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPlaybackDeviceActionOnRoutingControl:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x33af38

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0x94295ae

    if-eq v2, v3, :cond_3

    const v3, 0x16440735

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "wake_up_only"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "wake_up_and_send_active_source"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid property \'ro.hdmi.cec.source.playback_device_action_on_routing_control\' value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPlaybackDeviceActionOnRoutingControl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecLocalDevicePlayback"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 394
    :cond_5
    goto :goto_1

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 392
    goto :goto_1

    .line 388
    :cond_7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 389
    nop

    .line 402
    :goto_1
    return-void
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 376
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 377
    .local v0, "physicalAddress":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 378
    const/4 v1, 0x1

    return v1
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 294
    const-string v0, "HdmiCecLocalDevicePlayback"

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 295
    sget-boolean v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->SET_MENU_LANGUAGE:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 296
    return v2

    .line 300
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "US-ASCII"

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 301
    .local v1, "iso3Language":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 302
    .local v3, "currentLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 306
    return v5

    .line 311
    :cond_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 312
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 311
    invoke-static {v4, v2}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 313
    .local v4, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 314
    .local v7, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 320
    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 321
    return v5

    .line 323
    .end local v7    # "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_2
    goto :goto_0

    .line 324
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t handle <Set Menu Language> of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    return v2

    .line 326
    .end local v1    # "iso3Language":Ljava/lang/String;
    .end local v3    # "currentLocale":Ljava/util/Locale;
    .end local v4    # "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "Can\'t handle <Set Menu Language>"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    return v2
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 337
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    .line 338
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 339
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 343
    .local v0, "setSystemAudioModeOn":Z
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 346
    :cond_1
    return v1

    .line 340
    .end local v0    # "setSystemAudioModeOn":Z
    :cond_2
    :goto_0
    return v1
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 353
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    if-ne v0, v1, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 355
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 356
    .local v0, "setSystemAudioModeOn":Z
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 360
    .end local v0    # "setSystemAudioModeOn":Z
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 276
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    .line 277
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method protected onAddressAllocated(II)V
    .locals 4
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 96
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-nez p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v2

    const/16 v3, 0xf

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(III)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 101
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDeviceType:I

    .line 100
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 103
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v2

    .line 102
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->buildAndSendSetOsdName(I)V

    .line 108
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startQueuedActions()V

    .line 125
    return-void
.end method

.method onHotplug(IZ)V
    .locals 1
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 166
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    .line 168
    if-nez p2, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 171
    :cond_0
    return-void
.end method

.method protected onStandby(ZI)V
    .locals 4
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 177
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 182
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    .line 181
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    .line 187
    .local v0, "wasActiveSource":Z
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, -0x1

    const v3, 0xffff

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(II)V

    .line 188
    if-nez p1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/16 v3, 0xf

    .line 199
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v3, 0x0

    .line 194
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 195
    nop

    .line 202
    :goto_0
    return-void

    .line 189
    :cond_5
    :goto_1
    return-void
.end method

.method queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 146
    const-class v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/DevicePowerStatusAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiCecLocalDevicePlayback"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 148
    const-string/jumbo v1, "queryDisplayStatus already in progress"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-static {p0, v3, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;

    move-result-object v1

    .line 154
    .local v1, "action":Lcom/android/server/hdmi/DevicePowerStatusAction;
    if-nez v1, :cond_1

    .line 155
    const-string v3, "Cannot initiate queryDisplayStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v2, 0x5

    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 157
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 160
    return-void
.end method

.method setAutoDeviceOff(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 208
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    .line 209
    return-void
.end method

.method setIsActiveSource(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 215
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->acquire()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 221
    :goto_0
    return-void
.end method

.method protected setPreferredAddress(I)V
    .locals 3
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 139
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string/jumbo v2, "persist.sys.hdmi.addr.playback"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected wakeUpIfActiveSource()V
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 290
    :cond_2
    return-void
.end method
