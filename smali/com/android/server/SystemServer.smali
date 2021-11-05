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

.field private static final BLOB_STORE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.blob.BlobStoreManagerService"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030403

.field private static final DEVICE_IDLE_CONTROLLER_CLASS:Ljava/lang/String; = "com.android.server.DeviceIdleController"

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

.field private static final ROLLBACK_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.rollback.RollbackManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_BLOB_STORE_SERVICE:Ljava/lang/String; = "startBlobStoreManagerService"

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STATS_COMPANION_APEX_PATH:Ljava/lang/String; = "/apex/com.android.os.statsd/javalib/service-statsd.jar"

.field private static final STATS_COMPANION_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.StatsCompanion$Lifecycle"

.field private static final STATS_PULL_ATOM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.stats.pull.StatsPullAtomService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field private static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field private static final SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.systemcaptions.SystemCaptionsManagerService"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final TETHERING_CONNECTOR_CLASS:Ljava/lang/String; = "android.net.ITetheringConnector"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field private static final TIME_ZONE_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

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

.field private static sPendingWtfs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationErrorReport$CrashInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mBlobStoreServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIncrementalServiceHandle:J

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
.method public constructor <init>()V
    .locals 4

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 441
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 446
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 449
    iget-wide v2, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v2, v3, v0, v1}, Landroid/os/Process;->setStartTimes(JJ)V

    .line 455
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 456
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .line 727
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 728
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 729
    const v2, 0x1030403

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 731
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 732
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 733
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 2601
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2602
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 8
    .param p0, "app"    # Landroid/os/IBinder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "system"    # Z
    .param p3, "crashInfo"    # Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .param p4, "immediateCallerPid"    # I

    .line 2696
    const-string/jumbo v0, "system_server"

    .line 2697
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 2699
    .local v7, "myPid":I
    const/16 v1, 0x3e8

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v6, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    const-string/jumbo v3, "system_server"

    const/4 v4, -0x1

    move v2, v7

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2702
    const/16 v1, 0x50

    const/16 v2, 0x3e8

    const-string/jumbo v4, "system_server"

    const/4 v6, 0x3

    move-object v3, p1

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 2705
    const-class v1, Lcom/android/server/SystemServer;

    monitor-enter v1

    .line 2706
    :try_start_0
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 2707
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 2709
    :cond_0
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2710
    monitor-exit v1

    .line 2711
    const/4 v1, 0x0

    return v1

    .line 2710
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private isFirstBootOrUpgrade()Z
    .locals 1

    .line 664
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

