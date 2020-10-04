.class abstract Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UsbHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;
    }
.end annotation


# static fields
.field protected static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"


# instance fields
.field private mAdbNotificationShown:Z

.field private mAudioAccessoryConnected:Z

.field private mAudioAccessorySupported:Z

.field private mAudioSourceEnabled:Z

.field protected mBootCompleted:Z

.field private mBroadcastedIntent:Landroid/content/Intent;

.field private mConfigured:Z

.field private mConnected:Z

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field protected mCurrentFunctions:J

.field protected mCurrentFunctionsApplied:Z

.field protected mCurrentUsbFunctionsReceived:Z

.field protected mCurrentUser:I

.field private mHideUsbNotification:Z

.field private mHostConnected:Z

.field private mMidiCard:I

.field private mMidiDevice:I

.field private mMidiEnabled:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingBootBroadcast:Z

.field private mScreenLocked:Z

.field protected mScreenUnlockedFunctions:J

.field protected mSettings:Landroid/content/SharedPreferences;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mSinkPower:Z

.field private mSourcePower:Z

.field private mSupportsAllCombinations:Z

.field private mSystemReady:Z

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbCharging:Z

.field protected final mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mUsbNotificationId:I

.field protected mUseUsbNotification:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deviceManager"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p4, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p5, "settingsManager"    # Lcom/android/server/usb/UsbSettingsManager;

    .line 497
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 499
    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 500
    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 501
    iput-object p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 502
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 504
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 507
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    .line 508
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 509
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Couldn\'t load shared preferences"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 513
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string/jumbo v5, "usb-screen-unlocked-config-%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 512
    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 519
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    .line 521
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 523
    .local v3, "primary":Landroid/os/storage/StorageVolume;
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v2

    .line 524
    .local v4, "massStorageSupported":Z
    :goto_2
    if-nez v4, :cond_3

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11100e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    .line 526
    return-void
.end method

.method private dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "functions"    # J

    .line 1275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3f

    if-ge v0, v1, :cond_2

    .line 1276
    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    and-long/2addr v3, p5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1277
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1278
    shl-long v8, v1, v0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    goto :goto_1

    .line 1280
    :cond_0
    shl-long/2addr v1, v0

    invoke-static {v1, v2}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 1276
    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 1275
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 1284
    .end local v0    # "i":I
    return-void
.end method

