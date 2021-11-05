.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DONE_POLL_WAIT_MS:I = 0x1f4

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final METRICS_FILE_BASENAME:Ljava/lang/String; = "/data/system/shutdown-metrics"

.field private static METRIC_AM:Ljava/lang/String; = null

.field private static METRIC_PM:Ljava/lang/String; = null

.field private static METRIC_RADIO:Ljava/lang/String; = null

.field private static METRIC_RADIOS:Ljava/lang/String; = null

.field private static METRIC_SEND_BROADCAST:Ljava/lang/String; = null

.field private static METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = null

.field private static METRIC_SYSTEM_SERVER:Ljava/lang/String; = null

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final RADIOS_STATE_POLL_SLEEP_MS:I = 0x64

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TRON_METRICS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final VENDOR_SUBSYS_MAX_WAIT_MS:I = 0x2710

.field private static final VENDOR_SUBSYS_STATE_CHECK_INTERVAL_MS:I = 0x64

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReason:Ljava/lang/String; = null

.field private static mReboot:Z = false

.field private static mRebootHasProgressBar:Z = false

.field private static mRebootSafeMode:Z = false

.field private static final mSpew:Z = true

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static final sIsStartedGuard:Ljava/lang/Object;

.field private static sNeedShutdownDialog:Z


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 126
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 128
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 129
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 130
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 140
    const-string v0, "shutdown_system_server"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    .line 141
    const-string v0, "shutdown_send_shutdown_broadcast"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    .line 142
    const-string v0, "shutdown_activity_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    .line 143
    const-string v0, "shutdown_package_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    .line 144
    const-string v0, "shutdown_radios"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    .line 145
    const-string v0, "shutdown_radio"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    .line 146
    const-string v0, "begin_shutdown"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sNeedShutdownDialog:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 170
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 83
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/util/ArrayMap;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/TimingsTraceLog;
    .locals 1

    .line 83
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .line 83
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method static synthetic access$700()Lcom/android/server/power/ShutdownThread;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 490
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    .line 492
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown sequence already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    monitor-exit v0

    return-void

    .line 495
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 496
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :try_start_1
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusExService;

    .line 504
    .local v0, "iOnePlusExService":Lcom/oneplus/os/IOnePlusExService;
    if-eqz v0, :cond_1

    .line 505
    invoke-interface {v0}, Lcom/oneplus/os/IOnePlusExService;->shutdown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    .end local v0    # "iOnePlusExService":Lcom/oneplus/os/IOnePlusExService;
    :cond_1
    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "shutdownInner: fail to notify OnePlusExService."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 515
    const-string v0, "ro.vendor.op.update.completed"

    const-string v2, "ERROR"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "updateCompleted":Ljava/lang/String;
    const-string v2, "ro.vendor.op.wipe.data"

    const-string v3, "ERROR"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "bootToRecovery":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutdown or Reboot after updatting OTA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShutdownThread"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutdown or Reboot to recovery after updatting OTA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShutdownThread"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 520
    const-string v3, "ShutdownThread"

    const-string v4, "upload OTA info"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v3, "ro.build.version.ota"

    const-string v4, "ERROR"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "currentOtaVersion":Ljava/lang/String;
    const-string v4, "ro.vendor.op.target.version.ota"

    const-string v5, "ERROR"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, "targetOtaVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ota info:currentOtaVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , targetOtaVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ShutdownThread"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v5

    .line 525
    .local v5, "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v6, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "appid"

    const-string v8, "1IM6KRES9P"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 528
    .local v7, "usageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "currentOtaVersion"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v8, "targetOtaVersion"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v8, "rebootAfterOta"

    invoke-virtual {v5, p0, v8, v7, v6}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveUrgentOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 532
    const-wide/16 v8, 0xbb8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 534
    goto :goto_1

    .line 533
    :catch_1
    move-exception v8

    .line 537
    .end local v3    # "currentOtaVersion":Ljava/lang/String;
    .end local v4    # "targetOtaVersion":Ljava/lang/String;
    .end local v5    # "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    .end local v6    # "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "usageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 538
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 542
    const-string v3, "ShutdownThread"

    const-string v4, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 548
    const/4 v5, 0x0

    :try_start_3
    iget-object v6, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string v7, "ShutdownThread-cpu"

    invoke-virtual {v6, v1, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 550
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 551
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 555
    goto :goto_2

    .line 552
    :catch_2
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v3, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 558
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_2
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 559
    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 561
    :try_start_4
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v6, 0x1a

    const-string v7, "ShutdownThread-screen"

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 563
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 564
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 568
    goto :goto_3

    .line 565
    :catch_3
    move-exception v1

    .line 566
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v3, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 571
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_3
    :goto_3
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 572
    const v1, 0x3345a

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 576
    :cond_4
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v3, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    iput-object v3, v1, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 578
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 579
    return-void

    .line 496
    .end local v0    # "updateCompleted":Ljava/lang/String;
    .end local v2    # "bootToRecovery":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method private static metricEnded(Ljava/lang/String;)V
    .locals 6
    .param p0, "metricKey"    # Ljava/lang/String;

    .line 757
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 758
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    monitor-exit v0

    .line 761
    return-void

    .line 760
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static metricShutdownStart()V
    .locals 5

    .line 764
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 765
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    monitor-exit v0

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static metricStarted(Ljava/lang/String;)V
    .locals 6
    .param p0, "metricKey"    # Ljava/lang/String;

    .line 751
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 752
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    const-wide/16 v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static newTimingsLog()Landroid/util/TimingsTraceLog;
    .locals 4

    .line 747
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ShutdownTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .line 292
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 293
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 294
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 295
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 298
    const-string v1, "ShutdownThread"

    const-string v2, "!!! Request to reboot !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 302
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 304
    .local v4, "element":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    |----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "stack":[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 309
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 856
    move-object v1, p0

    const-string v0, "vendor.peripheral.shutdown_critical_list"

    const-string v2, "ERROR"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, "subsysProp":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "ShutdownThread"

    if-nez v0, :cond_8

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shutdown critical subsyslist is :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v0, "Waiting for a maximum of 10000ms"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "subsysList":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 866
    .local v5, "wait_count":I
    const/4 v6, 0x1

    .line 868
    .local v6, "okToShutdown":Z
    array-length v7, v0

    .line 870
    .local v7, "subsysListLength":I
    :cond_0
    const/4 v6, 0x1

    .line 871
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const-string v9, "ONLINE"

    const-string v10, ".state"

    const-string v11, "vendor.peripheral."

    if-ge v8, v7, :cond_2

    .line 872
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v0, v8

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 873
    invoke-static {v10, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 878
    .local v10, "subsysState":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 882
    const/4 v6, 0x0

    .line 871
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 885
    .end local v8    # "i":I
    .end local v10    # "subsysState":Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_3

    .line 886
    const-wide/16 v12, 0x64

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    .line 887
    add-int/lit8 v5, v5, 0x1

    .line 889
    :cond_3
    const/4 v8, 0x1

    if-eq v6, v8, :cond_4

    const/16 v12, 0x64

    if-lt v5, v12, :cond_0

    .line 891
    :cond_4
    if-eq v6, v8, :cond_7

    .line 892
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    array-length v12, v0

    if-ge v8, v12, :cond_6

    .line 893
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v0, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 894
    invoke-static {v12, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 899
    .local v12, "subsysState":Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 900
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Subsystem "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v0, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "did not shut down within timeout"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "i":I
    .end local v12    # "subsysState":Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 905
    :cond_7
    const-string v2, "Vendor subsystem(s) shutdown successful"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .end local v0    # "subsysList":[Ljava/lang/String;
    .end local v5    # "wait_count":I
    .end local v6    # "okToShutdown":Z
    .end local v7    # "subsysListLength":I
    :cond_8
    :goto_2
    const/4 v0, 0x0

    move v2, v0

    .line 910
    .local v2, "waitSPCount":I
    :goto_3
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getInitializedFinished()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xf

    if-ge v2, v0, :cond_9

    .line 911
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 912
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 915
    :cond_9
    if-eqz p1, :cond_a

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rebooting, reason: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 918
    const-string v0, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v0, 0x0

    .end local p2    # "reason":Ljava/lang/String;
    .local v0, "reason":Ljava/lang/String;
    goto :goto_6

    .line 920
    .end local v0    # "reason":Ljava/lang/String;
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_a
    move-object/from16 v5, p2

    if-eqz v1, :cond_b

    .line 922
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 924
    .local v6, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v7, 0x1f4

    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v6, v7, v8, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    goto :goto_4

    .line 925
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Failed to vibrate during shutdown."

    invoke-static {v4, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 934
    goto :goto_5

    .line 933
    :catch_1
    move-exception v0

    .line 937
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_b
    :goto_5
    move-object v0, v5

    .end local p2    # "reason":Ljava/lang/String;
    .local v0, "reason":Ljava/lang/String;
    :goto_6
    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .line 320
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 321
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    return-void

    .line 325
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 326
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 327
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 328
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 331
    const-string v1, "ShutdownThread"

    const-string v2, "rebootSafeMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 334
    return-void
.end method

.method private static saveMetrics(ZLjava/lang/String;)V
    .locals 9
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .local v0, "metricValue":Ljava/lang/StringBuilder;
    const-string v1, "reboot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    if-eqz p0, :cond_0

    const-string v1, "y"

    goto :goto_0

    :cond_0
    const-string v1, "n"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 947
    .local v1, "metricsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const-string v3, "ShutdownThread"

    if-ge v2, v1, :cond_2

    .line 948
    sget-object v4, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 949
    .local v4, "name":Ljava/lang/String;
    sget-object v5, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 950
    .local v5, "value":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    .line 951
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "metricEnded wasn\'t called for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    goto :goto_2

    .line 954
    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 947
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":J
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 956
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/shutdown-metrics.tmp"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 957
    .local v2, "tmp":Ljava/io/File;
    const/4 v4, 0x0

    .line 958
    .local v4, "saved":Z
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    const/4 v4, 0x1

    .line 961
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 963
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 958
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "metricValue":Ljava/lang/StringBuilder;
    .end local v1    # "metricsSize":I
    .end local v2    # "tmp":Ljava/io/File;
    .end local v4    # "saved":Z
    .end local p0    # "reboot":Z
    .end local p1    # "reason":Ljava/lang/String;
    :goto_3
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 961
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "metricValue":Ljava/lang/StringBuilder;
    .restart local v1    # "metricsSize":I
    .restart local v2    # "tmp":Ljava/io/File;
    .restart local v4    # "saved":Z
    .restart local p0    # "reboot":Z
    .restart local p1    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 962
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Cannot save shutdown metrics"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v4, :cond_3

    .line 965
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/system/shutdown-metrics.txt"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 967
    :cond_3
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 770
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    return-void
.end method

.method private static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 338
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, "pd":Landroid/app/ProgressDialog;
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    const-string v5, "recovery-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 368
    const v1, 0x10406e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_1

    .line 370
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 371
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 372
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 373
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 375
    const v1, 0x10406df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 378
    :cond_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    return-object v3

    .line 381
    :cond_2
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 382
    const v1, 0x10406e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 387
    :cond_3
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sNeedShutdownDialog:Z

    const v5, 0x104076e

    const v6, 0x10406c8

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 388
    const-string v7, "recovery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 395
    return-object v3

    .line 396
    :cond_4
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 400
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 405
    :cond_5
    const v1, 0x10406dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    const v1, 0x10406dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 411
    :cond_6
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 414
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    return-object v3

    .line 451
    :cond_7
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 455
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 456
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 458
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 459
    return-object v0
.end method

.method private static showSysuiReboot()Z
    .locals 6

    .line 465
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x3e

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string v2, "ShutdownThread"

    if-eqz v1, :cond_0

    .line 466
    invoke-static {}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->showCarrierShutdownAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "Attempting to use cust shutdown animation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return v0

    .line 473
    :cond_0
    const-string v1, "Attempting to use SysUI shutdown UI"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :try_start_0
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 477
    .local v1, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showShutdownUi(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 479
    const-string v4, "SysUI handling shutdown UI"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    return v0

    .line 484
    .end local v1    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_1
    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 485
    :goto_0
    const-string v0, "SysUI is unavailable"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v3
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 184
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 185
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 188
    const-string v1, "ShutdownThread"

    const-string v2, "!!! Request to shutdown !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 192
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 194
    .local v4, "element":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    |----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "stack":[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 199
    return-void
.end method

.method private static shutdownInner(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 208
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    .line 210
    const-string v1, "ShutdownThread"

    const-string v2, "Request to shutdown already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5b

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lcom/oneplus/android/server/OpMotorInjector;->getMotorState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Lcom/oneplus/android/server/OpMotorInjector;->notifyPowerOff()V

    .line 224
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 226
    .local v0, "longPressBehavior":I
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v1, :cond_2

    .line 227
    const v1, 0x10406da

    goto :goto_0

    .line 228
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 229
    const v1, 0x104076d

    goto :goto_0

    .line 230
    :cond_3
    const v1, 0x104076c

    :goto_0
    nop

    .line 232
    .local v1, "resourceId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShutdownThread"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz p1, :cond_6

    .line 235
    new-instance v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 236
    .local v2, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    .line 237
    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    :cond_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_5

    .line 241
    const v4, 0x10406db

    goto :goto_1

    .line 242
    :cond_5
    const v4, 0x10406c8

    .line 240
    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 243
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v5, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    .line 244
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    const/4 v5, 0x0

    .line 249
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 251
    iput-object v3, v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 252
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 253
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 254
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 255
    .end local v2    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    goto :goto_2

    .line 256
    :cond_6
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    .line 258
    :goto_2
    return-void

    .line 213
    .end local v0    # "longPressBehavior":I
    .end local v1    # "resourceId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private shutdownRadios(I)V
    .locals 10
    .param p1, "timeout"    # I

    .line 786
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 787
    .local v0, "endTime":J
    const/4 v2, 0x1

    new-array v2, v2, [Z

    .line 788
    .local v2, "done":[Z
    new-instance v3, Lcom/android/server/power/ShutdownThread$6;

    move-object v4, v3

    move-object v5, p0

    move-wide v6, v0

    move v8, p1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 836
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 838
    int-to-long v4, p1

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    goto :goto_0

    .line 839
    :catch_0
    move-exception v4

    .line 841
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    if-nez v4, :cond_0

    .line 842
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for Radio shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    return-void
.end method

.method private uncrypt()V
    .locals 9

    .line 970
    const-string v0, "ShutdownThread"

    const-string v1, "Calling uncrypt and monitoring the progress..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 993
    .local v1, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 994
    .local v3, "done":[Z
    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    .line 995
    new-instance v5, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 1010
    .local v5, "t":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1013
    const-wide/32 v6, 0xdbba0

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    goto :goto_0

    .line 1014
    :catch_0
    move-exception v6

    .line 1016
    :goto_0
    aget-boolean v6, v3, v4

    if-nez v6, :cond_0

    .line 1017
    const-string v6, "Timed out waiting for uncrypt."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/16 v6, 0x64

    .line 1019
    .local v6, "uncryptTimeoutError":I
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x384

    .line 1020
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    .line 1019
    const-string v2, "uncrypt_time: %d\nuncrypt_error: %d\n"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    .local v2, "timeoutMessage":Ljava/lang/String;
    :try_start_1
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v4, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1025
    goto :goto_1

    .line 1023
    :catch_1
    move-exception v4

    .line 1024
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "Failed to write timeout message to uncrypt status"

    invoke-static {v0, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    .end local v2    # "timeoutMessage":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "uncryptTimeoutError":I
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 584
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 585
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 17

    .line 593
    move-object/from16 v1, p0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v2

    .line 594
    .local v2, "shutdownTimingLog":Landroid/util/TimingsTraceLog;
    const-string v0, "SystemServerShutdown"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->metricShutdownStart()V

    .line 596
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 598
    new-instance v7, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v7, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 611
    .local v7, "br":Landroid/content/BroadcastReceiver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "reason":Ljava/lang/String;
    const-string v3, "sys.shutdown.requested"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .end local v0    # "reason":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v0, :cond_2

    .line 620
    const-string v0, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_2
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 637
    const-string v0, "SendShutdownBroadcast"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 638
    const-string v0, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 642
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v3

    .line 643
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v3, 0x50000000

    invoke-virtual {v12, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 644
    iget-object v3, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v8, v1, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v12

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 649
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0x3e

    aput v4, v3, v0

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    const-string v0, "ShutdownThread"

    const-string v3, "Force shutdown portait"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->forceShuttingDownPortait()V

    .line 655
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 656
    .local v3, "endTime":J
    iget-object v8, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v8

    .line 657
    :goto_2
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const/4 v9, 0x0

    if-nez v0, :cond_6

    .line 658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v3, v10

    .line 659
    .local v10, "delay":J
    const-wide/16 v13, 0x0

    cmp-long v0, v10, v13

    if-gtz v0, :cond_4

    .line 660
    const-string v0, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    goto :goto_4

    .line 662
    :cond_4
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_5

    .line 663
    sub-long v13, v5, v10

    long-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v15

    const-wide v15, 0x40c3880000000000L    # 10000.0

    div-double/2addr v13, v15

    double-to-int v0, v13

    .line 665
    .local v0, "status":I
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v13, v0, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    .end local v0    # "status":I
    :cond_5
    :try_start_1
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v13, 0x1f4

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    goto :goto_3

    .line 669
    :catch_0
    move-exception v0

    .line 671
    .end local v10    # "delay":J
    :goto_3
    goto :goto_2

    .line 672
    :cond_6
    :goto_4
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_7

    .line 674
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x2

    invoke-direct {v0, v5, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 676
    :cond_7
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 677
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 679
    const-string v0, "ShutdownThread"

    const-string v5, "Shutting down activity manager..."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v0, "ShutdownActivityManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 681
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 683
    nop

    .line 684
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v5

    .line 685
    .local v5, "am":Landroid/app/IActivityManager;
    if-eqz v5, :cond_8

    .line 687
    const/16 v0, 0x2710

    :try_start_3
    invoke-interface {v5, v0}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 689
    goto :goto_5

    .line 688
    :catch_1
    move-exception v0

    .line 691
    :cond_8
    :goto_5
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_9

    .line 692
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v6, 0x4

    invoke-direct {v0, v6, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 694
    :cond_9
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 695
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 697
    const-string v0, "ShutdownThread"

    const-string v6, "Shutting down package manager..."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v0, "ShutdownPackageManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 699
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 701
    nop

    .line 702
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 703
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v0, :cond_a

    .line 704
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 706
    :cond_a
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_b

    .line 707
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v8, 0x6

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 709
    :cond_b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 710
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 713
    const-string v6, "ShutdownRadios"

    invoke-virtual {v2, v6}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 714
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 715
    const/16 v6, 0x2ee0

    invoke-direct {v1, v6}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 716
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_c

    .line 717
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v8, 0x12

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 719
    :cond_c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 720
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 724
    const-string v6, "ShutdownThread"

    const-string v8, "Shutting down radios..."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_d

    .line 728
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v8, 0x14

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 735
    :cond_d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 736
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 737
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/android/server/power/ShutdownThread;->saveMetrics(ZLjava/lang/String;)V

    .line 741
    const-string v6, "ShutdownThread"

    const-string v8, "MountService shut done..."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v6, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v9, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 744
    return-void

    .line 672
    .end local v0    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v5    # "am":Landroid/app/IActivityManager;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