.method public static synthetic lambda$-CPwHnC0JLmQ1R_LlAGbc_jvNjw(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .locals 2

    .line 972
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 973
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 974
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 975
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 976
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .locals 5

    .line 1105
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1107
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1108
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    const-string v0, "Unable to preload default resources"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1115
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .locals 2

    .line 1225
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1226
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1227
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1228
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1229
    return-void
.end method

.method static synthetic lambda$startOtherServices$5(Landroid/os/IBinder;)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBinder;

    .line 2511
    const-string/jumbo v0, "tethering"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p0, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2514
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 436
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 437
    return-void
.end method

.method private performPendingShutdown()V
    .locals 9

    .line 673
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 676
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

    .line 679
    .local v3, "reboot":Z
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 680
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_1

    .line 682
    .end local v4    # "reason":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 690
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 691
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 693
    const/4 v7, 0x0

    .line 695
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v2

    .line 698
    goto :goto_2

    .line 696
    :catch_0
    move-exception v2

    .line 697
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v7, :cond_2

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 701
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 702
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void

    .line 709
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 719
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 720
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 721
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 724
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

    .line 668
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    return-void
.end method

.method private run()V
    .locals 18

    .line 459
    move-object/from16 v1, p0

    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v2, "persist.sys.timezone"

    const-string v3, ""

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 461
    .local v4, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_0
    const-string v5, "InitBeforeStartServices"

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v5, "sys.system_server.start_count"

    iget v6, v1, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v5, "sys.system_server.start_elapsed"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string/jumbo v5, "sys.system_server.start_uptime"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/16 v5, 0xbc3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v1, Lcom/android/server/SystemServer;->mStartCount:I

    .line 469
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-wide v9, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-wide v10, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    .line 468
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 474
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 475
    .local v5, "timezoneProperty":Ljava/lang/String;
    const-string v6, "SystemServer"

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_0

    .line 618
    .end local v5    # "timezoneProperty":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v7, v4

    goto/16 :goto_2

    .line 476
    .restart local v5    # "timezoneProperty":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    const-string v7, "Timezone not set; setting to GMT."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v7, "GMT"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v2, :cond_2

    .line 489
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "languageTag":Ljava/lang/String;
    const-string/jumbo v7, "persist.sys.locale"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    .end local v2    # "languageTag":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-static {v9}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 500
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 503
    const-string v0, "FULL"

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 506
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 509
    const-string v0, "Entered the Android system server!"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 511
    .local v10, "uptimeMillis":J
    const/16 v0, 0xbc2

    invoke-static {v0, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 512
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/16 v3, 0xf0

    if-nez v0, :cond_3

    .line 513
    const/16 v0, 0x13

    :try_start_5
    invoke-static {v3, v0, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 526
    :cond_3
    :try_start_6
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 533
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 537
    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 541
    invoke-static {v9}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 544
    invoke-static {v9}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 547
    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 550
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 553
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 555
    invoke-static {v8}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 556
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 557
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v12, 0x64

    const-wide/16 v14, 0xc8

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 560
    sput-boolean v9, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 563
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 577
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_4

    :try_start_7
    const-string/jumbo v0, "ro.boot.qe"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 579
    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 584
    :cond_4
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 590
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 593
    new-instance v12, Lcom/android/server/SystemServiceManager;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 594
    iget-boolean v13, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v14, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v7, v4

    .end local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v7, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_9
    iget-wide v3, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide/from16 v16, v3

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 596
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 598
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()V

    .line 600
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-string v3, "System"

    if-eqz v0, :cond_5

    .line 602
    :try_start_a
    const-string/jumbo v0, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 603
    .local v4, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 604
    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v12, v0

    .line 605
    .local v12, "equalIndex":I
    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 606
    .local v8, "libraryPath":Ljava/lang/String;
    add-int/lit8 v0, v12, 0x1

    .line 607
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v13, v0

    .line 610
    .local v13, "parameterList":Ljava/lang/String;
    :try_start_b
    invoke-static {v8, v13, v2}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 614
    goto :goto_1

    .line 611
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v14, "*************************************************"

    invoke-static {v3, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "********** Failed to load jvmti plugin: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 618
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "jvmtiAgent":Ljava/lang/String;
    .end local v5    # "timezoneProperty":Ljava/lang/String;
    .end local v8    # "libraryPath":Ljava/lang/String;
    .end local v10    # "uptimeMillis":J
    .end local v12    # "equalIndex":I
    .end local v13    # "parameterList":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 619
    nop

    .line 622
    sget-object v0, Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 626
    :try_start_d
    const-string v0, "StartServices"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 627
    invoke-direct {v1, v7}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 628
    invoke-direct {v1, v7}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 629
    invoke-direct {v1, v7}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 635
    invoke-virtual {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 636
    nop

    .line 638
    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 640
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_6

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 642
    .local v2, "uptimeMillis":J
    const/16 v0, 0x14

    const/16 v4, 0xf0

    invoke-static {v4, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 645
    const-wide/32 v4, 0xea60

    .line 646
    .local v4, "maxUptimeMillis":J
    const-wide/32 v8, 0xea60

    cmp-long v0, v2, v8

    if-lez v0, :cond_6

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "SystemServerTiming"

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v2    # "uptimeMillis":J
    .end local v4    # "maxUptimeMillis":J
    :cond_6
    invoke-static {}, Ldalvik/system/VMRuntime;->hasBootImageSpaces()Z

    move-result v0

    if-nez v0, :cond_7

    .line 655
    const-string v0, "Runtime is not running with a boot image!"

    invoke-static {v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_7
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 660
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :catchall_1
    move-exception v0

    .line 631
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_e
    const-string v2, "******************************************"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v2, "************ Failure starting system services"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    nop

    .end local v7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 635
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_2
    move-exception v0

    invoke-virtual {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 636
    throw v0

    .line 618
    :catchall_3
    move-exception v0

    goto :goto_2

    .end local v7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v4, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_4
    move-exception v0

    move-object v7, v4

    .end local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :goto_2
    invoke-virtual {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 619
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static native spawnFdLeakCheckThread()V
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2661
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2662
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    return-void

    .line 2666
    :cond_0
    const-string v0, "StartAttentionManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2667
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2668
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2669
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 14
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 742
    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "moveab"

    const-string/jumbo v2, "startBootstrapServices"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 746
    const-string v2, "StartWatchdog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 748
    .local v2, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 749
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 751
    const-string v3, "SystemServer"

    const-string v4, "Reading configuration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v4, "ReadingSystemConfig"

    .line 753
    .local v4, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v5, "ReadingSystemConfig"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 754
    sget-object v6, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    invoke-static {v6, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 755
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 759
    const-string v5, "PlatformCompat"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 760
    new-instance v5, Lcom/android/server/compat/PlatformCompat;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 761
    .local v5, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v6, "platform_compat"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 762
    new-instance v6, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v6, v5}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v7, "platform_compat_native"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 764
    const/4 v6, 0x0

    new-array v7, v6, [J

    invoke-static {v7}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 765
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 770
    const-string v7, "StartFileIntegrityService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 771
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 772
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 777
    const-string v7, "StartInstaller"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 778
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Installer;

    .line 779
    .local v7, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 783
    const-string v8, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 784
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 785
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 788
    const-string v8, "UriGrantsManagerService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 789
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 790
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 793
    const-string v8, "StartActivityManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 795
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 796
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v8

    .line 797
    .local v8, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v9, v8}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 799
    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 800
    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 801
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 802
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 805
    const-string v9, "StartDataLoaderManagerService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 806
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v9, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 808
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 811
    const-string v9, "StartIncrementalService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 812
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 813
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 819
    const-string v9, "StartPowerManager"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 820
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService;

    iput-object v9, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 821
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 823
    const-string v9, "StartThermalManager"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 824
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 825
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 829
    const-string v9, "InitPowerManagement"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 830
    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 831
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 834
    const-string v9, "StartRecoverySystemService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 835
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 836
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 841
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/RescueParty;->registerHealthObserver(Landroid/content/Context;)V

    .line 842
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 845
    const-string v9, "StartLightsService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 846
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/lights/LightsService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 847
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 849
    const-string v9, "StartSidekickService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 851
    const-string v9, "config.enable_sidekick_graphics"

    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 852
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 854
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 858
    const-string v9, "StartDisplayManager"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 859
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/DisplayManagerService;

    iput-object v9, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 860
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 863
    const-string v9, "WaitForDisplay"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 864
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x64

    invoke-virtual {v9, p1, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 865
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 868
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 869
    .local v9, "cryptState":Ljava/lang/String;
    const-string/jumbo v10, "trigger_restart_min_framework"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    .line 870
    const-string v10, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iput-boolean v11, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 872
    :cond_1
    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 873
    const-string v10, "Device encrypted - only parsing core apps"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iput-boolean v11, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 878
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v10, 0xf0

    if-nez v3, :cond_3

    .line 879
    const/16 v3, 0xe

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 879
    invoke-static {v10, v3, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 885
    :cond_3
    const-string v3, "StartPackageManagerService"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 887
    :try_start_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 888
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v12, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_4
    move v11, v6

    :goto_1
    iget-boolean v12, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v7, v11, v12}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 891
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 892
    nop

    .line 897
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->configureSystemServerDexReporter(Landroid/content/pm/IPackageManager;)V

    .line 899
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 900
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 901
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 902
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_5

    .line 903
    const/16 v0, 0xf

    .line 906
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 903
    invoke-static {v10, v0, v11, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 911
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_6

    .line 912
    const-string v0, "config.disable_otadexopt"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 914
    .local v0, "disableOtaDexopt":Z
    if-nez v0, :cond_6

    .line 915
    const-string v3, "StartOtaDexOptService"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 917
    :try_start_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 918
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v10}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 919
    :catchall_0
    move-exception v3

    .line 920
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v10, "starting OtaDexOptService"

    invoke-direct {p0, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 922
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 924
    goto :goto_3

    .line 922
    :catchall_1
    move-exception v3

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 924
    throw v3

    .line 928
    .end local v0    # "disableOtaDexopt":Z
    :cond_6
    :goto_3
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 930
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 933
    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 935
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 938
    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 940
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 944
    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 946
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 950
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 953
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 955
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 957
    const-string v0, "StartSensorPrivacyService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/SensorPrivacyService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 959
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 961
    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_7

    .line 963
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 964
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 971
    :cond_7
    sget-object v0, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v1, "StartSensorService"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 978
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 979
    return-void

    .line 891
    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 892
    throw v1
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2627
    const/4 v0, 0x0

    .line 2628
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2630
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_1

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2631
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2632
    if-eqz v0, :cond_0

    .line 2633
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2635
    :cond_0
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    return-void

    .line 2641
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 2642
    const v3, 0x1040201

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2643
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    return-void

    .line 2648
    :cond_2
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2649
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2651
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 2652
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 2653
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_3

    .line 2654
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 2657
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2658
    return-void
.end method

.method private static startCoreServiceApp(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2682
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2683
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.coreservice"

    const-string v3, "com.oneplus.coreservice.CoreService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2688
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 985
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 988
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 990
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 992
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 995
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 998
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1000
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1001
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1000
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1002
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1005
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1008
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1012
    :cond_0
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1014
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1017
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1019
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1022
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1024
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1027
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.rollback.RollbackManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1029
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1032
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1034
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1037
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1039
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1041
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1042
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startIncrementalService()J
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 63
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1048
    move-object/from16 v6, p0

    move-object/from16 v4, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1050
    iget-object v3, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1051
    .local v3, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1052
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    const/4 v2, 0x0

    .line 1053
    .local v2, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v5, 0x0

    .line 1054
    .local v5, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v13, 0x0

    .line 1055
    .local v13, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v14, 0x0

    .line 1056
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    const/4 v15, 0x0

    .line 1057
    .local v15, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v16, 0x0

    .line 1058
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v17, 0x0

    .line 1059
    .local v17, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v18, 0x0

    .line 1060
    .local v18, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v19, 0x0

    .line 1061
    .local v19, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v20, 0x0

    .line 1062
    .local v20, "serial":Lcom/android/server/SerialService;
    const/16 v21, 0x0

    .line 1063
    .local v21, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/4 v7, 0x0

    .line 1064
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v8, 0x0

    .line 1065
    .local v8, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v9, 0x0

    .line 1066
    .local v9, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v22, 0x0

    .line 1067
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v23, 0x0

    .line 1068
    .local v23, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v24, 0x0

    .line 1069
    .local v24, "wigigP2pService":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 1071
    .local v25, "wigigService":Ljava/lang/Object;
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v12, 0x0

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1074
    .local v26, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 1076
    .local v27, "disableNetworkTime":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 1078
    .local v28, "disableCameraService":Z
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 1080
    .local v29, "enableLeftyService":Z
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 1081
    .local v30, "isEmulator":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 1083
    .local v31, "enableWigig":Z
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.type.watch"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    .line 1086
    .local v32, "isWatch":Z
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v10, "org.chromium.arc"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v33

    .line 1089
    .local v33, "isArc":Z
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v34

    .line 1093
    .local v34, "enableVrService":Z
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.crash_system"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1098
    :cond_1
    :goto_0
    :try_start_0
    const-string v0, "SecondaryZygotePreload"

    .line 1103
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    sget-object v10, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    const-string v11, "SecondaryZygotePreload"

    invoke-static {v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1117
    const-string v10, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1118
    const-string/jumbo v10, "sec_key_att_app_id_provider"

    new-instance v11, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v11, v3}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1120
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1122
    const-string v10, "StartKeyChainSystemService"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1123
    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1124
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1126
    const-string v10, "StartSchedulingPolicyService"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v10, "scheduling_policy"

    new-instance v11, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v11}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1128
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1130
    const-string v10, "StartTelecomLoaderService"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1131
    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1132
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1134
    const-string v10, "StartTelephonyRegistry"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1135
    new-instance v10, Lcom/android/server/TelephonyRegistry;

    new-instance v11, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v11}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v10, v3, v11}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_45

    move-object v11, v10

    .line 1137
    .end local v8    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v11, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v8, "telephony.registry"

    invoke-static {v8, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1138
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1140
    const-string v8, "StartEntropyMixer"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1141
    new-instance v8, Lcom/android/server/EntropyMixer;

    invoke-direct {v8, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v8, v6, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1144
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1147
    const-string v8, "StartAccountManagerService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1148
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1149
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1151
    const-string v8, "StartContentService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1152
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1153
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1155
    const-string v8, "InstallSystemProviders"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1156
    iget-object v8, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 1158
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1159
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1164
    const-string v8, "StartDropBoxManager"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1165
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1166
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1168
    const-string v8, "StartVibratorService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1169
    new-instance v8, Lcom/android/server/VibratorService;

    invoke-direct {v8, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_44

    move-object v1, v8

    .line 1170
    :try_start_2
    const-string/jumbo v8, "vibrator"

    invoke-static {v8, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1173
    const-string v8, "StartDynamicSystemService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1174
    new-instance v8, Lcom/android/server/DynamicSystemService;

    invoke-direct {v8, v3}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_43

    move-object v2, v8

    .line 1175
    :try_start_3
    const-string v8, "dynamic_system"

    invoke-static {v8, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_42

    .line 1178
    if-nez v32, :cond_2

    .line 1179
    :try_start_4
    const-string v8, "StartConsumerIrService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1180
    new-instance v8, Lcom/android/server/ConsumerIrService;

    invoke-direct {v8, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v9, v8

    .line 1181
    const-string v8, "consumer_ir"

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1182
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v35, v9

    goto :goto_1

    .line 1284
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object v8, v11

    goto/16 :goto_4b

    .line 1178
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2
    move-object/from16 v35, v9

    .line 1185
    .end local v9    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v35, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_1
    :try_start_5
    const-string v8, "StartAlarmManagerService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1186
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v3}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1187
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1189
    const-string v8, "StartInputManagerService"

    invoke-virtual {v4, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1190
    new-instance v8, Lcom/android/server/input/InputManagerService;

    invoke-direct {v8, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_41

    move-object v10, v8

    .line 1191
    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v10, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1193
    const-string v7, "StartWindowManagerService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1195
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v8, "StartSensorService"

    invoke-static {v7, v8}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1196
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 1197
    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v7, :cond_3

    const/16 v36, 0x1

    goto :goto_2

    :cond_3
    move/from16 v36, v12

    :goto_2
    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1201
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->getInstance()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v8, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_40

    .line 1197
    move/from16 v39, v7

    move-object v7, v3

    move-object/from16 v40, v2

    move-object/from16 v38, v8

    const/4 v2, 0x1

    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v40, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    move-object v8, v10

    move-object/from16 v41, v9

    move/from16 v9, v36

    move-object v2, v10

    .end local v10    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v2, "inputManager":Lcom/android/server/input/InputManagerService;
    move/from16 v10, v39

    move-object/from16 v39, v11

    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v39, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v11, v37

    move-object/from16 v37, v5

    move v5, v12

    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v37, "storageManager":Landroid/os/storage/IStorageManager;
    move-object/from16 v12, v38

    :try_start_7
    invoke-static/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3f

    move-object v10, v7

    .line 1207
    .end local v19    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_8
    const-string/jumbo v7, "window"

    const/16 v8, 0x11

    invoke-static {v7, v10, v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1209
    const-string/jumbo v7, "input"

    const/4 v8, 0x1

    invoke-static {v7, v2, v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1211
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1213
    const-string v7, "SetWindowManagerService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1214
    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1215
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1217
    const-string v7, "WindowManagerServiceOnInitReady"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1224
    sget-object v7, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v8, "StartHidlServices"

    invoke-static {v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3e

    .line 1231
    if-nez v32, :cond_4

    if-eqz v34, :cond_4

    .line 1232
    :try_start_9
    const-string v7, "StartVrManagerService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1233
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1234
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 1284
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v7, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v19, v10

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    move-object/from16 v2, v40

    goto/16 :goto_4b

    .line 1237
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_4
    :goto_3
    :try_start_a
    const-string v7, "StartInputManager"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1239
    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1243
    const-string v7, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1244
    iget-object v7, v6, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1245
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1247
    iget v7, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3e

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1248
    :try_start_b
    const-string v7, "SystemServer"

    const-string v8, "No Bluetooth Service (factory test)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 1249
    :cond_5
    :try_start_c
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.bluetooth"

    .line 1250
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3e

    if-nez v7, :cond_6

    .line 1251
    :try_start_d
    const-string v7, "SystemServer"

    const-string v8, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 1253
    :cond_6
    :try_start_e
    const-string v7, "StartBluetoothService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1254
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/BluetoothService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1255
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1258
    :goto_4
    const-string v7, "IpConnectivityMetrics"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1259
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1262
    const-string v7, "NetworkWatchlistService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1263
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1264
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1266
    const-string v7, "PinnerService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1267
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/PinnerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1268
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1270
    const-string v7, "IorapForwardingService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1271
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1272
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1274
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1276
    const-string v7, "SignedConfigService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1277
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1278
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1280
    const-string v7, "AppIntegrityService"

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1281
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1282
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3e

    .line 1288
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    nop

    .line 1292
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v12

    .line 1293
    .local v12, "safeMode":Z
    if-eqz v12, :cond_7

    .line 1298
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1302
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x2

    const-string v8, "cell_on"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1307
    :cond_7
    const/4 v7, 0x0

    .line 1308
    .local v7, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v8, 0x0

    .line 1309
    .local v8, "notification":Landroid/app/INotificationManager;
    const/4 v9, 0x0

    .line 1310
    .local v9, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/4 v11, 0x0

    .line 1311
    .local v11, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v19, 0x0

    .line 1314
    .local v19, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_9

    .line 1315
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1316
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    if-eqz v0, :cond_8

    .line 1317
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_5

    .line 1320
    :cond_8
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1322
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1324
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1326
    :try_start_f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1329
    goto :goto_6

    .line 1327
    :catchall_2
    move-exception v0

    .line 1328
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Accessibility Manager"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1330
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1333
    :cond_9
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1335
    :try_start_10
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1338
    goto :goto_7

    .line 1336
    :catchall_3
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1337
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making display ready"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1339
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1343
    const-string/jumbo v0, "ro.build.version.ota"

    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1344
    .local v5, "curVersion":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.version.ota"

    move-object/from16 v42, v7

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v42, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string v7, ""

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1345
    .local v7, "lastVersion":Ljava/lang/String;
    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1346
    const-string/jumbo v0, "persist.sys.version.ota"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string/jumbo v0, "persist.sys.version.lastota"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :cond_a
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v43, v5

    const/4 v5, 0x1

    .end local v5    # "curVersion":Ljava/lang/String;
    .local v43, "curVersion":Ljava/lang/String;
    if-eq v0, v5, :cond_b

    .line 1352
    const-string/jumbo v0, "system_init.startmountservice"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1353
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1359
    :try_start_11
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1360
    const-string/jumbo v0, "mount"

    .line 1361
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1360
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1364
    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    move-object v5, v0

    goto :goto_8

    .line 1362
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_4
    move-exception v0

    .line 1363
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StorageManagerService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v5, v37

    .line 1365
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v5, "storageManager":Landroid/os/storage/IStorageManager;
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1367
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1369
    :try_start_12
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v37, v5

    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_13
    const-string v5, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 1372
    goto :goto_a

    .line 1370
    :catchall_5
    move-exception v0

    goto :goto_9

    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_6
    move-exception v0

    move-object/from16 v37, v5

    .line 1371
    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_9
    const-string/jumbo v5, "starting StorageStatsService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1373
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v44, v37

    goto :goto_b

    .line 1379
    :cond_b
    move-object/from16 v44, v37

    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v44, "storageManager":Landroid/os/storage/IStorageManager;
    :goto_b
    const-string v0, "StartUiModeManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1380
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1381
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1383
    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_c

    .line 1384
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1386
    :try_start_14
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v5, "dexopt"

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1387
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_c

    .line 1388
    :catchall_7
    move-exception v0

    .line 1389
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_15
    const-string/jumbo v5, "update packages"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 1391
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v5, "dexopt"

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1392
    nop

    .line 1393
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v45, v7

    goto :goto_d

    .line 1391
    :catchall_8
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    move-object/from16 v45, v7

    .end local v7    # "lastVersion":Ljava/lang/String;
    .local v45, "lastVersion":Ljava/lang/String;
    const-string v7, "dexopt"

    invoke-virtual {v5, v7}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1392
    throw v0

    .line 1383
    .end local v45    # "lastVersion":Ljava/lang/String;
    .restart local v7    # "lastVersion":Ljava/lang/String;
    :cond_c
    move-object/from16 v45, v7

    .line 1396
    .end local v7    # "lastVersion":Ljava/lang/String;
    .restart local v45    # "lastVersion":Ljava/lang/String;
    :goto_d
    const-string v0, "PerformFstrimIfNeeded"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1398
    :try_start_16
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 1401
    goto :goto_e

    .line 1399
    :catchall_9
    move-exception v0

    .line 1400
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "performing fstrim"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1402
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1404
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3c

    .line 1405
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1407
    :try_start_17
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1408
    const-string/jumbo v0, "lock_settings"

    .line 1409
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1408
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 1412
    .end local v11    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object v11, v0

    goto :goto_f

    .line 1410
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v11    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catchall_a
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting LockSettingsService service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1413
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1415
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    move v5, v0

    .line 1416
    .local v5, "hasPdb":Z
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    :goto_10
    move v7, v0

    .line 1417
    .local v7, "hasGsi":Z
    if-eqz v5, :cond_e

    if-nez v7, :cond_e

    .line 1418
    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1419
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v37, v7

    .end local v7    # "hasGsi":Z
    .local v37, "hasGsi":Z
    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1420
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_11

    .line 1417
    .end local v37    # "hasGsi":Z
    .restart local v7    # "hasGsi":Z
    :cond_e
    move/from16 v37, v7

    .line 1423
    .end local v7    # "hasGsi":Z
    .restart local v37    # "hasGsi":Z
    :goto_11
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1424
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1425
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1427
    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1429
    :cond_f
    const-string v0, "StartOemLockService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1430
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1431
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1434
    :cond_10
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1435
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.DeviceIdleController"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1436
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1440
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1441
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1442
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1444
    if-nez v32, :cond_11

    .line 1445
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1447
    :try_start_18
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v3}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    move-object v7, v0

    .line 1448
    .end local v42    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v7, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_19
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 1451
    move/from16 v46, v5

    goto :goto_13

    .line 1449
    :catchall_b
    move-exception v0

    goto :goto_12

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v42    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_c
    move-exception v0

    move-object/from16 v7, v42

    .line 1450
    .end local v42    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_12
    move/from16 v46, v5

    .end local v5    # "hasPdb":Z
    .local v46, "hasPdb":Z
    const-string/jumbo v5, "starting StatusBarManagerService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1452
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_14

    .line 1444
    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v46    # "hasPdb":Z
    .restart local v5    # "hasPdb":Z
    .restart local v42    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_11
    move/from16 v46, v5

    .end local v5    # "hasPdb":Z
    .restart local v46    # "hasPdb":Z
    move-object/from16 v7, v42

    .line 1455
    .end local v42    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_14
    invoke-direct {v6, v3, v4}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1456
    invoke-direct {v6, v3, v4}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1458
    invoke-direct {v6, v3, v4}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1461
    const v0, 0x10401fa

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1462
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1463
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1464
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_15

    .line 1466
    :cond_12
    const-string v0, "SystemServer"

    const-string v5, "AppPredictionService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :goto_15
    const v0, 0x1040202

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1471
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1472
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1473
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_16

    .line 1475
    :cond_13
    const-string v0, "SystemServer"

    const-string v5, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :goto_16
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1480
    :try_start_1a
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 1483
    goto :goto_17

    .line 1481
    :catchall_d
    move-exception v0

    .line 1482
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "initializing ConnectivityModuleConnector"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1484
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1486
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1488
    :try_start_1b
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .line 1491
    goto :goto_18

    .line 1489
    :catchall_e
    move-exception v0

    .line 1490
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "initializing NetworkStackClient"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1492
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1494
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1496
    :try_start_1c
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    move-object v13, v0

    .line 1497
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 1500
    goto :goto_19

    .line 1498
    :catchall_f
    move-exception v0

    .line 1499
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkManagement Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1501
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1504
    const-string v0, "StartIpSecService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1506
    :try_start_1d
    invoke-static {v3, v13}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v14, v0

    .line 1507
    const-string/jumbo v0, "ipsec"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    .line 1510
    goto :goto_1a

    .line 1508
    :catchall_10
    move-exception v0

    .line 1509
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting IpSec Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1511
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1513
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1514
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1515
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1517
    if-nez v26, :cond_14

    .line 1518
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1519
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 1520
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1521
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1524
    :cond_14
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1525
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1526
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1528
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1530
    :try_start_1e
    invoke-static {v3, v13}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0

    move-object v15, v0

    .line 1531
    const-string/jumbo v0, "netstats"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    .line 1534
    goto :goto_1b

    .line 1532
    :catchall_11
    move-exception v0

    .line 1533
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkStats Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1535
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1537
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1539
    :try_start_1f
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v3, v5, v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    move-object v5, v0

    .line 1541
    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v5, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_20
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    .line 1544
    goto :goto_1d

    .line 1542
    :catchall_12
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_1c

    .end local v5    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_13
    move-exception v0

    .line 1543
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1c
    const-string/jumbo v5, "starting NetworkPolicy Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v5, v16

    .line 1545
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v5    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1549
    invoke-static {v5}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1552
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v42, v7

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v42    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string v7, "android.hardware.wifi"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1555
    const-string v0, "StartWifi"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1556
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1557
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1558
    const-string v0, "StartWifiScanning"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1559
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1561
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1564
    :cond_15
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1566
    const-string v0, "StartRttService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1567
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1569
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1572
    :cond_16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.wifi.aware"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1574
    const-string v0, "StartWifiAware"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1575
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1576
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1579
    :cond_17
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.wifi.direct"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1581
    const-string v0, "StartWifiP2P"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1582
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1583
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1586
    :cond_18
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.lowpan"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1588
    const-string v0, "StartLowpan"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1589
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1590
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1593
    :cond_19
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.ethernet"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1594
    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1595
    :cond_1a
    const-string v0, "StartEthernet"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1596
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1597
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1600
    :cond_1b
    const-string v0, "StartConnectivityService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1602
    :try_start_21
    new-instance v0, Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v3, v13, v15, v5}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    move-object v7, v0

    .line 1604
    .end local v17    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v7, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_22
    const-string v0, "connectivity"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    move-object/from16 v47, v8

    .end local v8    # "notification":Landroid/app/INotificationManager;
    .local v47, "notification":Landroid/app/INotificationManager;
    const/4 v8, 0x6

    move-object/from16 v48, v9

    const/4 v9, 0x0

    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_23
    invoke-static {v0, v7, v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1607
    invoke-virtual {v5, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    .line 1610
    move-object/from16 v17, v7

    goto :goto_1f

    .line 1608
    :catchall_14
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_1e

    .end local v47    # "notification":Landroid/app/INotificationManager;
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    .restart local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_15
    move-exception v0

    move-object/from16 v47, v8

    move-object/from16 v48, v9

    move-object/from16 v17, v7

    .end local v8    # "notification":Landroid/app/INotificationManager;
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v47    # "notification":Landroid/app/INotificationManager;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto :goto_1e

    .end local v7    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v47    # "notification":Landroid/app/INotificationManager;
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    .restart local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v17    # "connectivity":Lcom/android/server/ConnectivityService;
    :catchall_16
    move-exception v0

    move-object/from16 v47, v8

    move-object/from16 v48, v9

    .line 1609
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v47    # "notification":Landroid/app/INotificationManager;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_1e
    const-string/jumbo v7, "starting Connectivity Service"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1611
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1613
    if-eqz v31, :cond_1c

    .line 1615
    :try_start_24
    const-string v0, "SystemServer"

    const-string v7, "Wigig Service"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const-string v0, "/system/system_ext/framework/wigig-service.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.capabilityconfigstore-V1.0-java.jar"

    .line 1621
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v7, Ldalvik/system/PathClassLoader;

    .line 1622
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1623
    .local v7, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v7, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1625
    .local v8, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v16, v0

    const/4 v9, 0x1

    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .local v16, "wigigClassPath":Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/16 v38, 0x0

    aput-object v9, v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    .line 1626
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v49, v5

    const/4 v9, 0x1

    .end local v5    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v49, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_25
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v38

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    .line 1627
    const-string v5, "SystemServer"

    const-string v9, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v9, v24

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1630
    const-string v5, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v7, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1632
    .local v5, "wigigClass":Ljava/lang/Class;
    move-object/from16 v50, v0

    const/4 v9, 0x1

    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v50, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    new-array v0, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/16 v38, 0x0

    aput-object v9, v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1633
    .end local v50    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v50, v5

    const/4 v9, 0x1

    .end local v5    # "wigigClass":Ljava/lang/Class;
    .local v50, "wigigClass":Ljava/lang/Class;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v38

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    .line 1634
    const-string v5, "SystemServer"

    const-string v9, "Successfully loaded WigigService class"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string/jumbo v5, "wigig"

    move-object/from16 v9, v25

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    .line 1638
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v7    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v8    # "wigigP2pClass":Ljava/lang/Class;
    .end local v16    # "wigigClassPath":Ljava/lang/String;
    .end local v50    # "wigigClass":Ljava/lang/Class;
    goto :goto_21

    .line 1636
    :catchall_17
    move-exception v0

    goto :goto_20

    .end local v49    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v5, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_18
    move-exception v0

    move-object/from16 v49, v5

    .line 1637
    .end local v5    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v49    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_20
    const-string/jumbo v5, "starting WigigService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 1613
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v49    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v5    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_1c
    move-object/from16 v49, v5

    .line 1641
    .end local v5    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v49    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_21
    const-string v0, "StartNsdService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1643
    :try_start_26
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1a

    move-object v5, v0

    .line 1644
    .end local v18    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v5, "serviceDiscovery":Lcom/android/server/NsdService;
    :try_start_27
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_19

    .line 1648
    move-object/from16 v18, v5

    goto :goto_23

    .line 1646
    :catchall_19
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_22

    .end local v5    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v18    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catchall_1a
    move-exception v0

    .line 1647
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_22
    const-string/jumbo v5, "starting Service Discovery Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1649
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_23
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1651
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1653
    :try_start_28
    const-string/jumbo v0, "system_update"

    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1b

    .line 1657
    goto :goto_24

    .line 1655
    :catchall_1b
    move-exception v0

    .line 1656
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SystemUpdateManagerService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1658
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1660
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1662
    :try_start_29
    const-string/jumbo v0, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1c

    .line 1666
    goto :goto_25

    .line 1664
    :catchall_1c
    move-exception v0

    .line 1665
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting UpdateLockService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1667
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1669
    const-string v0, "StartNotificationManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1670
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1671
    invoke-static {v3}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 1672
    invoke-static {v3}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1673
    nop

    .line 1674
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1673
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v8

    .line 1675
    .end local v47    # "notification":Landroid/app/INotificationManager;
    .local v8, "notification":Landroid/app/INotificationManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1677
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1678
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1679
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1681
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1682
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1683
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1685
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1687
    :try_start_2a
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1e

    move-object v9, v0

    .line 1688
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2b
    const-string v0, "country_detector"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1d

    .line 1691
    goto :goto_27

    .line 1689
    :catchall_1d
    move-exception v0

    goto :goto_26

    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_1e
    move-exception v0

    move-object/from16 v9, v48

    .line 1690
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_26
    const-string/jumbo v5, "starting Country Detector"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1692
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_27
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1694
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1696
    :try_start_2c
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1f

    .line 1699
    goto :goto_28

    .line 1697
    :catchall_1f
    move-exception v0

    .line 1698
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StartTimeDetectorService service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1700
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1702
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1704
    :try_start_2d
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_20

    .line 1707
    goto :goto_29

    .line 1705
    :catchall_20
    move-exception v0

    .line 1706
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StartTimeZoneDetectorService service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1708
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1710
    if-nez v32, :cond_1d

    .line 1711
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1713
    :try_start_2e
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_21

    .line 1716
    goto :goto_2a

    .line 1714
    :catchall_21
    move-exception v0

    .line 1715
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Search Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1717
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1720
    :cond_1d
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1110080

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1721
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1722
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1723
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_2b

    .line 1725
    :cond_1e
    const-string v0, "SystemServer"

    const-string v5, "Wallpaper service disabled by config"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :goto_2b
    const-string v0, "StartAudioService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1729
    if-nez v33, :cond_1f

    .line 1730
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v16, v8

    goto :goto_2d

    .line 1732
    :cond_1f
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040213

    .line 1733
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1735
    .local v5, "className":Ljava/lang/String;
    :try_start_2f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_23

    move-object/from16 v16, v8

    .end local v8    # "notification":Landroid/app/INotificationManager;
    .local v16, "notification":Landroid/app/INotificationManager;
    :try_start_30
    const-string v8, "$Lifecycle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_22

    .line 1738
    goto :goto_2d

    .line 1736
    :catchall_22
    move-exception v0

    goto :goto_2c

    .end local v16    # "notification":Landroid/app/INotificationManager;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    :catchall_23
    move-exception v0

    move-object/from16 v16, v8

    .line 1737
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v16    # "notification":Landroid/app/INotificationManager;
    :goto_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1740
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "className":Ljava/lang/String;
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1742
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1743
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1744
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1746
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.broadcastradio"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1747
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1748
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1749
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1752
    :cond_20
    const-string v0, "StartDockObserver"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1753
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1754
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1756
    if-eqz v32, :cond_21

    .line 1757
    const-string v0, "StartThermalObserver"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1758
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1759
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1762
    :cond_21
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1765
    :try_start_31
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v3, v2}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_24

    .line 1769
    goto :goto_2e

    .line 1767
    :catchall_24
    move-exception v0

    .line 1768
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting WiredAccessoryManager"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1770
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1772
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1774
    const-string v0, "StartMidiManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1775
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1776
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1780
    :cond_22
    const-string v0, "StartAdbService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1782
    :try_start_32
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_25

    .line 1785
    goto :goto_2f

    .line 1783
    :catchall_25
    move-exception v0

    .line 1784
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting AdbService"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1788
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1789
    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz v30, :cond_24

    .line 1793
    :cond_23
    const-string v0, "StartUsbService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1794
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1795
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1798
    :cond_24
    if-nez v32, :cond_25

    .line 1799
    const-string v0, "StartSerialService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1802
    :try_start_33
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_27

    move-object v5, v0

    .line 1803
    .end local v20    # "serial":Lcom/android/server/SerialService;
    .local v5, "serial":Lcom/android/server/SerialService;
    :try_start_34
    const-string/jumbo v0, "serial"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_26

    .line 1806
    goto :goto_31

    .line 1804
    :catchall_26
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_30

    .end local v5    # "serial":Lcom/android/server/SerialService;
    .restart local v20    # "serial":Lcom/android/server/SerialService;
    :catchall_27
    move-exception v0

    .line 1805
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_30
    const-string v5, "SystemServer"

    const-string v7, "Failure starting SerialService"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v5, v20

    .line 1807
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v20    # "serial":Lcom/android/server/SerialService;
    .restart local v5    # "serial":Lcom/android/server/SerialService;
    :goto_31
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v20, v5

    .line 1810
    .end local v5    # "serial":Lcom/android/server/SerialService;
    .restart local v20    # "serial":Lcom/android/server/SerialService;
    :cond_25
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1812
    :try_start_35
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v3}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_29

    move-object v5, v0

    .line 1813
    .end local v23    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v5, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_36
    const-string v0, "hardware_properties"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_28

    .line 1817
    move-object/from16 v23, v5

    goto :goto_33

    .line 1815
    :catchall_28
    move-exception v0

    move-object/from16 v23, v5

    goto :goto_32

    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v23    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catchall_29
    move-exception v0

    .line 1816
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_32
    const-string v5, "SystemServer"

    const-string v7, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1818
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_33
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1820
    const-string v0, "StartTwilightService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1821
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1822
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1824
    const-string v0, "StartColorDisplay"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1825
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1826
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1829
    const-string v0, "StartJobScheduler"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1830
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.job.JobSchedulerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1831
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1833
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1834
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1835
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1837
    const-string v0, "StartTrustManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1838
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1839
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1841
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1842
    const-string v0, "StartBackupManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1843
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1844
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1847
    :cond_26
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1848
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111006e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1849
    :cond_27
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1850
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1851
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1855
    :cond_28
    const-string v0, "StartRoleManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1856
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v5, Lcom/android/server/role/RoleManagerService;

    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;

    invoke-direct {v8, v7}, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v7, v8}, Lcom/android/server/role/RoleManagerService;-><init>(Landroid/content/Context;Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;)V

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1858
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1864
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1865
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1866
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1868
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1869
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1870
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1871
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1873
    :cond_29
    const-string v0, "StartSensorNotification"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1874
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1875
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1877
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.context_hub"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1878
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1879
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1880
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1883
    :cond_2a
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1885
    :try_start_37
    const-string v0, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_2a

    .line 1888
    goto :goto_34

    .line 1886
    :catchall_2a
    move-exception v0

    .line 1887
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DiskStats Service"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1889
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1891
    const-string v0, "RuntimeService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1893
    :try_start_38
    const-string/jumbo v0, "runtime"

    new-instance v5, Lcom/android/server/RuntimeService;

    invoke-direct {v5, v3}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2b

    .line 1896
    goto :goto_35

    .line 1894
    :catchall_2b
    move-exception v0

    .line 1895
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting RuntimeService"

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1897
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_35
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1903
    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_2b

    .line 1904
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111007f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_36

    :cond_2b
    const/4 v0, 0x0

    :goto_36
    move v5, v0

    .line 1906
    .local v5, "startRulesManagerService":Z
    if-eqz v5, :cond_2c

    .line 1907
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1908
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1909
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1912
    :cond_2c
    if-nez v32, :cond_2d

    if-nez v27, :cond_2d

    .line 1913
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1915
    :try_start_39
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2d

    move-object v7, v0

    .line 1916
    .end local v21    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v7, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_3a
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2c

    .line 1919
    goto :goto_38

    .line 1917
    :catchall_2c
    move-exception v0

    move-object/from16 v21, v7

    goto :goto_37

    .end local v7    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v21    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catchall_2d
    move-exception v0

    .line 1918
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v7, "starting NetworkTimeUpdate service"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v7, v21

    .line 1920
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v21    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v7    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v21, v7

    .line 1923
    .end local v7    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v21    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_2d
    const-string v0, "CertBlacklister"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1925
    :try_start_3b
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2e

    .line 1928
    goto :goto_39

    .line 1926
    :catchall_2e
    move-exception v0

    .line 1927
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CertBlacklister"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1929
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_39
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1933
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1934
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1935
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1938
    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v0, v6}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    const-string/jumbo v7, "startBlobStoreManagerService"

    invoke-static {v0, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/SystemServer;->mBlobStoreServiceStart:Ljava/util/concurrent/Future;

    .line 1946
    const-string v0, "StartDreamManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1947
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1948
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1950
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1951
    new-instance v0, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v0, v3}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    const-string v7, "graphicsstats"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1953
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1955
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_2e

    .line 1956
    const-string v0, "AddCoverageService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1957
    new-instance v0, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v0}, Lcom/android/server/coverage/CoverageService;-><init>()V

    const-string v7, "coverage"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1958
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1961
    :cond_2e
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1962
    const-string v0, "StartPrintManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1963
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1964
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1967
    :cond_2f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.companion_device_setup"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1968
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1969
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1970
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1973
    :cond_30
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1974
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1975
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1977
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1978
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1979
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1981
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1982
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1983
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1987
    :cond_31
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1988
    const-string v7, "android.software.leanback"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1989
    :cond_32
    const-string v0, "StartTvInputManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1990
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1991
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1994
    :cond_33
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.tv.tuner"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1995
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1996
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1997
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2000
    :cond_34
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.picture_in_picture"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2001
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2002
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2003
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2006
    :cond_35
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.leanback"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2007
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2008
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2009
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2012
    :cond_36
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2014
    :try_start_3c
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_30

    move-object v7, v0

    .line 2015
    .end local v19    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v7, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3d
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2f

    .line 2018
    move-object/from16 v19, v7

    goto :goto_3b

    .line 2016
    :catchall_2f
    move-exception v0

    move-object/from16 v19, v7

    goto :goto_3a

    .end local v7    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v19    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_30
    move-exception v0

    .line 2017
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v7, "starting MediaRouterService"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2019
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2021
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2022
    const-string v7, "android.hardware.biometrics.face"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    .line 2023
    .local v7, "hasFeatureFace":Z
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2024
    const-string v8, "android.hardware.biometrics.iris"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 2025
    .local v8, "hasFeatureIris":Z
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2026
    move/from16 v47, v5

    .end local v5    # "startRulesManagerService":Z
    .local v47, "startRulesManagerService":Z
    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 2028
    .local v5, "hasFeatureFingerprint":Z
    if-eqz v7, :cond_37

    .line 2029
    const-string v0, "StartFaceSensor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2030
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v48, v7

    .end local v7    # "hasFeatureFace":Z
    .local v48, "hasFeatureFace":Z
    const-class v7, Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2031
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_3c

    .line 2028
    .end local v48    # "hasFeatureFace":Z
    .restart local v7    # "hasFeatureFace":Z
    :cond_37
    move/from16 v48, v7

    .line 2034
    .end local v7    # "hasFeatureFace":Z
    .restart local v48    # "hasFeatureFace":Z
    :goto_3c
    if-eqz v8, :cond_38

    .line 2035
    const-string v0, "StartIrisSensor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2036
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/iris/IrisService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2037
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2040
    :cond_38
    if-eqz v5, :cond_39

    .line 2041
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2042
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2043
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2047
    :cond_39
    const-string v0, "StartBiometricService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2048
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2049
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2051
    const-string v0, "StartAuthService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2052
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2053
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2056
    const-string v0, "StartBackgroundDexOptService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2058
    :try_start_3e
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_31

    .line 2061
    goto :goto_3d

    .line 2059
    :catchall_31
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2060
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting StartBackgroundDexOptService"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2062
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2064
    if-nez v32, :cond_3a

    .line 2067
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2069
    :try_start_3f
    invoke-static {v3}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_32

    .line 2072
    goto :goto_3e

    .line 2070
    :catchall_32
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2071
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DynamicCodeLoggingService"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2073
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2076
    :cond_3a
    if-nez v32, :cond_3b

    .line 2077
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2079
    :try_start_40
    invoke-static {v3}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_33

    .line 2082
    goto :goto_3f

    .line 2080
    :catchall_33
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2081
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "StartPruneInstantAppsJobService"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2083
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2087
    :cond_3b
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2088
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2089
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2091
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2092
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2093
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2095
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2096
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2097
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2099
    const-string v0, "StartPeopleService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2100
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2101
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v48, v9

    move-object/from16 v46, v13

    move-object/from16 v50, v14

    move-object/from16 v51, v15

    move-object/from16 v47, v16

    move-object/from16 v52, v17

    move-object/from16 v53, v18

    move-object/from16 v54, v19

    move-object/from16 v55, v20

    move-object/from16 v56, v21

    move-object/from16 v57, v23

    move-object/from16 v5, v24

    move-object/from16 v15, v25

    move-object/from16 v19, v11

    goto :goto_40

    .line 1404
    .end local v5    # "hasFeatureFingerprint":Z
    .end local v37    # "hasGsi":Z
    .end local v46    # "hasPdb":Z
    .end local v47    # "startRulesManagerService":Z
    .end local v48    # "hasFeatureFace":Z
    .end local v49    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, "notification":Landroid/app/INotificationManager;
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_3c
    move-object/from16 v47, v8

    move-object/from16 v48, v9

    .end local v8    # "notification":Landroid/app/INotificationManager;
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v47, "notification":Landroid/app/INotificationManager;
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    move-object/from16 v46, v13

    move-object/from16 v50, v14

    move-object/from16 v51, v15

    move-object/from16 v49, v16

    move-object/from16 v52, v17

    move-object/from16 v53, v18

    move-object/from16 v54, v19

    move-object/from16 v55, v20

    move-object/from16 v56, v21

    move-object/from16 v57, v23

    move-object/from16 v5, v24

    move-object/from16 v15, v25

    move-object/from16 v19, v11

    .line 2104
    .end local v11    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v13    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v18    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v20    # "serial":Lcom/android/server/SerialService;
    .end local v21    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v24    # "wigigP2pService":Ljava/lang/Object;
    .end local v25    # "wigigService":Ljava/lang/Object;
    .local v5, "wigigP2pService":Ljava/lang/Object;
    .local v15, "wigigService":Ljava/lang/Object;
    .local v19, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v46, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v49    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v50, "ipSecService":Lcom/android/server/IpSecService;
    .local v51, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v52, "connectivity":Lcom/android/server/ConnectivityService;
    .local v53, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v54, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v55, "serial":Lcom/android/server/SerialService;
    .local v56, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v57, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_40
    if-nez v32, :cond_3d

    .line 2105
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2106
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2107
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2110
    :cond_3d
    if-eqz v32, :cond_3f

    .line 2112
    const-string v0, "StartWearPowerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2113
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2114
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2116
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2117
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2118
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2120
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2121
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2124
    const-string v0, "StartWearTimeService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2125
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2126
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2128
    if-eqz v29, :cond_3e

    .line 2129
    const-string v0, "StartWearLeftyService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2130
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2131
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2134
    :cond_3e
    const-string v0, "StartWearGlobalActionsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2135
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2136
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2139
    :cond_3f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.slices_disabled"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 2140
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2141
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2145
    :cond_40
    if-nez v28, :cond_41

    .line 2146
    const-string v0, "StartCameraServiceProxy"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2147
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2148
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2151
    :cond_41
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.type.embedded"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2152
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2153
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2154
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2158
    :cond_42
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2159
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v8, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2161
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2164
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2165
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.stats.pull.StatsPullAtomService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2166
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2169
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2170
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2173
    if-eqz v12, :cond_43

    .line 2174
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2178
    :cond_43
    const-string v0, "StartMmsService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2179
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v58, v0

    check-cast v58, Lcom/android/server/MmsServiceBroker;

    .line 2180
    .end local v22    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v58, "mmsService":Lcom/android/server/MmsServiceBroker;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2182
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.autofill"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2183
    const-string v0, "StartAutoFillService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2184
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2185
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2189
    :cond_44
    const-string v0, "StartClipboardService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2190
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2191
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2193
    const-string v0, "AppServiceManager"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2194
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2195
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2199
    const-string v0, "MakeVibratorServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2201
    :try_start_41
    invoke-virtual {v1}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_34

    .line 2204
    goto :goto_41

    .line 2202
    :catchall_34
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2203
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Vibrator Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2205
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_41
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2207
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2208
    if-eqz v19, :cond_45

    .line 2210
    :try_start_42
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_35

    .line 2213
    goto :goto_42

    .line 2211
    :catchall_35
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2212
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Lock Settings Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2215
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_45
    :goto_42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2218
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2219
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v0, v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2222
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2223
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v0, v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2228
    if-eqz v31, :cond_46

    .line 2230
    :try_start_43
    const-string v0, "SystemServer"

    const-string v8, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2232
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v8, "onBootPhase"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v9, v11, v13

    invoke-virtual {v0, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 2233
    .local v8, "m":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v13, 0x0

    aput-object v9, v11, v13

    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 2237
    .local v9, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v11, "onBootPhase"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v14, v16

    invoke-virtual {v9, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v8, v11

    .line 2238
    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x0

    aput-object v11, v13, v7

    invoke-virtual {v8, v15, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_36

    .line 2242
    nop

    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "wigigClass":Ljava/lang/Class;
    goto :goto_43

    .line 2240
    :catchall_36
    move-exception v0

    .line 2241
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "Wigig services ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2245
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_46
    :goto_43
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2247
    :try_start_44
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_37

    .line 2250
    goto :goto_44

    .line 2248
    :catchall_37
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2249
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Window Manager Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2251
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_44
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2254
    const-class v7, Lcom/android/server/SystemService;

    monitor-enter v7

    .line 2255
    :try_start_45
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_3c

    if-eqz v0, :cond_47

    .line 2256
    :try_start_46
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sget-object v8, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 2257
    sput-object v41, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_38

    goto :goto_45

    .line 2259
    :catchall_38
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v10

    move/from16 v38, v12

    move-object/from16 v36, v45

    move-object/from16 v45, v15

    goto/16 :goto_4a

    :cond_47
    :goto_45
    :try_start_47
    monitor-exit v7
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_3c

    .line 2261
    if-eqz v12, :cond_48

    .line 2262
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2268
    :cond_48
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v14

    .line 2269
    .local v14, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v13, v0

    .line 2270
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2271
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14, v13}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2274
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    .line 2275
    .local v18, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_49

    .line 2276
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2279
    :cond_49
    const-string v0, "MakePowerManagerServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2282
    :try_start_48
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_39

    .line 2285
    goto :goto_46

    .line 2283
    :catchall_39
    move-exception v0

    .line 2284
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Power Manager Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2286
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_46
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2289
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2290
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2291
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2293
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2294
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 2295
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2297
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2300
    :try_start_49
    iget-object v0, v6, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v12, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_3a

    .line 2303
    goto :goto_47

    .line 2301
    :catchall_3a
    move-exception v0

    .line 2302
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Display Manager Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2304
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_47
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2306
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2309
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2310
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x107002e

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 2312
    .local v7, "classes":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_48
    if-ge v9, v8, :cond_4a

    aget-object v11, v7, v9

    .line 2313
    .local v11, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v1

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .local v41, "vibrator":Lcom/android/server/VibratorService;
    const-string v1, "StartDeviceSpecificServices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2315
    :try_start_4a
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_3b

    .line 2318
    move-object/from16 v20, v5

    goto :goto_49

    .line 2316
    :catchall_3b
    move-exception v0

    .line 2317
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    .end local v5    # "wigigP2pService":Ljava/lang/Object;
    .local v20, "wigigP2pService":Ljava/lang/Object;
    const-string/jumbo v5, "starting "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2319
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_49
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2312
    .end local v11    # "className":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v20

    move-object/from16 v1, v41

    goto :goto_48

    .line 2321
    .end local v20    # "wigigP2pService":Ljava/lang/Object;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v5    # "wigigP2pService":Ljava/lang/Object;
    :cond_4a
    move-object/from16 v41, v1

    move-object/from16 v20, v5

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v5    # "wigigP2pService":Ljava/lang/Object;
    .restart local v20    # "wigigP2pService":Ljava/lang/Object;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2323
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2324
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x208

    invoke-virtual {v0, v4, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2325
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2327
    iget-object v0, v6, Lcom/android/server/SystemServer;->mBlobStoreServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v1, "startBlobStoreManagerService"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2332
    invoke-static {v3}, Lcom/android/server/am/OpORMServiceInjector;->startORMServiceAppIfNeed(Landroid/content/Context;)V

    .line 2337
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v1, 0x43

    const/4 v5, 0x0

    aput v1, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2338
    invoke-static {v3}, Lcom/android/server/SystemServer;->startCoreServiceApp(Landroid/content/Context;)V

    .line 2343
    :cond_4b
    move-object/from16 v8, v46

    .line 2344
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v11, v51

    .line 2345
    .local v11, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v9, v49

    .line 2346
    .local v9, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v7

    move-object/from16 v36, v45

    .end local v7    # "classes":[Ljava/lang/String;
    .end local v45    # "lastVersion":Ljava/lang/String;
    .local v21, "classes":[Ljava/lang/String;
    .local v36, "lastVersion":Ljava/lang/String;
    move-object/from16 v7, v52

    .line 2347
    .local v7, "connectivityF":Lcom/android/server/ConnectivityService;
    move/from16 v38, v12

    .end local v12    # "safeMode":Z
    .local v38, "safeMode":Z
    move-object/from16 v12, v48

    .line 2348
    .local v12, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v13

    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    .local v22, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v13, v56

    .line 2349
    .local v13, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v14

    .end local v14    # "config":Landroid/content/res/Configuration;
    .local v23, "config":Landroid/content/res/Configuration;
    move-object v14, v2

    .line 2350
    .local v14, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v45, v15

    .end local v15    # "wigigService":Ljava/lang/Object;
    .local v45, "wigigService":Ljava/lang/Object;
    move-object/from16 v15, v39

    .line 2351
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v16, v54

    .line 2352
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v58

    .line 2353
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v59, v10

    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v59, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v10, v50

    .line 2354
    .local v10, "ipSecServiceF":Lcom/android/server/IpSecService;
    move-object/from16 v60, v20

    .end local v20    # "wigigP2pService":Ljava/lang/Object;
    .local v60, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v5, v59

    .line 2361
    .local v5, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/-$$Lambda$SystemServer$c50amMOcae1K0NdkHHoWNGvSMJQ;

    move-object/from16 v20, v1

    move-object/from16 v61, v2

    .end local v2    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v61, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v2, p0

    move-object/from16 v62, v3

    .end local v3    # "context":Landroid/content/Context;
    .local v62, "context":Landroid/content/Context;
    move-object/from16 v3, p1

    move-object/from16 v4, v62

    move/from16 v6, v38

    invoke-direct/range {v1 .. v17}, Lcom/android/server/-$$Lambda$SystemServer$c50amMOcae1K0NdkHHoWNGvSMJQ;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2597
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2598
    return-void

    .line 2259
    .end local v7    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v13    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v14    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v16    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v17    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v18    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v21    # "classes":[Ljava/lang/String;
    .end local v22    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "config":Landroid/content/res/Configuration;
    .end local v36    # "lastVersion":Ljava/lang/String;
    .end local v38    # "safeMode":Z
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v60    # "wigigP2pService":Ljava/lang/Object;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v3    # "context":Landroid/content/Context;
    .local v5, "wigigP2pService":Ljava/lang/Object;
    .local v10, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v12, "safeMode":Z
    .local v15, "wigigService":Ljava/lang/Object;
    .local v45, "lastVersion":Ljava/lang/String;
    :catchall_3c
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v60, v5

    move-object/from16 v59, v10

    move/from16 v38, v12

    move-object/from16 v36, v45

    move-object/from16 v45, v15

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "wigigP2pService":Ljava/lang/Object;
    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v12    # "safeMode":Z
    .end local v15    # "wigigService":Ljava/lang/Object;
    .restart local v36    # "lastVersion":Ljava/lang/String;
    .restart local v38    # "safeMode":Z
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .local v45, "wigigService":Ljava/lang/Object;
    .restart local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v60    # "wigigP2pService":Ljava/lang/Object;
    .restart local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "context":Landroid/content/Context;
    :goto_4a
    :try_start_4b
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_3d

    throw v0

    :catchall_3d
    move-exception v0

    goto :goto_4a

    .line 1284
    .end local v19    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v36    # "lastVersion":Ljava/lang/String;
    .end local v38    # "safeMode":Z
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v42    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v43    # "curVersion":Ljava/lang/String;
    .end local v44    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v45    # "wigigService":Ljava/lang/Object;
    .end local v46    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v47    # "notification":Landroid/app/INotificationManager;
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v49    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v50    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v51    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v53    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v54    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v55    # "serial":Lcom/android/server/SerialService;
    .end local v56    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v57    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v58    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v60    # "wigigP2pService":Ljava/lang/Object;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v13, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    .local v15, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v17, "connectivity":Lcom/android/server/ConnectivityService;
    .local v18, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v20, "serial":Lcom/android/server/SerialService;
    .local v21, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v23, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v24    # "wigigP2pService":Ljava/lang/Object;
    .restart local v25    # "wigigService":Ljava/lang/Object;
    .local v37, "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_3e
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v59, v10

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    move-object/from16 v2, v40

    move-object/from16 v19, v59

    move-object/from16 v7, v61

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v3    # "context":Landroid/content/Context;
    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "context":Landroid/content/Context;
    goto/16 :goto_4b

    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v3    # "context":Landroid/content/Context;
    .local v19, "wm":Lcom/android/server/wm/WindowManagerService;
    :catchall_3f
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    move-object/from16 v2, v40

    move-object/from16 v7, v61

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v3    # "context":Landroid/content/Context;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "context":Landroid/content/Context;
    goto/16 :goto_4b

    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .local v2, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "context":Landroid/content/Context;
    .local v5, "storageManager":Landroid/os/storage/IStorageManager;
    .local v10, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v11, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_40
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v40, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v61, v10

    move-object/from16 v39, v11

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    move-object/from16 v7, v61

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v10    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "context":Landroid/content/Context;
    goto :goto_4b

    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_41
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v40, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v11

    move-object/from16 v9, v35

    move-object/from16 v8, v39

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v62    # "context":Landroid/content/Context;
    goto :goto_4b

    .end local v35    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v9, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_42
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v40, v2

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v11

    move-object/from16 v8, v39

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v62    # "context":Landroid/content/Context;
    goto :goto_4b

    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_43
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v11

    move-object/from16 v8, v39

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v62    # "context":Landroid/content/Context;
    goto :goto_4b

    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_44
    move-exception v0

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v11

    move-object/from16 v8, v39

    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v62    # "context":Landroid/content/Context;
    goto :goto_4b

    .end local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v39    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v62    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v8, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_45
    move-exception v0

    move-object/from16 v62, v3

    move-object v3, v4

    move-object/from16 v37, v5

    .line 1285
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v37    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v62    # "context":Landroid/content/Context;
    :goto_4b
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    throw v0
.end method

.method private static native startSensorService()V
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2611
    const v0, 0x104020b

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 2612
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2619
    :cond_0
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2620
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2621
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2622
    return-void

    .line 2615
    :cond_1
    :goto_0
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 2672
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 2673
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2674
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2675
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2677
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2678
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2679
    return-void
.end method


# virtual methods
.method public synthetic lambda$startOtherServices$3$SystemServer()V
    .locals 3

    .line 1939
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1940
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string/jumbo v1, "startBlobStoreManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1941
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.blob.BlobStoreManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1942
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1943
    return-void
.end method

.method public synthetic lambda$startOtherServices$4$SystemServer()V
    .locals 3

    .line 2380
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2382
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2383
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2384
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 2385
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 2386
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2387
    return-void
.end method

.method public synthetic lambda$startOtherServices$6$SystemServer(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 13
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;
    .param p4, "safeMode"    # Z
    .param p5, "connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p6, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p7, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p8, "ipSecServiceF"    # Lcom/android/server/IpSecService;
    .param p9, "networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p10, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p11, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p12, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p13, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p14, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p15, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .line 2362
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-string v0, "SystemServer"

    const-string v5, "Making services ready"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2364
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x226

    invoke-virtual {v0, p1, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2365
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2366
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2368
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2371
    goto :goto_0

    .line 2369
    :catchall_0
    move-exception v0

    .line 2370
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "observing native crashes"

    invoke-direct {p0, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2372
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2376
    const-string v5, "WebViewFactoryPreparation"

    .line 2377
    .local v5, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2378
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v6, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v7, "WebViewFactoryPreparation"

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v6, :cond_0

    .line 2379
    new-instance v6, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 2390
    :cond_0
    move-object v6, v0

    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v6, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.type.automotive"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2391
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2392
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2393
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2396
    :cond_1
    const-string v0, "StartSystemUI"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2398
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2401
    goto :goto_2

    .line 2399
    :catchall_1
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2400
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "starting System UI"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2402
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2408
    if-eqz p4, :cond_2

    .line 2409
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2411
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2414
    goto :goto_3

    .line 2412
    :catchall_2
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2413
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v8, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2415
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2417
    :cond_2
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2419
    if-eqz p6, :cond_3

    .line 2420
    :try_start_3
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    .line 2422
    :catchall_3
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 2423
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Network Managment Service ready"

    invoke-direct {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2424
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_4
    nop

    .line 2425
    :goto_5
    const/4 v0, 0x0

    .line 2426
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v4, :cond_4

    .line 2427
    nop

    .line 2428
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v8, v0

    goto :goto_6

    .line 2426
    :cond_4
    move-object v8, v0

    .line 2430
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v8, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2431
    const-string v0, "MakeIpSecServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2433
    if-eqz p8, :cond_5

    .line 2434
    :try_start_4
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_7

    .line 2436
    :catchall_4
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 2437
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making IpSec Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 2438
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_7
    nop

    .line 2439
    :goto_8
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2440
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2442
    if-eqz p9, :cond_6

    .line 2443
    :try_start_5
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_9

    .line 2445
    :catchall_5
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 2446
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Network Stats Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 2447
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_9
    nop

    .line 2448
    :goto_a
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2449
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2451
    if-eqz v3, :cond_7

    .line 2452
    :try_start_6
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_b

    .line 2454
    :catchall_6
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 2455
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Connectivity Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 2456
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_b
    nop

    .line 2457
    :goto_c
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2458
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2460
    if-eqz v4, :cond_8

    .line 2461
    :try_start_7
    invoke-virtual {v4, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_d

    .line 2463
    :catchall_7
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 2464
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Network Policy Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 2465
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_8
    :goto_d
    nop

    .line 2466
    :goto_e
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2469
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 2473
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2475
    if-eqz v6, :cond_9

    .line 2476
    invoke-static {v6, v7}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2478
    :cond_9
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x258

    invoke-virtual {v0, p1, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2479
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2483
    const-string v0, "MakeOneplusContextStubReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2485
    :try_start_8
    invoke-static {}, Lcom/oneplus/android/server/context/OneplusContextStub;->getInstance()Lcom/oneplus/android/server/context/IOneplusContextStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/android/server/context/IOneplusContextStub;->systemReady()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 2488
    goto :goto_f

    .line 2486
    :catchall_8
    move-exception v0

    .line 2487
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making OneplusContextStub ready"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2489
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2492
    const-string v0, "StartNetworkStack"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2499
    :try_start_9
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 2502
    goto :goto_10

    .line 2500
    :catchall_9
    move-exception v0

    .line 2501
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Network Stack"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2503
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_10
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2505
    const-string v0, "StartTethering"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2508
    :try_start_a
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v7, "android.net.ITetheringConnector"

    const-string v9, "android.permission.MAINLINE_NETWORK_STACK"

    sget-object v10, Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;

    invoke-virtual {v0, v7, v9, v10}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 2517
    goto :goto_11

    .line 2515
    :catchall_a
    move-exception v0

    .line 2516
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Tethering"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2518
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_11
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2520
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2522
    if-eqz p10, :cond_a

    .line 2523
    :try_start_b
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_12

    .line 2525
    :catchall_b
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2526
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying CountryDetectorService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 2527
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_a
    :goto_12
    nop

    .line 2528
    :goto_13
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2529
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2531
    if-eqz p11, :cond_b

    .line 2532
    :try_start_c
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_14

    .line 2534
    :catchall_c
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2535
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying NetworkTimeService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 2536
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_b
    :goto_14
    nop

    .line 2537
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2538
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2541
    if-eqz p12, :cond_c

    .line 2542
    :try_start_d
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_16

    .line 2544
    :catchall_d
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2545
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying InputManagerService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 2546
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_c
    :goto_16
    nop

    .line 2547
    :goto_17
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2548
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2550
    if-eqz p13, :cond_d

    .line 2551
    :try_start_e
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_18

    .line 2553
    :catchall_e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2554
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    .line 2555
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_d
    :goto_18
    nop

    .line 2556
    :goto_19
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2557
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2559
    if-eqz p14, :cond_e

    .line 2560
    :try_start_f
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_1a

    .line 2562
    :catchall_f
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2563
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying MediaRouterService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 2564
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_e
    :goto_1a
    nop

    .line 2565
    :goto_1b
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2566
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2568
    if-eqz p15, :cond_f

    .line 2569
    :try_start_10
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    goto :goto_1c

    .line 2571
    :catchall_10
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2572
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying MmsService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 2573
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_f
    :goto_1c
    nop

    .line 2574
    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2576
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2580
    :try_start_11
    const-string v0, "incident"

    .line 2581
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2580
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2582
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_10

    .line 2583
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 2587
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_10
    goto :goto_1e

    .line 2585
    :catchall_11
    move-exception v0

    .line 2586
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "Notifying incident daemon running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2588
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1e
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2590
    iget-wide v9, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-eqz v0, :cond_11

    .line 2591
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2592
    iget-wide v9, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v9, v10}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 2593
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2595
    :cond_11
    return-void
.end method