.method private isTv()Z
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUsbStateChanged(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 684
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 685
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 686
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 687
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 688
    return v2

    .line 690
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 692
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 693
    return v2

    .line 695
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 696
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 697
    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eq v5, v6, :cond_4

    .line 698
    return v2

    .line 700
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 702
    :cond_5
    :goto_2
    return v3
.end method

.method private notifyAccessoryModeExit()V
    .locals 3

    .line 665
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 668
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_1

    .line 669
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V

    .line 672
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 674
    :cond_1
    return-void
.end method

.method private setAdbEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 606
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdbEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string/jumbo v0, "persist.sys.usb.config"

    if-eqz p1, :cond_0

    .line 609
    const-string v1, "adb"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :goto_0
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 616
    return-void
.end method

.method private setScreenUnlockedFunctions()V
    .locals 3

    .line 770
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 771
    return-void
.end method

.method private updateCurrentAccessory()V
    .locals 13

    .line 626
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    .line 628
    .local v0, "enteringAccessoryMode":Z
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 630
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->getAccessoryStrings()[Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "accessoryStrings":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 632
    new-instance v2, Lcom/android/server/usb/UsbSerialReader;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V

    .line 635
    .local v2, "serialReader":Lcom/android/server/usb/UsbSerialReader;
    new-instance v3, Landroid/hardware/usb/UsbAccessory;

    const/4 v4, 0x0

    aget-object v7, v1, v4

    const/4 v4, 0x1

    aget-object v8, v1, v4

    const/4 v4, 0x2

    aget-object v9, v1, v4

    const/4 v4, 0x3

    aget-object v10, v1, v4

    const/4 v4, 0x4

    aget-object v11, v1, v4

    move-object v6, v3

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 643
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 645
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entering USB accessory mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v3, :cond_0

    .line 648
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 650
    .end local v2    # "serialReader":Lcom/android/server/usb/UsbSerialReader;
    :cond_0
    goto :goto_0

    .line 651
    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nativeGetAccessoryStrings failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v1    # "accessoryStrings":[Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 654
    :cond_2
    if-nez v0, :cond_3

    .line 655
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto :goto_1

    .line 657
    :cond_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Debouncing accessory mode exit"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_1
    return-void
.end method

.method private updateMidiFunction()V
    .locals 7

    .line 746
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 747
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eq v0, v3, :cond_3

    .line 748
    if-eqz v0, :cond_2

    .line 749
    const/4 v3, 0x0

    .line 751
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 752
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 753
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 754
    :catch_0
    move-exception v4

    .line 755
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "could not open MIDI file"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    const/4 v0, 0x0

    .line 758
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_2

    .line 759
    :goto_1
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    goto :goto_3

    .line 758
    :goto_2
    if-eqz v3, :cond_1

    .line 759
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_1
    throw v1

    .line 763
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_2
    :goto_3
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    .line 765
    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    .line 767
    return-void
.end method

.method private updateUsbFunctions()V
    .locals 0

    .line 742
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    .line 743
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 12
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 1287
    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1289
    .local v10, "token":J
    iget-wide v6, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-string v3, "current_functions"

    const-wide v4, 0x20e00000001L

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 1291
    iget-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    const-string v1, "current_functions_applied"

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1293
    iget-wide v6, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string/jumbo v3, "screen_unlocked_functions"

    const-wide v4, 0x20e00000003L

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 1295
    iget-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-string/jumbo v1, "screen_locked"

    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1296
    iget-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v1, "connected"

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1297
    iget-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v1, "configured"

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1298
    iget-object v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_0

    .line 1299
    const-wide v1, 0x10b00000007L

    const-string v3, "current_accessory"

    invoke-static {p1, v3, v1, v2, v0}, Lcom/android/internal/usb/DumpUtils;->writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V

    .line 1302
    :cond_0
    const-wide v0, 0x10800000008L

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v3, "host_connected"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1303
    const-wide v0, 0x10800000009L

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    const-string/jumbo v3, "source_power"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1304
    const-wide v0, 0x1080000000aL

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    const-string/jumbo v3, "sink_power"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1305
    const-wide v0, 0x1080000000bL

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    const-string/jumbo v3, "usb_charging"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1306
    const-wide v0, 0x1080000000cL

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v3, "hide_usb_notification"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1308
    const-wide v0, 0x1080000000dL

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const-string v3, "audio_accessory_connected"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1312
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "kernel_state"

    const-wide v3, 0x1090000000fL

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/state"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1313
    invoke-static {v5, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1312
    invoke-static {p1, v0, v3, v4, v5}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    goto :goto_0

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not read kernel state"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    const-string/jumbo v0, "kernel_function_list"

    const-wide v3, 0x10900000010L

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/functions"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1321
    invoke-static {v5, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-static {p1, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1324
    goto :goto_1

    .line 1322
    :catch_1
    move-exception v0

    .line 1323
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not read kernel function list"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p1, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1327
    return-void
.end method

.method protected finishBoot()V
    .locals 6

    .line 1007
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    if-eqz v0, :cond_3

    .line 1008
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1009
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1010
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1012
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 1014
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_0

    .line 1016
    :cond_1
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 1018
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1022
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1023
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 1024
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    .line 1026
    :cond_3
    return-void
.end method

.method getAppliedFunctions(J)J
    .locals 2
    .param p1, "functions"    # J

    .line 791
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getChargingFunctions()J

    move-result-wide v0

    return-wide v0

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    const-wide/16 v0, 0x1

    or-long/2addr v0, p1

    return-wide v0

    .line 797
    :cond_1
    return-wide p1
.end method

.method protected getChargingFunctions()J
    .locals 2

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    const-wide/16 v0, 0x1

    return-wide v0

    .line 1244
    :cond_0
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public getEnabledFunctions()J
    .locals 2

    .line 1261
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    return-wide v0
.end method

.method protected getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 677
    new-instance v0, Ljava/io/File;

    .line 678
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "UsbDeviceManagerPrefs.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 679
    .local v0, "prefsFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 680
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 679
    return-object v1
.end method

.method public getScreenUnlockedFunctions()J
    .locals 2

    .line 1265
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    return-wide v0
.end method

.method protected getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 1253
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 802
    iget v0, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, "usb-screen-unlocked-config-%d"

    const-wide/16 v2, 0x2

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_11

    .line 924
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-ne v0, v1, :cond_1

    .line 925
    goto/16 :goto_11

    .line 927
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_2

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 928
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-nez v0, :cond_3

    .line 929
    goto/16 :goto_11

    .line 931
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-eqz v0, :cond_4

    .line 932
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_1f

    .line 933
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_11

    .line 936
    :cond_4
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1f

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_1f

    .line 939
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_11

    .line 910
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 911
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    .line 912
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 913
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 914
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 913
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 915
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 916
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 918
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_1f

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1f

    .line 920
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_11

    .line 970
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 971
    invoke-virtual {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 972
    goto/16 :goto_11

    .line 871
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    .line 872
    .local v0, "devices":Ljava/util/Iterator;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v8, :cond_6

    move v1, v8

    goto :goto_2

    :cond_6
    move v1, v7

    .line 875
    .local v1, "connected":Z
    :goto_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOST_STATE connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 879
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 880
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 882
    .local v2, "pair":Ljava/util/Map$Entry;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 885
    .local v3, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v4

    sub-int/2addr v4, v8

    .line 886
    .local v4, "configurationCount":I
    :goto_4
    if-ltz v4, :cond_9

    .line 887
    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v5

    .line 888
    .local v5, "config":Landroid/hardware/usb/UsbConfiguration;
    add-int/lit8 v4, v4, -0x1

    .line 889
    invoke-virtual {v5}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v6

    sub-int/2addr v6, v8

    .line 890
    .local v6, "interfaceCount":I
    :goto_5
    if-ltz v6, :cond_8

    .line 891
    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v9

    .line 892
    .local v9, "intrface":Landroid/hardware/usb/UsbInterface;
    add-int/lit8 v6, v6, -0x1

    .line 893
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 894
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 895
    goto :goto_6

    .line 897
    .end local v9    # "intrface":Landroid/hardware/usb/UsbInterface;
    :cond_7
    goto :goto_5

    .line 898
    .end local v5    # "config":Landroid/hardware/usb/UsbConfiguration;
    .end local v6    # "interfaceCount":I
    :cond_8
    :goto_6
    goto :goto_4

    .line 899
    .end local v2    # "pair":Ljava/util/Map$Entry;
    .end local v3    # "device":Landroid/hardware/usb/UsbDevice;
    .end local v4    # "configurationCount":I
    :cond_9
    goto :goto_3

    .line 900
    :cond_a
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 901
    goto/16 :goto_11

    .line 867
    .end local v0    # "devices":Ljava/util/Iterator;
    .end local v1    # "connected":Z
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_b

    goto :goto_7

    :cond_b
    move v8, v7

    :goto_7
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 868
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 869
    goto/16 :goto_11

    .line 996
    :pswitch_5
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accessory mode enter timeout: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-nez v0, :cond_1f

    .line 999
    :cond_c
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto/16 :goto_11

    .line 837
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 838
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 839
    .local v1, "prevHostConnected":Z
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/usb/UsbPort;

    .line 840
    .local v2, "port":Landroid/hardware/usb/UsbPort;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/usb/UsbPortStatus;

    .line 841
    .local v3, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    if-ne v5, v8, :cond_d

    move v5, v8

    goto :goto_8

    :cond_d
    move v5, v7

    :goto_8
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 842
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    if-ne v5, v8, :cond_e

    move v5, v8

    goto :goto_9

    :cond_e
    move v5, v7

    :goto_9
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 843
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    move v5, v8

    goto :goto_a

    :cond_f
    move v5, v7

    :goto_a
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 844
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v5

    if-ne v5, v4, :cond_10

    move v5, v8

    goto :goto_b

    :cond_10
    move v5, v7

    :goto_b
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 845
    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbPort;->isModeSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    .line 849
    invoke-virtual {v3, v8, v8}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 851
    invoke-virtual {v3, v6, v8}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 852
    invoke-virtual {v3, v8, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 854
    invoke-virtual {v3, v6, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v8

    goto :goto_c

    :cond_11
    move v4, v7

    :goto_c
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 856
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 857
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 858
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v4, :cond_13

    .line 859
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-nez v4, :cond_12

    if-eqz v1, :cond_1f

    .line 860
    :cond_12
    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    goto/16 :goto_11

    .line 863
    :cond_13
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 865
    goto/16 :goto_11

    .line 945
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "prevHostConnected":Z
    .end local v2    # "port":Landroid/hardware/usb/UsbPort;
    .end local v3    # "status":Landroid/hardware/usb/UsbPortStatus;
    :pswitch_7
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 946
    invoke-virtual {p0, v5, v6, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_11

    .line 978
    :pswitch_8
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_1f

    .line 980
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current user switched to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 983
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 984
    iput-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 985
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_14

    .line 986
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 988
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 987
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 986
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 990
    :cond_14
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_11

    .line 974
    :pswitch_9
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 975
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    .line 976
    goto/16 :goto_11

    .line 950
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 951
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 953
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 954
    invoke-virtual {v0, v1}, Landroid/debug/AdbManagerInternal;->registerTransport(Landroid/debug/IAdbTransport;)V

    .line 957
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isTv()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 959
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v3, 0x1040066

    .line 961
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usbdevicemanager.adb.tv"

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 959
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 966
    :cond_15
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    .line 967
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    .line 968
    goto/16 :goto_11

    .line 906
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 907
    .local v0, "functions":J
    invoke-virtual {p0, v0, v1, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 908
    goto/16 :goto_11

    .line 903
    .end local v0    # "functions":J
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_16

    move v7, v8

    :cond_16
    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    .line 904
    goto/16 :goto_11

    .line 804
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_17

    move v0, v8

    goto :goto_d

    :cond_17
    move v0, v7

    :goto_d
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 805
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v8, :cond_18

    move v0, v8

    goto :goto_e

    :cond_18
    move v0, v7

    :goto_e
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 809
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_19

    move v0, v8

    goto :goto_f

    :cond_19
    move v0, v7

    :goto_f
    invoke-static {v0}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->setAdbState(Z)V

    .line 812
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 813
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 814
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_1a

    .line 815
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 817
    :cond_1a
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1b

    .line 818
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    .line 820
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_1e

    .line 821
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_1d

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x11

    .line 822
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 824
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1c

    .line 826
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_10

    .line 828
    :cond_1c
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 831
    :cond_1d
    :goto_10
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_11

    .line 833
    :cond_1e
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 835
    nop

    .line 1004
    :cond_1f
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected isAdbEnabled()Z
    .locals 1

    .line 1179
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->isAdbEnabled()Z

    move-result v0

    return v0
.end method

.method protected isUsbDataTransferActive(J)Z
    .locals 4
    .param p1, "functions"    # J

    .line 1029
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isUsbTransferAllowed()Z
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 620
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method protected putGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "val"    # I

    .line 1257
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1258
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 537
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 538
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "arg1"    # Z

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 544
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 545
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 546
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 547
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    return-void
.end method

.method public sendMessage(IZ)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 530
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    return-void
.end method

.method public sendMessage(IZZ)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 552
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 553
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 554
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    return-void
.end method

.method public sendMessageDelayed(IZJ)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Z
    .param p3, "delayMillis"    # J

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 560
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 562
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 563
    return-void
.end method

.method protected sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 738
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 739
    return-void
.end method

.method protected abstract setEnabledFunctions(JZ)V
.end method

.method protected setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 1249
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    return-void
.end method

.method protected updateAdbNotification(Z)V
    .locals 17
    .param p1, "force"    # Z

    .line 1183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    return-void

    .line 1184
    :cond_0
    const/16 v1, 0x1a

    .line 1185
    .local v1, "id":I
    const v2, 0x1040065

    .line 1187
    .local v2, "titleRes":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v3

    const/16 v4, 0x1a

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v3, :cond_3

    .line 1188
    const-string/jumbo v3, "persist.adb.notify"

    const-string v7, ""

    invoke-virtual {v0, v3, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 1190
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz v3, :cond_2

    .line 1191
    iput-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1192
    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v4, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1195
    :cond_2
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-nez v3, :cond_4

    .line 1196
    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1197
    .local v3, "r":Landroid/content/res/Resources;
    const v7, 0x1040065

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1198
    .local v7, "title":Ljava/lang/CharSequence;
    const v8, 0x1040064

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1201
    .local v8, "message":Ljava/lang/CharSequence;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v9, "intent":Landroid/content/Intent;
    const v10, 0x10008000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1204
    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v13, v9

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1207
    .local v10, "pi":Landroid/app/PendingIntent;
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x10807ef

    .line 1209
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 1210
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1211
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1212
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1213
    invoke-virtual {v11, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v13, 0x106001c

    .line 1214
    invoke-virtual {v11, v13}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1217
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1218
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1219
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1220
    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v11, Landroid/app/Notification$TvExtender;

    invoke-direct {v11}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 1222
    const-string/jumbo v13, "usbdevicemanager.adb.tv"

    invoke-virtual {v11, v13}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v11

    .line 1221
    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1223
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1224
    .local v6, "notification":Landroid/app/Notification;
    iput-boolean v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1225
    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v5, v4, v6, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1227
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "title":Ljava/lang/CharSequence;
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pi":Landroid/app/PendingIntent;
    goto :goto_0

    .line 1228
    :cond_3
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz v3, :cond_4

    .line 1229
    iput-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1230
    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1232
    :cond_4
    :goto_0
    return-void
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .locals 4
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "status"    # Landroid/hardware/usb/UsbPortStatus;

    .line 592
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHostState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 596
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 597
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 599
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 600
    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 602
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 603
    return-void
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .line 568
    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "connected":I
    const/4 v1, 0x0

    .local v1, "configured":I
    goto :goto_0

    .line 571
    .end local v0    # "connected":I
    .end local v1    # "configured":I
    :cond_0
    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    const/4 v0, 0x1

    .line 573
    .restart local v0    # "connected":I
    const/4 v1, 0x0

    .restart local v1    # "configured":I
    goto :goto_0

    .line 574
    .end local v0    # "connected":I
    .end local v1    # "configured":I
    :cond_1
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    const/4 v0, 0x1

    .line 576
    .restart local v0    # "connected":I
    const/4 v1, 0x1

    .line 581
    .restart local v1    # "configured":I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 582
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 583
    :cond_2
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 584
    .local v2, "msg":Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 585
    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 587
    if-nez v0, :cond_3

    const-wide/16 v3, 0x3e8

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 588
    return-void

    .line 578
    .end local v0    # "connected":I
    .end local v1    # "configured":I
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method protected updateUsbNotification(Z)V
    .locals 18
    .param p1, "force"    # Z

    .line 1038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_15

    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    if-eqz v1, :cond_15

    .line 1039
    const-string/jumbo v1, "persist.charging.notify"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 1045
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v2, "Clear notification"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    if-nez v1, :cond_2

    .line 1046
    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_1

    .line 1047
    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1049
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1050
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_1
    return-void

    .line 1055
    :cond_2
    const/4 v1, 0x0

    .line 1056
    .local v1, "id":I
    const/4 v5, 0x0

    .line 1057
    .local v5, "titleRes":I
    iget-object v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1058
    .local v6, "r":Landroid/content/res/Resources;
    const v7, 0x1040729

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1060
    .local v7, "message":Ljava/lang/CharSequence;
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    if-nez v8, :cond_3

    .line 1061
    const v5, 0x104072f

    .line 1062
    const/16 v1, 0x29

    goto/16 :goto_1

    .line 1063
    :cond_3
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v8, :cond_b

    .line 1064
    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x4

    cmp-long v10, v8, v10

    if-nez v10, :cond_4

    .line 1065
    const v5, 0x1040728

    .line 1066
    const/16 v1, 0x1b

    goto :goto_0

    .line 1067
    :cond_4
    const-wide/16 v10, 0x10

    cmp-long v10, v8, v10

    if-nez v10, :cond_5

    .line 1068
    const v5, 0x104072b

    .line 1069
    const/16 v1, 0x1c

    goto :goto_0

    .line 1070
    :cond_5
    const-wide/16 v10, 0x8

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    .line 1071
    const v5, 0x1040722

    .line 1072
    const/16 v1, 0x1d

    goto :goto_0

    .line 1073
    :cond_6
    const-wide/16 v10, 0x20

    cmp-long v10, v8, v10

    if-nez v10, :cond_7

    .line 1074
    const v5, 0x104072d

    .line 1075
    const/16 v1, 0x2f

    goto :goto_0

    .line 1076
    :cond_7
    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 1077
    const v5, 0x104071c

    .line 1078
    const/16 v1, 0x1e

    .line 1080
    :cond_8
    :goto_0
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v8, :cond_a

    .line 1081
    if-eqz v5, :cond_9

    .line 1082
    const v8, 0x104072a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 1085
    :cond_9
    const v5, 0x104072c

    .line 1086
    const/16 v1, 0x1f

    goto :goto_1

    .line 1088
    :cond_a
    if-nez v5, :cond_d

    .line 1089
    const v5, 0x104071d

    .line 1090
    const/16 v1, 0x20

    goto :goto_1

    .line 1092
    :cond_b
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v8, :cond_c

    .line 1093
    const v5, 0x104072c

    .line 1094
    const/16 v1, 0x1f

    goto :goto_1

    .line 1095
    :cond_c
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v8, :cond_d

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v8, :cond_d

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-eqz v8, :cond_d

    .line 1096
    const v5, 0x104071d

    .line 1097
    const/16 v1, 0x20

    .line 1099
    :cond_d
    :goto_1
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-ne v1, v8, :cond_e

    if-eqz p1, :cond_14

    .line 1101
    :cond_e
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v8, :cond_f

    .line 1102
    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v8, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1104
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1108
    :cond_f
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v8, "android.hardware.type.automotive"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 1111
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1112
    return-void

    .line 1115
    :cond_10
    if-eqz v1, :cond_14

    .line 1116
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1120
    .local v2, "title":Ljava/lang/CharSequence;
    const-string v8, "com.android.settings"

    const v9, 0x104072f

    if-eq v5, v9, :cond_11

    .line 1123
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.settings.Settings$UsbDetailsActivity"

    invoke-direct {v10, v8, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 1126
    .local v8, "intent":Landroid/content/Intent;
    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v14, v8

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1128
    .local v10, "pi":Landroid/app/PendingIntent;
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 1129
    .local v8, "channel":Ljava/lang/String;
    goto :goto_3

    .line 1130
    .end local v8    # "channel":Ljava/lang/String;
    .end local v10    # "pi":Landroid/app/PendingIntent;
    :cond_11
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1131
    .local v10, "intent":Landroid/content/Intent;
    const-string v11, "com.android.settings.HelpTrampoline"

    invoke-virtual {v10, v8, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    const-string v8, "android.intent.extra.TEXT"

    const-string v11, "help_url_audio_accessory_not_supported"

    invoke-virtual {v10, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v10, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 1137
    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v10, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .local v8, "pi":Landroid/app/PendingIntent;
    goto :goto_2

    .line 1139
    .end local v8    # "pi":Landroid/app/PendingIntent;
    :cond_12
    const/4 v8, 0x0

    .line 1142
    .restart local v8    # "pi":Landroid/app/PendingIntent;
    :goto_2
    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 1143
    .local v11, "channel":Ljava/lang/String;
    const v12, 0x104072e

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v10, v8

    move-object v8, v11

    .line 1148
    .end local v11    # "channel":Ljava/lang/String;
    .local v8, "channel":Ljava/lang/String;
    .local v10, "pi":Landroid/app/PendingIntent;
    :goto_3
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x10807ef

    .line 1149
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 1150
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1151
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1152
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1153
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v13, 0x106001c

    .line 1154
    invoke-virtual {v11, v13}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1157
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1158
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1159
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1160
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1162
    .local v4, "builder":Landroid/app/Notification$Builder;
    if-ne v5, v9, :cond_13

    .line 1165
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1166
    invoke-virtual {v9, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    .line 1165
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1168
    :cond_13
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 1170
    .local v9, "notification":Landroid/app/Notification;
    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v1, v9, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1172
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "push notification:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iput v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1176
    .end local v2    # "title":Ljava/lang/CharSequence;
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "channel":Ljava/lang/String;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "pi":Landroid/app/PendingIntent;
    :cond_14
    return-void

    .line 1040
    .end local v1    # "id":I
    .end local v5    # "titleRes":I
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "message":Ljava/lang/CharSequence;
    :cond_15
    :goto_4
    return-void
.end method

.method protected updateUsbStateBroadcastIfNeeded(J)V
    .locals 7
    .param p1, "functions"    # J

    .line 707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x31000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 711
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 712
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v2, "host_connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 713
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v2, "configured"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    nop

    .line 715
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 714
    :goto_0
    const-string/jumbo v3, "unlocked"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    move-wide v3, p1

    .line 718
    .local v3, "remainingFunctions":J
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 719
    nop

    .line 720
    invoke-static {v3, v4}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v5

    .line 719
    invoke-static {v5, v6}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 721
    invoke-static {v3, v4}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_1

    .line 725
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbStateChanged(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, " extras: "

    if-nez v1, :cond_2

    .line 727
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    .line 732
    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 734
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 735
    return-void
.end method
