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

.field private static final WAKE_ON_HOTPLUG:Z


# instance fields
.field private mAutoTvOff:Z

.field private mLocalActivePath:I

.field private mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    nop

    .line 47
    const-string/jumbo v0, "ro.hdmi.wake_on_hotplug"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->WAKE_ON_HOTPLUG:Z

    .line 49
    nop

    .line 50
    const-string/jumbo v0, "ro.hdmi.set_menu_language"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->SET_MENU_LANGUAGE:Z

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 69
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    .line 71
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string v2, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    .line 75
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method private getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 200
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.hdmi.keep_awake"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No wakelock is used to keep the display on."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    return-object v0
.end method

.method private routeToPort(I)V
    .locals 0
    .param p1, "portId"    # I

    .line 355
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    .line 356
    return-void
.end method


# virtual methods
.method protected canGoToStandby()Z
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->isHeld()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 342
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 345
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 347
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    .line 346
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 349
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setIsActiveSource(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->checkIfPendingActionsCleared()V

    .line 351
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 365
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutoTvOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method protected findAudioReceiverAddress()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x5

    return v0

    .line 336
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected findKeyReceiverAddress()I
    .locals 1

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method protected getLocalActivePath()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 360
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    return v0
.end method

.method protected getPreferredAddress()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 113
    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 257
    const-string v0, "HdmiCecLocalDevicePlayback"

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 258
    sget-boolean v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->SET_MENU_LANGUAGE:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 259
    return v2

    .line 263
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "US-ASCII"

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 264
    .local v1, "iso3Language":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 265
    .local v3, "currentLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 269
    return v5

    .line 274
    :cond_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 275
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 274
    invoke-static {v4, v2}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 276
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

    .line 277
    .local v7, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 283
    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 284
    return v5

    .line 286
    .end local v7    # "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_2
    goto :goto_0

    .line 287
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

    .line 288
    return v2

    .line 289
    .end local v1    # "iso3Language":Ljava/lang/String;
    .end local v3    # "currentLocale":Ljava/util/Locale;
    .end local v4    # "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "Can\'t handle <Set Menu Language>"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    return v2
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 300
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    .line 301
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 302
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 306
    .local v0, "setSystemAudioModeOn":Z
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 309
    :cond_1
    return v1

    .line 303
    .end local v0    # "setSystemAudioModeOn":Z
    :cond_2
    :goto_0
    return v1
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 316
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    if-ne v0, v1, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 318
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 319
    .local v0, "setSystemAudioModeOn":Z
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 323
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

    .line 227
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    .line 229
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method protected maySendActiveSource(I)V
    .locals 3
    .param p1, "dest"    # I

    .line 246
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 248
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    .line 247
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 253
    :cond_0
    return-void
.end method

.method protected onAddressAllocated(II)V
    .locals 4
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 82
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-nez p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v2

    const/16 v3, 0xf

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(III)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 87
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDeviceType:I

    .line 86
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 89
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v2

    .line 88
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startQueuedActions()V

    .line 107
    return-void
.end method

.method onHotplug(IZ)V
    .locals 1
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 148
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    .line 150
    sget-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->WAKE_ON_HOTPLUG:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 153
    :cond_0
    if-nez p2, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 156
    :cond_1
    return-void
.end method

.method protected onStandby(ZI)V
    .locals 3
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 162
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/16 v2, 0xf

    .line 173
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v2, 0x0

    .line 168
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 169
    nop

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_3
    :goto_1
    return-void
.end method

.method queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 128
    const-class v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/DevicePowerStatusAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiCecLocalDevicePlayback"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 130
    const-string/jumbo v1, "queryDisplayStatus already in progress"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 132
    return-void

    .line 134
    :cond_0
    invoke-static {p0, v3, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;

    move-result-object v1

    .line 136
    .local v1, "action":Lcom/android/server/hdmi/DevicePowerStatusAction;
    if-nez v1, :cond_1

    .line 137
    const-string v3, "Cannot initiate queryDisplayStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v2, 0x5

    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 139
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 142
    return-void
.end method

.method setAutoDeviceOff(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 182
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    .line 183
    return-void
.end method

.method setIsActiveSource(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 189
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->acquire()V

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 195
    :goto_0
    return-void
.end method

.method protected setPreferredAddress(I)V
    .locals 3
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 121
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string/jumbo v2, "persist.sys.hdmi.addr.playback"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected wakeUpIfActiveSource()V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 239
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

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 242
    :cond_2
    return-void
.end method
