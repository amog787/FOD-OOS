.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCESSIBILITY_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final ADB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adb.AdbService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final APP_PREDICTION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appprediction.AppPredictionManagerService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303ff

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.android.things.server.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field private static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field private static final SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.systemcaptions.SystemCaptionsManagerService"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mStartCount:I

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 211
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 392
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 400
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 401
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .line 642
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 643
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 644
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10303ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 646
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 647
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 648
    return-void
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private isFirstBootOrUpgrade()Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

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

.method static synthetic lambda$startBootstrapServices$0()V
    .locals 4

    .line 845
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 847
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 849
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 850
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .locals 6

    .line 967
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v2, Landroid/util/TimingsTraceLog;

    const-string v3, "SystemServerTimingAsync"

    const-wide/32 v4, 0x80000

    invoke-direct {v2, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 970
    .local v2, "traceLog":Landroid/util/TimingsTraceLog;
    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 971
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    const-string v0, "Unable to preload default resources"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .end local v2    # "traceLog":Landroid/util/TimingsTraceLog;
    goto :goto_0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .locals 4

    .line 1087
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1089
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1090
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1091
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1092
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 382
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 383
    return-void
.end method

.method private performPendingShutdown()V
    .locals 9

    .line 588
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 591
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v2

    .line 594
    .local v3, "reboot":Z
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 595
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_1

    .line 597
    .end local v4    # "reason":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 605
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 606
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 607
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 608
    const/4 v7, 0x0

    .line 610
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v2

    .line 613
    goto :goto_2

    .line 611
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v7, :cond_2

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 616
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 617
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void

    .line 624
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 634
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 635
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 636
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 639
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "reboot":Z
    .end local v4    # "reason":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 583
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    return-void
.end method

.method private run()V
    .locals 13

    .line 405
    const-string v0, "System"

    const-string/jumbo v1, "persist.sys.language"

    const-string/jumbo v2, "persist.sys.timezone"

    const-string v3, ""

    :try_start_0
    const-string v4, "InitBeforeStartServices"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 408
    const-string/jumbo v4, "sys.system_server.start_count"

    iget v5, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v4, "sys.system_server.start_elapsed"

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v4, "sys.system_server.start_uptime"

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/16 v4, 0xbc3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 413
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-wide v8, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v6

    .line 412
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v9, 0x5265c00

    cmp-long v4, v4, v9

    const-string v5, "SystemServer"

    if-gez v4, :cond_0

    .line 420
    :try_start_1
    const-string v4, "System clock is before 1970; setting to 1970."

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {v9, v10}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 427
    :cond_0
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "timezoneProperty":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    :cond_1
    const-string v6, "Timezone not set; setting to GMT."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v6, "GMT"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_2
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 442
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "languageTag":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.locale"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string/jumbo v1, "persist.sys.country"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string/jumbo v1, "persist.sys.localevar"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v2    # "languageTag":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 453
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 456
    const-string v1, "FULL"

    sput-object v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 459
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 462
    const-string v2, "Entered the Android system server!"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    .line 464
    .local v2, "uptimeMillis":I
    const/16 v3, 0xbc2

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 465
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v3, :cond_4

    .line 466
    const-string v3, "boot_system_server_init"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 476
    :cond_4
    const-string/jumbo v3, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 483
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    const v6, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 487
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 491
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 495
    invoke-static {v8}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 498
    invoke-static {v8}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 501
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 504
    const/16 v3, 0x1f

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 507
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 509
    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 510
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 511
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 515
    const-string v3, "android_servers"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 518
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_5

    .line 519
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 524
    :cond_5
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 527
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 530
    new-instance v3, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 531
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 533
    const-class v3, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v3, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 535
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 537
    nop

    .end local v2    # "uptimeMillis":I
    .end local v4    # "timezoneProperty":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 538
    nop

    .line 542
    :try_start_2
    const-string v2, "StartServices"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 543
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 544
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 545
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 546
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 553
    nop

    .line 555
    invoke-static {v1}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 557
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_6

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 559
    .local v0, "uptimeMillis":I
    const-string v2, "boot_system_server_ready"

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 560
    const v1, 0xea60

    .line 561
    .local v1, "MAX_UPTIME_MILLIS":I
    const v2, 0xea60

    if-le v0, v2, :cond_6

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemServerTiming"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v0    # "uptimeMillis":I
    .end local v1    # "MAX_UPTIME_MILLIS":I
    :cond_6
    invoke-static {}, Ldalvik/system/VMRuntime;->hasBootImageSpaces()Z

    move-result v0

    if-nez v0, :cond_7

    .line 570
    const-string v0, "Runtime is not running with a boot image!"

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_7
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 575
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :catchall_0
    move-exception v1

    .line 548
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "******************************************"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v2, "************ Failure starting system services"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    nop

    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 552
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 537
    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startAttentionService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 2444
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2445
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    return-void

    .line 2449
    :cond_0
    const-string v0, "StartAttentionManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2450
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2451
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2452
    return-void
.end method

.method private startBootstrapServices()V
    .locals 13

    .line 659
    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "moveab"

    const-string v2, "StartWatchdog"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 661
    .local v2, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 662
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 664
    const-string v3, "SystemServer"

    const-string v4, "Reading configuration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v4, "ReadingSystemConfig"

    .line 666
    .local v4, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v5, "ReadingSystemConfig"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 668
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 673
    const-string v5, "StartInstaller"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 674
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Installer;

    .line 675
    .local v5, "installer":Lcom/android/server/pm/Installer;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 679
    const-string v6, "DeviceIdentifiersPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 680
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 681
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 684
    const-string v6, "UriGrantsManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 685
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 686
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 689
    const-string v6, "StartActivityManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 691
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 692
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v6

    .line 693
    .local v6, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v7, v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 695
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 696
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 697
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 698
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 704
    const-string v7, "StartPowerManager"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 705
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService;

    iput-object v7, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 706
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 708
    const-string v7, "StartThermalManager"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 709
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 710
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 714
    const-string v7, "InitPowerManagement"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 715
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 716
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 719
    const-string v7, "StartRecoverySystemService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 720
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 721
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 726
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 729
    const-string v7, "StartLightsService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 730
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 731
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 733
    const-string v7, "StartSidekickService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 735
    const/4 v7, 0x0

    const-string v8, "config.enable_sidekick_graphics"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 736
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 738
    :cond_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 742
    const-string v8, "StartDisplayManager"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 743
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 744
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 747
    const-string v8, "WaitForDisplay"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 748
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 749
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 752
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 753
    .local v8, "cryptState":Ljava/lang/String;
    const-string/jumbo v9, "trigger_restart_min_framework"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 754
    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iput-boolean v10, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 756
    :cond_1
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 757
    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iput-boolean v10, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 762
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v9, 0x0

    if-nez v3, :cond_3

    .line 763
    nop

    .line 764
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    long-to-int v3, v11

    .line 763
    const-string v11, "boot_package_manager_init_start"

    invoke-static {v9, v11, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 766
    :cond_3
    const-string v3, "StartPackageManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 768
    :try_start_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v11, :cond_4

    goto :goto_1

    :cond_4
    move v10, v7

    :goto_1
    iget-boolean v11, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v5, v10, v11}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 772
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 773
    nop

    .line 774
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 775
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 776
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 777
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_5

    .line 778
    nop

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    long-to-int v0, v10

    .line 778
    const-string v3, "boot_package_manager_init_ready"

    invoke-static {v9, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 784
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_6

    .line 785
    const-string v0, "config.disable_otadexopt"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 787
    .local v0, "disableOtaDexopt":Z
    if-nez v0, :cond_6

    .line 788
    const-string v3, "StartOtaDexOptService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 790
    :try_start_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v9}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 792
    :catchall_0
    move-exception v3

    .line 793
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v9, "starting OtaDexOptService"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 795
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 796
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 797
    goto :goto_3

    .line 795
    :catchall_1
    move-exception v3

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 796
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v3

    .line 801
    .end local v0    # "disableOtaDexopt":Z
    :cond_6
    :goto_3
    const-string v0, "StartUserManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 803
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 806
    const-string v0, "InitAttributerCache"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 808
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 811
    const-string v0, "SetSystemProcess"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 813
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 817
    const-string v0, "InitWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 819
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 823
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 826
    const-string v0, "StartOverlayManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3, v5}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 828
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 830
    const-string v0, "StartSensorPrivacyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/SensorPrivacyService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 832
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 834
    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_7

    .line 836
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 837
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 844
    :cond_7
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v3, "StartSensorService"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 851
    return-void

    .line 772
    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v1
.end method

.method private startContentCaptureService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2408
    const/4 v0, 0x0

    .line 2409
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2411
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_1

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2412
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2413
    if-eqz v0, :cond_0

    .line 2414
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2416
    :cond_0
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    return-void

    .line 2422
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 2423
    const v3, 0x1040160

    .line 2424
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2425
    .local v3, "serviceName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2426
    const-string v4, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    return-void

    .line 2431
    .end local v3    # "serviceName":Ljava/lang/String;
    :cond_2
    const-string v2, "StartContentCaptureService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2432
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2434
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 2435
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 2436
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_3

    .line 2437
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 2440
    :cond_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2441
    return-void
.end method

.method private static startCoreServiceApp(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2465
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2466
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.coreservice"

    const-string v3, "com.oneplus.coreservice.CoreService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2471
    return-void
.end method

.method private startCoreServices()V
    .locals 2

    .line 857
    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 860
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 863
    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 865
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 866
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 865
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 867
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 870
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 873
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 877
    :cond_0
    const-string v0, "StartCachedDeviceStateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 879
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 882
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 884
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 887
    const-string v0, "StartLooperStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 889
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 892
    const-string v0, "StartRollbackManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 894
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 897
    const-string v0, "StartBugreportManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 899
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 902
    const-string v0, "GpuService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 904
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 905
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .locals 65

    .line 911
    move-object/from16 v5, p0

    const-string/jumbo v1, "onBootPhase"

    const-string/jumbo v2, "window"

    const-string v0, "SecondaryZygotePreload"

    const-string v3, "dexopt"

    const-string v4, "SystemServer"

    iget-object v15, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 912
    .local v15, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 913
    .local v6, "vibrator":Lcom/android/server/VibratorService;
    const/4 v7, 0x0

    .line 914
    .local v7, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v12, 0x0

    .line 915
    .local v12, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v13, 0x0

    .line 916
    .local v13, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v14, 0x0

    .line 917
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    const/16 v16, 0x0

    .line 918
    .local v16, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v17, 0x0

    .line 919
    .local v17, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v18, 0x0

    .line 920
    .local v18, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v19, 0x0

    .line 921
    .local v19, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v20, 0x0

    .line 922
    .local v20, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v21, 0x0

    .line 923
    .local v21, "serial":Lcom/android/server/SerialService;
    const/16 v22, 0x0

    .line 924
    .local v22, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/4 v8, 0x0

    .line 925
    .local v8, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v9, 0x0

    .line 926
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v10, 0x0

    .line 927
    .local v10, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v23, 0x0

    .line 928
    .local v23, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v24, 0x0

    .line 929
    .local v24, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v25, 0x0

    .line 930
    .local v25, "wigigP2pService":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 932
    .local v26, "wigigService":Ljava/lang/Object;
    const/4 v11, 0x0

    move-object/from16 v27, v6

    .end local v6    # "vibrator":Lcom/android/server/VibratorService;
    .local v27, "vibrator":Lcom/android/server/VibratorService;
    const-string v6, "config.disable_systemtextclassifier"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 935
    .local v28, "disableSystemTextClassifier":Z
    const-string v6, "config.disable_networktime"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 937
    .local v29, "disableNetworkTime":Z
    const-string v6, "config.disable_cameraservice"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 939
    .local v30, "disableCameraService":Z
    const-string v6, "config.disable_slices"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 940
    .local v31, "disableSlices":Z
    const-string v6, "config.enable_lefty"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 942
    .local v32, "enableLeftyService":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "1"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 943
    .local v34, "isEmulator":Z
    const-string/jumbo v6, "persist.vendor.wigig.enable"

    const/4 v11, 0x0

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 945
    .local v35, "enableWigig":Z
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v11, "android.hardware.type.watch"

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    .line 948
    .local v36, "isWatch":Z
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v11, "org.chromium.arc"

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v37

    .line 951
    .local v37, "isArc":Z
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v11, "android.hardware.vr.high_performance"

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v38

    .line 955
    .local v38, "enableVrService":Z
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_1

    const-string v6, "debug.crash_system"

    const/4 v11, 0x0

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 955
    :cond_1
    const/4 v11, 0x0

    .line 960
    :goto_0
    move-object/from16 v33, v0

    .line 965
    .local v33, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    sget-object v11, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    invoke-virtual {v6, v11, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 980
    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 981
    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v6, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v6, v15}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 983
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 985
    const-string v0, "StartKeyChainSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 986
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 987
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 989
    const-string v0, "StartSchedulingPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 990
    const-string/jumbo v0, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 991
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 993
    const-string v0, "StartTelecomLoaderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 994
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 995
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 997
    const-string v0, "StartTelephonyRegistry"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 998
    new-instance v0, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v0, v15}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v11, v0

    .line 999
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v11, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_2
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1000
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1002
    const-string v0, "StartEntropyMixer"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1003
    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v15}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v5, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1004
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1006
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1009
    const-string v0, "StartAccountManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1010
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1011
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1013
    const-string v0, "StartContentService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1014
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1015
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1017
    const-string v0, "InstallSystemProviders"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1018
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 1020
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1021
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1026
    const-string v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1027
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1028
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1030
    const-string v0, "StartVibratorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1031
    new-instance v0, Lcom/android/server/VibratorService;

    invoke-direct {v0, v15}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7

    move-object v9, v0

    .line 1032
    .end local v27    # "vibrator":Lcom/android/server/VibratorService;
    .local v9, "vibrator":Lcom/android/server/VibratorService;
    :try_start_3
    const-string/jumbo v0, "vibrator"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1033
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1035
    const-string v0, "StartDynamicSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1036
    new-instance v0, Lcom/android/server/DynamicSystemService;

    invoke-direct {v0, v15}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v7, v0

    .line 1037
    :try_start_4
    const-string v0, "dynamic_system"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1038
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1040
    if-nez v36, :cond_2

    .line 1041
    :try_start_5
    const-string v0, "StartConsumerIrService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1042
    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v15}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 1043
    const-string v0, "consumer_ir"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1044
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v27, v10

    goto :goto_1

    .line 1136
    .end local v33    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v40, v11

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1040
    .restart local v33    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2
    move-object/from16 v27, v10

    .line 1047
    .end local v10    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v27, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_1
    :try_start_6
    const-string v0, "StartAlarmManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1048
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/AlarmManagerService;

    invoke-direct {v6, v15}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1049
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1051
    const-string v0, "StartInputManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1052
    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, v15}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v10, v0

    .line 1053
    .end local v8    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v10, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1055
    const-string v0, "StartWindowManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1057
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v6, "StartSensorService"

    invoke-static {v0, v6}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1058
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 1059
    iget-boolean v0, v5, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v0, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-boolean v0, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1063
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->getInstance()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v41, v6

    check-cast v41, Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1059
    move-object/from16 v39, v6

    move-object/from16 v42, v14

    const/4 v14, 0x1

    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v42, "ipSecService":Lcom/android/server/IpSecService;
    move-object v6, v15

    move-object/from16 v43, v7

    .end local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v43, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    move-object v7, v10

    move-object/from16 v44, v9

    .end local v9    # "vibrator":Lcom/android/server/VibratorService;
    .local v44, "vibrator":Lcom/android/server/VibratorService;
    move v9, v0

    move-object v14, v10

    .end local v10    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v14, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v10, v41

    move-object/from16 v40, v11

    move-object/from16 v41, v13

    const/4 v13, 0x0

    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v40, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v41, "networkManagement":Lcom/android/server/NetworkManagementService;
    move-object/from16 v11, v39

    :try_start_8
    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v0

    .line 1069
    .end local v20    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v6, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v0, 0x11

    :try_start_9
    invoke-static {v2, v6, v13, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1071
    const-string v0, "input"

    const/4 v7, 0x1

    invoke-static {v0, v14, v13, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1073
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1075
    const-string v0, "SetWindowManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1076
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1077
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1079
    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1081
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1086
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v7, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v8, "StartHidlServices"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1094
    if-nez v36, :cond_4

    if-eqz v38, :cond_4

    .line 1095
    const-string v0, "StartVrManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1096
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1097
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1100
    :cond_4
    const-string v0, "StartInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1102
    invoke-virtual {v14}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1103
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1106
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1107
    iget-object v0, v5, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1108
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1110
    iget v0, v5, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 1111
    const-string v0, "No Bluetooth Service (factory test)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1112
    :cond_5
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.bluetooth"

    .line 1113
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1114
    const-string v0, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1116
    :cond_6
    const-string v0, "StartBluetoothService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1117
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1118
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1121
    :goto_3
    const-string v0, "IpConnectivityMetrics"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1122
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1123
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1125
    const-string v0, "NetworkWatchlistService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1126
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1127
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1129
    const-string v0, "PinnerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1130
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1131
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1133
    const-string v0, "SignedConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1134
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1135
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1139
    .end local v33    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    move-object v9, v6

    goto/16 :goto_6

    .line 1136
    :catch_1
    move-exception v0

    move-object/from16 v20, v6

    move-object v8, v14

    move-object/from16 v7, v43

    move-object/from16 v9, v44

    goto/16 :goto_5

    .end local v6    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v20    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v0

    move-object v8, v14

    move-object/from16 v7, v43

    move-object/from16 v9, v44

    goto/16 :goto_5

    .end local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v43    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v44    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v9    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v10    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    :catch_3
    move-exception v0

    move-object/from16 v43, v7

    move-object/from16 v44, v9

    move-object/from16 v40, v11

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    const/4 v13, 0x0

    move-object v14, v10

    move-object v8, v14

    .end local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v9    # "vibrator":Lcom/android/server/VibratorService;
    .end local v10    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v14, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v43    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v44    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_5

    .end local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v43    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v44    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v8    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v9    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    :catch_4
    move-exception v0

    move-object/from16 v43, v7

    move-object/from16 v44, v9

    move-object/from16 v40, v11

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    const/4 v13, 0x0

    .end local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v9    # "vibrator":Lcom/android/server/VibratorService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v43    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v44    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_5

    .end local v27    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v43    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v44    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v9    # "vibrator":Lcom/android/server/VibratorService;
    .local v10, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catch_5
    move-exception v0

    move-object/from16 v43, v7

    move-object/from16 v44, v9

    move-object/from16 v40, v11

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    const/4 v13, 0x0

    move-object/from16 v27, v10

    .end local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v9    # "vibrator":Lcom/android/server/VibratorService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v43    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v44    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_5

    .end local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v43    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v44    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v9    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catch_6
    move-exception v0

    move-object/from16 v44, v9

    move-object/from16 v40, v11

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    const/4 v13, 0x0

    move-object/from16 v27, v10

    .end local v9    # "vibrator":Lcom/android/server/VibratorService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v44    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_5

    .end local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v44    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v27, "vibrator":Lcom/android/server/VibratorService;
    :catch_7
    move-exception v0

    move-object/from16 v40, v11

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    const/4 v13, 0x0

    move-object/from16 v9, v27

    move-object/from16 v27, v10

    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42    # "ipSecService":Lcom/android/server/IpSecService;
    goto :goto_5

    .end local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catch_8
    move-exception v0

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    const/4 v13, 0x0

    goto :goto_4

    :catch_9
    move-exception v0

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    move v13, v11

    :goto_4
    move-object/from16 v40, v9

    move-object/from16 v9, v27

    move-object/from16 v27, v10

    .line 1137
    .end local v10    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v0, "e":Ljava/lang/RuntimeException;
    .local v9, "vibrator":Lcom/android/server/VibratorService;
    .local v27, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v40    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42    # "ipSecService":Lcom/android/server/IpSecService;
    :goto_5
    const-string v6, "System"

    const-string v10, "******************************************"

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const-string v10, "************ Failure starting core service"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v43, v7

    move-object v14, v8

    move-object/from16 v44, v9

    move-object/from16 v9, v20

    .line 1143
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v8    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v20    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v14, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v43    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v44    # "vibrator":Lcom/android/server/VibratorService;
    :goto_6
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v11

    .line 1144
    .local v11, "safeMode":Z
    if-eqz v11, :cond_7

    .line 1149
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1153
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x2

    const-string v7, "cell_on"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1158
    :cond_7
    const/4 v6, 0x0

    .line 1159
    .local v6, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v7, 0x0

    .line 1160
    .local v7, "notification":Landroid/app/INotificationManager;
    const/4 v8, 0x0

    .line 1161
    .local v8, "location":Lcom/android/server/LocationManagerService;
    const/4 v10, 0x0

    .line 1162
    .local v10, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v20, 0x0

    .line 1163
    .local v20, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v33, 0x0

    .line 1166
    .local v33, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v5, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v13, 0x1

    if-eq v0, v13, :cond_9

    .line 1167
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1168
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    if-eqz v0, :cond_8

    .line 1169
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_7

    .line 1172
    :cond_8
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1174
    :goto_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1176
    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1178
    :try_start_a
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1181
    goto :goto_8

    .line 1179
    :catchall_0
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "starting Accessibility Manager"

    invoke-direct {v5, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1182
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1185
    :cond_9
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1187
    :try_start_b
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1190
    goto :goto_9

    .line 1188
    :catchall_1
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 1189
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "making display ready"

    invoke-direct {v5, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1191
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1195
    const-string v13, ""

    const-string/jumbo v0, "ro.build.version.ota"

    move-object/from16 v46, v12

    .end local v12    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v46, "storageManager":Landroid/os/storage/IStorageManager;
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1196
    .local v12, "curVersion":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.version.ota"

    move-object/from16 v47, v6

    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v47, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1197
    .local v6, "lastVersion":Ljava/lang/String;
    move-object/from16 v48, v7

    .end local v7    # "notification":Landroid/app/INotificationManager;
    .local v48, "notification":Landroid/app/INotificationManager;
    iget-boolean v7, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v7, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1198
    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string/jumbo v0, "persist.sys.version.lastota"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_a
    iget v0, v5, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v0, v7, :cond_b

    .line 1204
    const-string/jumbo v0, "system_init.startmountservice"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1205
    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1211
    :try_start_c
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1212
    const-string/jumbo v0, "mount"

    .line 1213
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1216
    .end local v46    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    move-object/from16 v46, v0

    goto :goto_a

    .line 1214
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v46    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_2
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting StorageManagerService"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1217
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1219
    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1221
    :try_start_d
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1224
    goto :goto_b

    .line 1222
    :catchall_3
    move-exception v0

    .line 1223
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting StorageStatsService"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1225
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1231
    :cond_b
    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1232
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1233
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1235
    iget-boolean v0, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_c

    .line 1236
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1238
    :try_start_e
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1239
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_c

    .line 1240
    :catchall_4
    move-exception v0

    .line 1241
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_f
    const-string/jumbo v7, "update packages"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1243
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1244
    nop

    .line 1245
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_d

    .line 1243
    :catchall_5
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_c
    :goto_d
    const-string v0, "PerformFstrimIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1250
    :try_start_10
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1253
    goto :goto_e

    .line 1251
    :catchall_6
    move-exception v0

    .line 1252
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "performing fstrim"

    invoke-direct {v5, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1254
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1256
    iget v0, v5, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string/jumbo v3, "starting "

    const/4 v7, 0x1

    if-eq v0, v7, :cond_3a

    .line 1257
    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1259
    :try_start_11
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1260
    const-string/jumbo v0, "lock_settings"

    .line 1261
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1260
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1264
    .end local v20    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v20, v0

    goto :goto_f

    .line 1262
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v20    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catchall_7
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting LockSettingsService service"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1265
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1267
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    move v7, v0

    .line 1268
    .local v7, "hasPdb":Z
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    :goto_10
    move v13, v0

    .line 1269
    .local v13, "hasGsi":Z
    if-eqz v7, :cond_e

    if-nez v13, :cond_e

    .line 1270
    const-string v0, "StartPersistentDataBlock"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1271
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v49, v6

    .end local v6    # "lastVersion":Ljava/lang/String;
    .local v49, "lastVersion":Ljava/lang/String;
    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1272
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_11

    .line 1269
    .end local v49    # "lastVersion":Ljava/lang/String;
    .restart local v6    # "lastVersion":Ljava/lang/String;
    :cond_e
    move-object/from16 v49, v6

    .line 1275
    .end local v6    # "lastVersion":Ljava/lang/String;
    .restart local v49    # "lastVersion":Ljava/lang/String;
    :goto_11
    const-string v0, "StartTestHarnessMode"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1276
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1277
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1279
    if-nez v7, :cond_f

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1281
    :cond_f
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1282
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1283
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1286
    :cond_10
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1287
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1288
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1292
    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1293
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1294
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1296
    if-nez v36, :cond_11

    .line 1297
    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1299
    :try_start_12
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v15, v9}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move-object v6, v0

    .line 1300
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v6, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_13
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1303
    move-object/from16 v47, v6

    goto :goto_13

    .line 1301
    :catchall_8
    move-exception v0

    goto :goto_12

    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_9
    move-exception v0

    move-object/from16 v6, v47

    .line 1302
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_12
    move-object/from16 v47, v6

    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string/jumbo v6, "starting StatusBarManagerService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1304
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v6, v47

    goto :goto_14

    .line 1296
    :cond_11
    move-object/from16 v6, v47

    .line 1307
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_14
    invoke-direct {v5, v15}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;)V

    .line 1308
    invoke-direct {v5, v15}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;)V

    .line 1310
    invoke-direct {v5, v15}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;)V

    .line 1313
    const-string v0, "StartAppPredictionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1314
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v47, v6

    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string v6, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1315
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1318
    const-string v0, "StartContentSuggestionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1319
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1320
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1322
    const-string v0, "InitNetworkStackClient"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1324
    :try_start_14
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 1327
    goto :goto_15

    .line 1325
    :catchall_a
    move-exception v0

    .line 1326
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v6, "initializing NetworkStackClient"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1328
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_15
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1330
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1332
    :try_start_15
    invoke-static {v15}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    move-object v6, v0

    .line 1333
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v6, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_16
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 1336
    goto :goto_17

    .line 1334
    :catchall_b
    move-exception v0

    goto :goto_16

    .end local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_c
    move-exception v0

    move-object/from16 v6, v41

    .line 1335
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_16
    move-object/from16 v41, v6

    .end local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v6, "starting NetworkManagement Service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v6, v41

    .line 1337
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v41    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_17
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1340
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1342
    :try_start_17
    invoke-static {v15}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    move-object/from16 v41, v0

    .line 1343
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .local v41, "ipSecService":Lcom/android/server/IpSecService;
    :try_start_18
    const-string v0, "ipsec"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    move/from16 v50, v7

    move-object/from16 v7, v41

    .end local v41    # "ipSecService":Lcom/android/server/IpSecService;
    .local v7, "ipSecService":Lcom/android/server/IpSecService;
    .local v50, "hasPdb":Z
    :try_start_19
    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 1346
    goto :goto_19

    .line 1344
    :catchall_d
    move-exception v0

    move-object/from16 v41, v7

    goto :goto_18

    .end local v50    # "hasPdb":Z
    .local v7, "hasPdb":Z
    .restart local v41    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_e
    move-exception v0

    move/from16 v50, v7

    move-object/from16 v7, v41

    .end local v41    # "ipSecService":Lcom/android/server/IpSecService;
    .local v7, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v50    # "hasPdb":Z
    goto :goto_18

    .end local v50    # "hasPdb":Z
    .local v7, "hasPdb":Z
    .restart local v42    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_f
    move-exception v0

    move/from16 v50, v7

    move-object/from16 v41, v42

    .line 1345
    .end local v7    # "hasPdb":Z
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v41    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v50    # "hasPdb":Z
    :goto_18
    const-string/jumbo v7, "starting IpSec Service"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v7, v41

    .line 1347
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v41    # "ipSecService":Lcom/android/server/IpSecService;
    .local v7, "ipSecService":Lcom/android/server/IpSecService;
    :goto_19
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1349
    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1350
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v41, v7

    .end local v7    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v41    # "ipSecService":Lcom/android/server/IpSecService;
    const-class v7, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1351
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1353
    if-nez v28, :cond_12

    .line 1354
    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1355
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 1356
    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1357
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1360
    :cond_12
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1361
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1362
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1364
    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1366
    :try_start_1a
    invoke-static {v15, v6}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    move-object v7, v0

    .line 1367
    .end local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1b
    const-string/jumbo v0, "netstats"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 1370
    goto :goto_1b

    .line 1368
    :catchall_10
    move-exception v0

    goto :goto_1a

    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catchall_11
    move-exception v0

    move-object/from16 v7, v16

    .line 1369
    .end local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_1a
    move-object/from16 v16, v7

    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v7, "starting NetworkStats Service"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v7, v16

    .line 1371
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_1b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1373
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1375
    :try_start_1c
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    move-object/from16 v51, v8

    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .local v51, "location":Lcom/android/server/LocationManagerService;
    :try_start_1d
    iget-object v8, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v15, v8, v6}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    move-object v8, v0

    .line 1377
    .end local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1e
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    .line 1380
    goto :goto_1d

    .line 1378
    :catchall_12
    move-exception v0

    goto :goto_1c

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_13
    move-exception v0

    move-object/from16 v8, v17

    goto :goto_1c

    .end local v51    # "location":Lcom/android/server/LocationManagerService;
    .local v8, "location":Lcom/android/server/LocationManagerService;
    :catchall_14
    move-exception v0

    move-object/from16 v51, v8

    move-object/from16 v8, v17

    .line 1379
    .end local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v51    # "location":Lcom/android/server/LocationManagerService;
    :goto_1c
    move-object/from16 v16, v8

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const-string/jumbo v8, "starting NetworkPolicy Service"

    invoke-direct {v5, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v8, v16

    .line 1381
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_1d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1385
    invoke-static {v8}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1388
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v52, v10

    .end local v10    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v52, "countryDetector":Lcom/android/server/CountryDetectorService;
    const-string v10, "android.hardware.wifi"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1391
    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1392
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1393
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1394
    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1395
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1397
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1400
    :cond_13
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1402
    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1403
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1405
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1408
    :cond_14
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.aware"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1410
    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1411
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1412
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1415
    :cond_15
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.direct"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1417
    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1418
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1419
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1422
    :cond_16
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.lowpan"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1424
    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1425
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1426
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1429
    :cond_17
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.ethernet"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "android.hardware.usb.host"

    if-nez v0, :cond_19

    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1430
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1e

    :cond_18
    move-object/from16 v53, v12

    goto :goto_1f

    .line 1431
    :cond_19
    :goto_1e
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1432
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v53, v12

    .end local v12    # "curVersion":Ljava/lang/String;
    .local v53, "curVersion":Ljava/lang/String;
    const-string v12, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1433
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1436
    :goto_1f
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1438
    :try_start_1f
    new-instance v0, Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v15, v6, v7, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_17

    move-object v12, v0

    .line 1440
    .end local v18    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v12, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_20
    const-string v0, "connectivity"
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    move-object/from16 v54, v6

    .end local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v54, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x6

    move-object/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v16, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_21
    invoke-static {v0, v12, v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1443
    invoke-virtual {v8, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_15

    .line 1446
    goto :goto_21

    .line 1444
    :catchall_15
    move-exception v0

    goto :goto_20

    .end local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v54    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catchall_16
    move-exception v0

    move-object/from16 v54, v6

    move-object/from16 v16, v7

    .end local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v54    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_20

    .end local v12    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v54    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v18    # "connectivity":Lcom/android/server/ConnectivityService;
    :catchall_17
    move-exception v0

    move-object/from16 v54, v6

    move-object/from16 v16, v7

    move-object/from16 v12, v18

    .line 1445
    .end local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v18    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v12    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v54    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_20
    const-string/jumbo v6, "starting Connectivity Service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1447
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_21
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1449
    if-eqz v35, :cond_1a

    .line 1451
    :try_start_22
    const-string v0, "Wigig Service"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v0, "/system/framework/wigig-service.jar:/system/product/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/product/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar:/system/product/framework/vendor.qti.hardware.capabilityconfigstore-V1.0-java.jar"

    .line 1457
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v6, Ldalvik/system/PathClassLoader;

    .line 1458
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1459
    .local v6, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v6, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_19

    .line 1461
    .local v7, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v18, v0

    move-object/from16 v17, v8

    const/4 v8, 0x1

    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v18, "wigigClassPath":Ljava/lang/String;
    :try_start_23
    new-array v0, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v39, 0x0

    aput-object v8, v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1462
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v42, v7

    const/4 v8, 0x1

    .end local v7    # "wigigP2pClass":Ljava/lang/Class;
    .local v42, "wigigP2pClass":Ljava/lang/Class;
    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v25, v7

    .line 1463
    const-string v7, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const-string/jumbo v7, "wigigp2p"

    move-object/from16 v8, v25

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1466
    const-string v7, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v6, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 1468
    .local v7, "wigigClass":Ljava/lang/Class;
    move-object/from16 v55, v0

    const/4 v8, 0x1

    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v55, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    new-array v0, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v39, 0x0

    aput-object v8, v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1469
    .end local v55    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v55, v6

    const/4 v8, 0x1

    .end local v6    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .local v55, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v6, v8

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v26, v6

    .line 1470
    const-string v6, "Successfully loaded WigigService class"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const-string/jumbo v6, "wigig"

    move-object/from16 v8, v26

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_18

    .line 1474
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v7    # "wigigClass":Ljava/lang/Class;
    .end local v18    # "wigigClassPath":Ljava/lang/String;
    .end local v42    # "wigigP2pClass":Ljava/lang/Class;
    .end local v55    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_23

    .line 1472
    :catchall_18
    move-exception v0

    goto :goto_22

    .end local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_19
    move-exception v0

    move-object/from16 v17, v8

    .line 1473
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_22
    const-string/jumbo v6, "starting WigigService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 1449
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_1a
    move-object/from16 v17, v8

    .line 1477
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_23
    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1479
    :try_start_24
    invoke-static {v15}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1b

    move-object v6, v0

    .line 1480
    .end local v19    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v6, "serviceDiscovery":Lcom/android/server/NsdService;
    :try_start_25
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1a

    .line 1484
    move-object/from16 v19, v6

    goto :goto_25

    .line 1482
    :catchall_1a
    move-exception v0

    goto :goto_24

    .end local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v19    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catchall_1b
    move-exception v0

    move-object/from16 v6, v19

    .line 1483
    .end local v19    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_24
    const-string/jumbo v7, "starting Service Discovery Service"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v19, v6

    .line 1485
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v19    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_25
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1487
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1489
    :try_start_26
    const-string/jumbo v0, "system_update"

    new-instance v6, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v6, v15}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1c

    .line 1493
    goto :goto_26

    .line 1491
    :catchall_1c
    move-exception v0

    .line 1492
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SystemUpdateManagerService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1494
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_26
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1496
    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1498
    :try_start_27
    const-string/jumbo v0, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v15}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1d

    .line 1502
    goto :goto_27

    .line 1500
    :catchall_1d
    move-exception v0

    .line 1501
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1503
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_27
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1505
    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1506
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1507
    invoke-static {v15}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 1508
    invoke-static {v15}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1509
    nop

    .line 1510
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1509
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v7

    .line 1511
    .end local v48    # "notification":Landroid/app/INotificationManager;
    .local v7, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1513
    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1514
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1515
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1517
    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1519
    :try_start_28
    new-instance v0, Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1f

    move-object v8, v0

    .line 1520
    .end local v51    # "location":Lcom/android/server/LocationManagerService;
    .local v8, "location":Lcom/android/server/LocationManagerService;
    :try_start_29
    const-string/jumbo v0, "location"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1e

    .line 1523
    goto :goto_29

    .line 1521
    :catchall_1e
    move-exception v0

    goto :goto_28

    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v51    # "location":Lcom/android/server/LocationManagerService;
    :catchall_1f
    move-exception v0

    move-object/from16 v8, v51

    .line 1522
    .end local v51    # "location":Lcom/android/server/LocationManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :goto_28
    const-string/jumbo v6, "starting Location Manager"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1524
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_29
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1526
    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1528
    :try_start_2a
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v15}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_21

    move-object v6, v0

    .line 1529
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v6, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2b
    const-string v0, "country_detector"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_20

    .line 1532
    move-object/from16 v18, v6

    goto :goto_2b

    .line 1530
    :catchall_20
    move-exception v0

    goto :goto_2a

    .end local v6    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_21
    move-exception v0

    move-object/from16 v6, v52

    .line 1531
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_2a
    move-object/from16 v18, v6

    .end local v6    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v18, "countryDetector":Lcom/android/server/CountryDetectorService;
    const-string/jumbo v6, "starting Country Detector"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1533
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1535
    const/4 v6, 0x1

    .line 1537
    .local v6, "useNewTimeServices":Z
    const-string v0, "StartTimeDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1539
    :try_start_2c
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_23

    move/from16 v42, v6

    .end local v6    # "useNewTimeServices":Z
    .local v42, "useNewTimeServices":Z
    :try_start_2d
    const-string v6, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_22

    .line 1542
    goto :goto_2d

    .line 1540
    :catchall_22
    move-exception v0

    goto :goto_2c

    .end local v42    # "useNewTimeServices":Z
    .restart local v6    # "useNewTimeServices":Z
    :catchall_23
    move-exception v0

    move/from16 v42, v6

    .line 1541
    .end local v6    # "useNewTimeServices":Z
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v42    # "useNewTimeServices":Z
    :goto_2c
    const-string/jumbo v6, "starting StartTimeDetectorService service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1543
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1546
    if-nez v36, :cond_1b

    .line 1547
    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1549
    :try_start_2e
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_24

    .line 1552
    goto :goto_2e

    .line 1550
    :catchall_24
    move-exception v0

    .line 1551
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1553
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1556
    :cond_1b
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x111007d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1557
    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1558
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1559
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1562
    :cond_1c
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1563
    if-nez v37, :cond_1d

    .line 1564
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v48, v7

    move-object/from16 v51, v8

    goto :goto_30

    .line 1566
    :cond_1d
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1040171

    .line 1567
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1569
    .local v6, "className":Ljava/lang/String;
    :try_start_2f
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_27

    move-object/from16 v48, v7

    .end local v7    # "notification":Landroid/app/INotificationManager;
    .restart local v48    # "notification":Landroid/app/INotificationManager;
    :try_start_30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_26

    move-object/from16 v51, v8

    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v51    # "location":Lcom/android/server/LocationManagerService;
    :try_start_31
    const-string v8, "$Lifecycle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_25

    .line 1572
    goto :goto_30

    .line 1570
    :catchall_25
    move-exception v0

    goto :goto_2f

    .end local v51    # "location":Lcom/android/server/LocationManagerService;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catchall_26
    move-exception v0

    move-object/from16 v51, v8

    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v51    # "location":Lcom/android/server/LocationManagerService;
    goto :goto_2f

    .end local v48    # "notification":Landroid/app/INotificationManager;
    .end local v51    # "location":Lcom/android/server/LocationManagerService;
    .restart local v7    # "notification":Landroid/app/INotificationManager;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catchall_27
    move-exception v0

    move-object/from16 v48, v7

    move-object/from16 v51, v8

    .line 1571
    .end local v7    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v48    # "notification":Landroid/app/INotificationManager;
    .restart local v51    # "location":Lcom/android/server/LocationManagerService;
    :goto_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1574
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "className":Ljava/lang/String;
    :goto_30
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1576
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.broadcastradio"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1577
    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1578
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1579
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1582
    :cond_1e
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1583
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1584
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1586
    if-eqz v36, :cond_1f

    .line 1587
    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1588
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1589
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1592
    :cond_1f
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1595
    :try_start_32
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v15, v14}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v14, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_28

    .line 1599
    goto :goto_31

    .line 1597
    :catchall_28
    move-exception v0

    .line 1598
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1600
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_31
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1602
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.midi"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1604
    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1605
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1606
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1610
    :cond_20
    const-string v0, "StartAdbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1612
    :try_start_33
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_29

    .line 1615
    goto :goto_32

    .line 1613
    :catchall_29
    move-exception v0

    .line 1614
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting AdbService"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_32
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1618
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1619
    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz v34, :cond_22

    .line 1623
    :cond_21
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1624
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1625
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1628
    :cond_22
    if-nez v36, :cond_23

    .line 1629
    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1632
    :try_start_34
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v15}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2b

    move-object v6, v0

    .line 1633
    .end local v21    # "serial":Lcom/android/server/SerialService;
    .local v6, "serial":Lcom/android/server/SerialService;
    :try_start_35
    const-string/jumbo v0, "serial"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2a

    .line 1636
    goto :goto_34

    .line 1634
    :catchall_2a
    move-exception v0

    goto :goto_33

    .end local v6    # "serial":Lcom/android/server/SerialService;
    .restart local v21    # "serial":Lcom/android/server/SerialService;
    :catchall_2b
    move-exception v0

    move-object/from16 v6, v21

    .line 1635
    .end local v21    # "serial":Lcom/android/server/SerialService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "serial":Lcom/android/server/SerialService;
    :goto_33
    const-string v7, "Failure starting SerialService"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1637
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v21, v6

    .line 1640
    .end local v6    # "serial":Lcom/android/server/SerialService;
    .restart local v21    # "serial":Lcom/android/server/SerialService;
    :cond_23
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1642
    :try_start_36
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v15}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_2d

    move-object v6, v0

    .line 1643
    .end local v24    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v6, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_37
    const-string v0, "hardware_properties"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_2c

    .line 1647
    move-object/from16 v24, v6

    goto :goto_36

    .line 1645
    :catchall_2c
    move-exception v0

    goto :goto_35

    .end local v6    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v24    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catchall_2d
    move-exception v0

    move-object/from16 v6, v24

    .line 1646
    .end local v24    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_35
    const-string v7, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v24, v6

    .line 1648
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v24    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_36
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1650
    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1651
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1652
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1654
    const-string v0, "StartColorDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1655
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1656
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1658
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1659
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1660
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1662
    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1663
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1664
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1666
    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1667
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1668
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1670
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1671
    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1672
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1673
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1676
    :cond_24
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1677
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110069

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1678
    :cond_25
    const-string v0, "StartAppWidgetService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1679
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1680
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1684
    :cond_26
    const-string v0, "StartRoleManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1685
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/role/RoleManagerService;

    iget-object v7, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;

    invoke-direct {v8, v7}, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;-><init>(Landroid/content/Context;)V

    invoke-direct {v6, v7, v8}, Lcom/android/server/role/RoleManagerService;-><init>(Landroid/content/Context;Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;)V

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1687
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1693
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1694
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1695
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1697
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1698
    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1699
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1700
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1702
    :cond_27
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1703
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1704
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1706
    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1707
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1708
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1710
    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1712
    :try_start_38
    const-string v0, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v15}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2e

    .line 1715
    goto :goto_37

    .line 1713
    :catchall_2e
    move-exception v0

    .line 1714
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1716
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_37
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1718
    const-string v0, "RuntimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1720
    :try_start_39
    const-string/jumbo v0, "runtime"

    new-instance v6, Lcom/android/server/RuntimeService;

    invoke-direct {v6, v15}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2f

    .line 1723
    goto :goto_38

    .line 1721
    :catchall_2f
    move-exception v0

    .line 1722
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting RuntimeService"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1724
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_38
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1730
    iget-boolean v0, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_28

    .line 1731
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x111007c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_39

    :cond_28
    const/4 v0, 0x0

    :goto_39
    move v6, v0

    .line 1733
    .local v6, "startRulesManagerService":Z
    if-eqz v6, :cond_29

    .line 1734
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1735
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1736
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1739
    :cond_29
    if-nez v36, :cond_2a

    if-nez v29, :cond_2a

    .line 1740
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1743
    :try_start_3a
    new-instance v0, Lcom/android/server/NewNetworkTimeUpdateService;

    invoke-direct {v0, v15}, Lcom/android/server/NewNetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_31

    move-object v7, v0

    .line 1747
    .end local v22    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v7, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using networkTimeUpdater class="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_30

    .line 1751
    move-object/from16 v22, v7

    goto :goto_3b

    .line 1749
    :catchall_30
    move-exception v0

    goto :goto_3a

    .end local v7    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v22    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catchall_31
    move-exception v0

    move-object/from16 v7, v22

    .line 1750
    .end local v22    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_3a
    const-string/jumbo v8, "starting NetworkTimeUpdate service"

    invoke-direct {v5, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v22, v7

    .line 1752
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v7    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v22    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_3b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1755
    :cond_2a
    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1757
    :try_start_3c
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v15}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_32

    .line 1760
    goto :goto_3c

    .line 1758
    :catchall_32
    move-exception v0

    .line 1759
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CertBlacklister"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1761
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1765
    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1766
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1767
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1771
    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1772
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1773
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1775
    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1776
    new-instance v0, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v0, v15}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    const-string v7, "graphicsstats"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1778
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1780
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_2b

    .line 1781
    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1782
    new-instance v0, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v0}, Lcom/android/server/coverage/CoverageService;-><init>()V

    const-string v7, "coverage"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1783
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1786
    :cond_2b
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1787
    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1788
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1789
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1792
    :cond_2c
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.companion_device_setup"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1793
    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1794
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1795
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1798
    :cond_2d
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1799
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1800
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1802
    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1803
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1804
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1806
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1807
    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1808
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1809
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1812
    :cond_2e
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "android.software.leanback"

    if-nez v0, :cond_2f

    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1813
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1814
    :cond_2f
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1815
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1816
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1819
    :cond_30
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.picture_in_picture"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1820
    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1821
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1822
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1825
    :cond_31
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1826
    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1827
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1828
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1831
    :cond_32
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1833
    :try_start_3d
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v15}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_34

    move-object v7, v0

    .line 1834
    .end local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v7, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3e
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_33

    .line 1837
    goto :goto_3e

    .line 1835
    :catchall_33
    move-exception v0

    goto :goto_3d

    .end local v7    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_34
    move-exception v0

    move-object/from16 v7, v33

    .line 1836
    .end local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v7    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_3d
    const-string/jumbo v8, "starting MediaRouterService"

    invoke-direct {v5, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1838
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1840
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1841
    const-string v8, "android.hardware.biometrics.face"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 1842
    .local v8, "hasFeatureFace":Z
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1843
    const-string v10, "android.hardware.biometrics.iris"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    .line 1844
    .local v10, "hasFeatureIris":Z
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1845
    move/from16 v52, v6

    .end local v6    # "startRulesManagerService":Z
    .local v52, "startRulesManagerService":Z
    const-string v6, "android.hardware.fingerprint"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1847
    .local v6, "hasFeatureFingerprint":Z
    if-eqz v8, :cond_33

    .line 1848
    const-string v0, "StartFaceSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1849
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v33, v7

    .end local v7    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const-class v7, Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1850
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_3f

    .line 1847
    .end local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v7    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_33
    move-object/from16 v33, v7

    .line 1853
    .end local v7    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_3f
    if-eqz v10, :cond_34

    .line 1854
    const-string v0, "StartIrisSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1855
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/iris/IrisService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1856
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1859
    :cond_34
    if-eqz v6, :cond_35

    .line 1860
    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1861
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1862
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1865
    :cond_35
    if-nez v8, :cond_36

    if-nez v10, :cond_36

    if-eqz v6, :cond_37

    .line 1867
    :cond_36
    const-string v0, "StartBiometricService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1868
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1869
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1872
    :cond_37
    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1874
    :try_start_3f
    invoke-static {v15}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_35

    .line 1877
    goto :goto_40

    .line 1875
    :catchall_35
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1876
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting StartBackgroundDexOptService"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1878
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_40
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1880
    if-nez v36, :cond_38

    .line 1883
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1885
    :try_start_40
    invoke-static {v15}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_36

    .line 1888
    goto :goto_41

    .line 1886
    :catchall_36
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1887
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DynamicCodeLoggingService"

    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1889
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_41
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1892
    :cond_38
    if-nez v36, :cond_39

    .line 1893
    const-string v7, "StartPruneInstantAppsJobService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1895
    :try_start_41
    invoke-static {v15}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_37

    .line 1898
    goto :goto_42

    .line 1896
    :catchall_37
    move-exception v0

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    .line 1897
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-direct {v5, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1899
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_42
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1903
    :cond_39
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1904
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1905
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1907
    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1908
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1909
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1911
    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1912
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1913
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v52, v18

    move-object/from16 v13, v25

    move-object/from16 v18, v16

    move-object/from16 v25, v22

    move-object/from16 v22, v19

    move-object/from16 v19, v17

    move-object/from16 v64, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v26

    move-object/from16 v26, v24

    move-object/from16 v24, v64

    goto :goto_43

    .line 1256
    .end local v13    # "hasGsi":Z
    .end local v49    # "lastVersion":Ljava/lang/String;
    .end local v50    # "hasPdb":Z
    .end local v51    # "location":Lcom/android/server/LocationManagerService;
    .end local v52    # "startRulesManagerService":Z
    .end local v53    # "curVersion":Ljava/lang/String;
    .end local v54    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v6, "lastVersion":Ljava/lang/String;
    .local v8, "location":Lcom/android/server/LocationManagerService;
    .local v10, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v12, "curVersion":Ljava/lang/String;
    .local v18, "connectivity":Lcom/android/server/ConnectivityService;
    .local v41, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v42, "ipSecService":Lcom/android/server/IpSecService;
    :cond_3a
    move-object/from16 v49, v6

    move-object/from16 v51, v8

    move-object/from16 v52, v10

    move-object/from16 v53, v12

    .end local v6    # "lastVersion":Ljava/lang/String;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .end local v10    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v12    # "curVersion":Ljava/lang/String;
    .restart local v49    # "lastVersion":Ljava/lang/String;
    .restart local v51    # "location":Lcom/android/server/LocationManagerService;
    .local v52, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "curVersion":Ljava/lang/String;
    move-object/from16 v13, v25

    move-object/from16 v12, v26

    move-object/from16 v54, v41

    move-object/from16 v41, v42

    move-object/from16 v25, v22

    move-object/from16 v26, v24

    move-object/from16 v22, v19

    move-object/from16 v24, v21

    move-object/from16 v19, v17

    move-object/from16 v21, v18

    move-object/from16 v18, v16

    .line 1916
    .end local v16    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v17    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v42    # "ipSecService":Lcom/android/server/IpSecService;
    .local v12, "wigigService":Ljava/lang/Object;
    .local v13, "wigigP2pService":Ljava/lang/Object;
    .local v18, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v19, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v21, "connectivity":Lcom/android/server/ConnectivityService;
    .local v22, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v24, "serial":Lcom/android/server/SerialService;
    .local v25, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v26, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v41, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v54    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_43
    if-nez v36, :cond_3b

    .line 1917
    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1918
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1919
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1922
    :cond_3b
    if-eqz v36, :cond_3d

    .line 1924
    const-string v0, "StartWearPowerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1925
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1926
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1928
    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1929
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1930
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1932
    const-string v0, "StartWearDisplayService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1933
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1934
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1936
    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1937
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1938
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1940
    if-eqz v32, :cond_3c

    .line 1941
    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1942
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1943
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1946
    :cond_3c
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1947
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1948
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1951
    :cond_3d
    if-nez v31, :cond_3e

    .line 1952
    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1953
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1954
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1957
    :cond_3e
    if-nez v30, :cond_3f

    .line 1958
    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1959
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1960
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1963
    :cond_3f
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.type.embedded"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1964
    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1965
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1966
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1970
    :cond_40
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1971
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1972
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1975
    const-string v0, "StartIncidentCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1976
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1977
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1979
    if-eqz v11, :cond_41

    .line 1980
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1984
    :cond_41
    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1985
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/MmsServiceBroker;

    .line 1986
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1988
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.autofill"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1989
    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1990
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1991
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1995
    :cond_42
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1996
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1997
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1999
    const-string v0, "AppServiceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2000
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2001
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2005
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2007
    :try_start_42
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_38

    .line 2010
    goto :goto_44

    .line 2008
    :catchall_38
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 2009
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Vibrator Service ready"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2011
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_44
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2013
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2014
    if-eqz v20, :cond_43

    .line 2016
    :try_start_43
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_39

    .line 2019
    goto :goto_45

    .line 2017
    :catchall_39
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 2018
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Lock Settings Service ready"

    invoke-direct {v5, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2021
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_43
    :goto_45
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2024
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2025
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2026
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2028
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2029
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2030
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2034
    if-eqz v35, :cond_44

    .line 2036
    :try_start_44
    const-string v0, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2038
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2039
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v7, v8, v10

    invoke-virtual {v4, v13, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 2043
    .local v7, "wigigClass":Ljava/lang/Class;
    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v8, v10, v16

    invoke-virtual {v7, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2044
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x0

    aput-object v4, v8, v6

    invoke-virtual {v1, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_3a

    .line 2048
    nop

    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v7    # "wigigClass":Ljava/lang/Class;
    goto :goto_46

    .line 2046
    :catchall_3a
    move-exception v0

    .line 2047
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Wigig services ready"

    invoke-direct {v5, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2051
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_44
    :goto_46
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2054
    :try_start_45
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_3b

    .line 2057
    goto :goto_47

    .line 2055
    :catchall_3b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2056
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making Window Manager Service ready"

    invoke-direct {v5, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2058
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_47
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2060
    if-eqz v11, :cond_45

    .line 2061
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2067
    :cond_45
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 2068
    .local v4, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v1, v0

    .line 2069
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v15, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v42, v0

    check-cast v42, Landroid/view/WindowManager;

    .line 2070
    .local v42, "w":Landroid/view/WindowManager;
    invoke-interface/range {v42 .. v42}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2071
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2074
    invoke-virtual {v15}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v50

    .line 2075
    .local v50, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v50 .. v50}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_46

    .line 2076
    invoke-virtual/range {v50 .. v50}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2079
    :cond_46
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2082
    :try_start_46
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_3c

    .line 2085
    goto :goto_48

    .line 2083
    :catchall_3c
    move-exception v0

    .line 2084
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "making Power Manager Service ready"

    invoke-direct {v5, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2086
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_48
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2089
    const-string v0, "StartPermissionPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2090
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2091
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2093
    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2094
    iget-object v0, v5, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 2095
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2097
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2100
    :try_start_47
    iget-object v0, v5, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v2, v5, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v11, v2}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_3d

    .line 2103
    goto :goto_49

    .line 2101
    :catchall_3d
    move-exception v0

    .line 2102
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "making Display Manager Service ready"

    invoke-direct {v5, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2104
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_49
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2106
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2109
    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2110
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x107002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2112
    .local v2, "classes":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x0

    :goto_4a
    if-ge v7, v6, :cond_47

    aget-object v8, v2, v7

    .line 2113
    .local v8, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StartDeviceSpecificServices "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2115
    :try_start_48
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_3e

    .line 2118
    goto :goto_4b

    .line 2116
    :catchall_3e
    move-exception v0

    .line 2117
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2119
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2112
    .end local v8    # "className":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    .line 2121
    :cond_47
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2123
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2124
    iget-object v0, v5, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x208

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2125
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2129
    invoke-static {v15}, Lcom/android/server/am/OpORMServiceInjector;->startORMServiceAppIfNeed(Landroid/content/Context;)V

    .line 2134
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/16 v6, 0x57

    const/16 v16, 0x0

    aput v6, v0, v16

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2135
    invoke-static {v15}, Lcom/android/server/SystemServer;->startCoreServiceApp(Landroid/content/Context;)V

    .line 2140
    :cond_48
    move-object/from16 v7, v54

    .line 2141
    .local v7, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v10, v18

    .line 2142
    .local v10, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v8, v19

    .line 2143
    .local v8, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v39, v49

    .end local v49    # "lastVersion":Ljava/lang/String;
    .local v39, "lastVersion":Ljava/lang/String;
    move-object/from16 v6, v21

    .line 2144
    .local v6, "connectivityF":Lcom/android/server/ConnectivityService;
    move/from16 v45, v11

    .end local v11    # "safeMode":Z
    .local v45, "safeMode":Z
    move-object/from16 v11, v51

    .line 2145
    .local v11, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v49, v53

    move-object/from16 v53, v12

    .end local v12    # "wigigService":Ljava/lang/Object;
    .local v49, "curVersion":Ljava/lang/String;
    .local v53, "wigigService":Ljava/lang/Object;
    move-object/from16 v12, v52

    .line 2146
    .local v12, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v55, v13

    move/from16 v56, v16

    .end local v13    # "wigigP2pService":Ljava/lang/Object;
    .local v55, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v13, v25

    .line 2147
    .local v13, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v57, v14

    .line 2148
    .local v14, "inputManagerF":Lcom/android/server/input/InputManagerService;
    .local v57, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v58, v15

    .end local v15    # "context":Landroid/content/Context;
    .local v58, "context":Landroid/content/Context;
    move-object/from16 v15, v40

    .line 2149
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v16, v33

    .line 2150
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v23

    .line 2151
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v59, v9

    .end local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v59, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v9, v41

    .line 2152
    .local v9, "ipSecServiceF":Lcom/android/server/IpSecService;
    move-object/from16 v60, v4

    .end local v4    # "config":Landroid/content/res/Configuration;
    .local v60, "config":Landroid/content/res/Configuration;
    move-object/from16 v4, v59

    .line 2159
    .local v4, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    iget-object v0, v5, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v61, v0

    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$RIWNR87PnJ4Y6VHItRXU0J6ocqQ;

    move-object/from16 v62, v1

    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .local v62, "metrics":Landroid/util/DisplayMetrics;
    move-object v1, v0

    move-object/from16 v63, v2

    .end local v2    # "classes":[Ljava/lang/String;
    .local v63, "classes":[Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, v58

    move/from16 v5, v45

    invoke-direct/range {v1 .. v17}, Lcom/android/server/-$$Lambda$SystemServer$RIWNR87PnJ4Y6VHItRXU0J6ocqQ;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v61

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2388
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v1, 0x36

    aput v1, v0, v56

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2389
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v0

    move-object/from16 v1, v58

    .end local v58    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->getPCBNumber(Landroid/content/Context;)V

    goto :goto_4c

    .line 2388
    .end local v1    # "context":Landroid/content/Context;
    .restart local v58    # "context":Landroid/content/Context;
    :cond_49
    move-object/from16 v1, v58

    .line 2391
    .end local v58    # "context":Landroid/content/Context;
    .restart local v1    # "context":Landroid/content/Context;
    :goto_4c
    return-void
.end method

.method private static native startSensorService()V
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2394
    const v0, 0x1040169

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2396
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2397
    const-string v1, "SystemServer"

    const-string v2, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    return-void

    .line 2401
    :cond_0
    const-string v1, "StartSystemCaptionsManagerService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2402
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2403
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2404
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 2455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2456
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2458
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2460
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2461
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2462
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2474
    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2476
    return-void
.end method

.method private static traceEnd()V
    .locals 1

    .line 2479
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2480
    return-void
.end method


# virtual methods
.method public synthetic lambda$startOtherServices$3$SystemServer()V
    .locals 5

    .line 2179
    const-string v0, "WebViewFactoryPreparation"

    const-string v1, "SystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v2, "SystemServerTimingAsync"

    const-wide/32 v3, 0x80000

    invoke-direct {v1, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 2182
    .local v1, "traceLog":Landroid/util/TimingsTraceLog;
    invoke-virtual {v1, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2183
    iget-object v0, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v0, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 2185
    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 2186
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2187
    return-void
.end method

.method public synthetic lambda$startOtherServices$4$SystemServer(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "safeMode"    # Z
    .param p4, "connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p5, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p6, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p7, "ipSecServiceF"    # Lcom/android/server/IpSecService;
    .param p8, "networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p9, "locationF"    # Lcom/android/server/LocationManagerService;
    .param p10, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p11, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p12, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p13, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p14, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p15, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .line 2160
    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    const-string v0, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2162
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x226

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2164
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2165
    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2167
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    goto :goto_0

    .line 2168
    :catchall_0
    move-exception v0

    .line 2169
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "observing native crashes"

    invoke-direct {p0, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2171
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2175
    const-string v4, "WebViewFactoryPreparation"

    .line 2176
    .local v4, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2177
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v5, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v6, "WebViewFactoryPreparation"

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v5, :cond_0

    .line 2178
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    new-instance v7, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    invoke-virtual {v5, v7, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 2190
    :cond_0
    move-object v5, v0

    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v5, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.type.automotive"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2191
    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2192
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2193
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2196
    :cond_1
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2198
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2201
    goto :goto_2

    .line 2199
    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2200
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting System UI"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2202
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2208
    if-eqz p3, :cond_2

    .line 2209
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2211
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p4, v0}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2214
    goto :goto_3

    .line 2212
    :catchall_2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2213
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2215
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2217
    :cond_2
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2219
    if-eqz p5, :cond_3

    .line 2220
    :try_start_3
    invoke-virtual {p5}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    .line 2222
    :catchall_3
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2223
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Managment Service ready"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2224
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_4
    nop

    .line 2225
    :goto_5
    const/4 v0, 0x0

    .line 2226
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v3, :cond_4

    .line 2227
    nop

    .line 2228
    invoke-virtual {p6}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v7, v0

    goto :goto_6

    .line 2226
    :cond_4
    move-object v7, v0

    .line 2230
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v7, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2231
    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2233
    if-eqz p7, :cond_5

    .line 2234
    :try_start_4
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_7

    .line 2236
    :catchall_4
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2237
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making IpSec Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 2238
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_7
    nop

    .line 2239
    :goto_8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2240
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2242
    if-eqz p8, :cond_6

    .line 2243
    :try_start_5
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_9

    .line 2245
    :catchall_5
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2246
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Network Stats Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 2247
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_9
    nop

    .line 2248
    :goto_a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2249
    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2251
    if-eqz v2, :cond_7

    .line 2252
    :try_start_6
    invoke-virtual {p4}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_b

    .line 2254
    :catchall_6
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2255
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Connectivity Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 2256
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_b
    nop

    .line 2257
    :goto_c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2258
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2260
    if-eqz v3, :cond_8

    .line 2261
    :try_start_7
    invoke-virtual {p6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_d

    .line 2263
    :catchall_7
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2264
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Network Policy Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 2265
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_8
    :goto_d
    nop

    .line 2266
    :goto_e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2269
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 2273
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2275
    if-eqz v5, :cond_9

    .line 2276
    invoke-static {v5, v6}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2278
    :cond_9
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x258

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2280
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2284
    const-string v0, "MakeOneplusContextStubReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2286
    :try_start_8
    invoke-static {}, Lcom/oneplus/android/server/context/OneplusContextStub;->getInstance()Lcom/oneplus/android/server/context/IOneplusContextStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/android/server/context/IOneplusContextStub;->systemReady()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 2289
    goto :goto_f

    .line 2287
    :catchall_8
    move-exception v0

    .line 2288
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making OneplusContextStub ready"

    invoke-direct {p0, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2290
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2293
    const-string v0, "StartNetworkStack"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2300
    :try_start_9
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    move-object v6, p1

    :try_start_a
    invoke-virtual {v0, p1}, Landroid/net/NetworkStackClient;->start(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 2303
    goto :goto_11

    .line 2301
    :catchall_9
    move-exception v0

    goto :goto_10

    :catchall_a
    move-exception v0

    move-object v6, p1

    .line 2302
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_10
    const-string/jumbo v8, "starting Network Stack"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2304
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_11
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2306
    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2308
    if-eqz p9, :cond_a

    .line 2309
    :try_start_b
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_12

    .line 2311
    :catchall_b
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2312
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying Location Service running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 2313
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_a
    :goto_12
    nop

    .line 2314
    :goto_13
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2315
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2317
    if-eqz p10, :cond_b

    .line 2318
    :try_start_c
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_14

    .line 2320
    :catchall_c
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2321
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying CountryDetectorService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 2322
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_b
    :goto_14
    nop

    .line 2323
    :goto_15
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2324
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2326
    if-eqz p11, :cond_c

    .line 2327
    :try_start_d
    invoke-interface/range {p11 .. p11}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_16

    .line 2329
    :catchall_d
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2330
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying NetworkTimeService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 2331
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_c
    :goto_16
    nop

    .line 2332
    :goto_17
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2333
    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2336
    if-eqz p12, :cond_d

    .line 2337
    :try_start_e
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_18

    .line 2339
    :catchall_e
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2340
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying InputManagerService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    .line 2341
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_d
    :goto_18
    nop

    .line 2342
    :goto_19
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2343
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2345
    if-eqz p13, :cond_e

    .line 2346
    :try_start_f
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_1a

    .line 2348
    :catchall_f
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2349
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 2350
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_e
    :goto_1a
    nop

    .line 2351
    :goto_1b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2352
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2354
    if-eqz p14, :cond_f

    .line 2355
    :try_start_10
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    goto :goto_1c

    .line 2357
    :catchall_10
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2358
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying MediaRouterService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 2359
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_f
    :goto_1c
    nop

    .line 2360
    :goto_1d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2361
    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2363
    if-eqz p15, :cond_10

    .line 2364
    :try_start_11
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    goto :goto_1e

    .line 2366
    :catchall_11
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2367
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v8, "Notifying MmsService running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 2368
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_10
    :goto_1e
    nop

    .line 2369
    :goto_1f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2371
    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2375
    :try_start_12
    const-string v0, "incident"

    .line 2376
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2375
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2377
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_11

    .line 2378
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 2382
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_11
    goto :goto_20

    .line 2380
    :catchall_12
    move-exception v0

    .line 2381
    .local v0, "e":Ljava/lang/Throwable;
    const-string v8, "Notifying incident daemon running"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2383
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_20
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2384
    return-void
.end method
