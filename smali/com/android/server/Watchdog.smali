.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field public static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field public static final DEBUG:Z = false

.field public static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field public static mPhonePid:I

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 102
    const-string v0, "/vendor/bin/hw/android.hardware.wifi@1.0-service"

    const-string v1, "/vendor/bin/hw/hostapd"

    const-string v2, "/vendor/bin/hw/wpa_supplicant"

    const-string v3, "/system/bin/netd"

    const-string v4, "/system/bin/wificond"

    const-string v5, "/system/bin/audioserver"

    const-string v6, "/system/bin/cameraserver"

    const-string v7, "/system/bin/drmserver"

    const-string v8, "/system/bin/mediadrmserver"

    const-string v9, "/system/bin/mediaserver"

    const-string v10, "/system/bin/sdcard"

    const-string v11, "/system/bin/surfaceflinger"

    const-string v12, "/system/bin/vold"

    const-string/jumbo v13, "media.extractor"

    const-string/jumbo v14, "media.metrics"

    const-string/jumbo v15, "media.codec"

    const-string/jumbo v16, "media.swcodec"

    const-string v17, "com.android.bluetooth"

    const-string v18, "/system/bin/statsd"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 126
    const-string v1, "android.hardware.audio@2.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v3, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v4, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v5, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v6, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v7, "android.hardware.health@2.0::IHealth"

    const-string v8, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v9, "android.hardware.media.omx@1.0::IOmx"

    const-string v10, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v11, "android.hardware.sensors@1.0::ISensors"

    const-string v12, "android.hardware.vr@1.0::IVr"

    const-string v13, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 329
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 157
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 337
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "foreground thread"

    const-wide/32 v6, 0xea60

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 339
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v4, "main thread"

    const-wide/32 v5, 0xea60

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "ui thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "i/o thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "display thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "animation thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "surface animation thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 363
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 368
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "writeTo"    # Ljava/io/File;
    .param p2, "copyFrom"    # Ljava/io/File;

    .line 834
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 835
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 836
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 839
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 840
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 841
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_0

    .line 843
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 844
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_1

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 849
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private binderStateRead()V
    .locals 5

    .line 853
    const-string v0, "Watchdog"

    :try_start_0
    const-string v1, "Collecting Binder Transaction Status Information"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/kernel/debug/binder/state"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 856
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/anr/BinderTraces_pid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 858
    .local v2, "out":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 861
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_0

    .line 862
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 863
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(I)V

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 866
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "out":Ljava/io/FileWriter;
    .end local v3    # "line":Ljava/lang/String;
    goto :goto_1

    .line 867
    :catch_0
    move-exception v1

    .line 868
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to collect state file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private cleanupProcesses(J)V
    .locals 4
    .param p1, "timeout"    # J

    .line 804
    new-instance v0, Lcom/android/server/Watchdog$2;

    const-string/jumbo v1, "watchdogKillerThread"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;J)V

    .line 814
    .local v0, "cleanupThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 816
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 818
    :goto_1
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 819
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 497
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 500
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .locals 3
    .param p1, "c"    # C

    .line 824
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 825
    .local v0, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 826
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v0    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_0

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 480
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 478
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 488
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 489
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .line 321
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 325
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private static getInterestingHalPids()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 509
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 510
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 511
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 512
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 513
    .local v2, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 514
    .local v4, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 515
    goto :goto_0

    .line 518
    :cond_0
    sget-object v5, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 519
    goto :goto_0

    .line 522
    :cond_1
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    nop

    .end local v4    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    goto :goto_0

    .line 524
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 525
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 531
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    .line 533
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 534
    .local v1, "nativePids":[I
    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 536
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 537
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 405
    monitor-exit p0

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "thread"    # Landroid/os/Handler;

    .line 409
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 410
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    nop

    .end local v4    # "name":Ljava/lang/String;
    monitor-exit p0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .line 376
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 377
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 380
    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 435
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    .line 438
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    goto :goto_0

    .line 439
    :cond_1
    monitor-exit p0

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    sput p2, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 387
    :cond_0
    monitor-exit p0

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rebooting system because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 471
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 474
    :goto_0
    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 457
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    .line 460
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    goto :goto_0

    .line 461
    :cond_1
    monitor-exit p0

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 23

    .line 546
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 547
    .local v0, "waitedHalf":Z
    const/4 v2, 0x0

    move-object v3, v2

    move v2, v0

    .line 552
    .end local v0    # "waitedHalf":Z
    .local v2, "waitedHalf":Z
    .local v3, "initialStack":Ljava/io/File;
    :goto_0
    const/4 v4, 0x0

    .line 553
    .local v4, "debuggerWasConnected":I
    monitor-enter p0

    .line 554
    const-wide/16 v5, 0x7530

    .line 557
    .local v5, "timeout":J
    const/4 v7, 0x0

    move v0, v7

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v8, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ge v0, v8, :cond_0

    .line 558
    :try_start_1
    iget-object v8, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/Watchdog$HandlerChecker;

    .line 559
    .local v8, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v8}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 557
    .end local v8    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "i":I
    :cond_0
    if-lez v4, :cond_1

    .line 563
    add-int/lit8 v4, v4, -0x1

    .line 570
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 571
    .local v8, "start":J
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v0, v5, v10

    const-wide/16 v10, 0x7530

    if-lez v0, :cond_4

    .line 572
    :try_start_3
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_2

    .line 573
    const/4 v0, 0x2

    move v4, v0

    .line 576
    :cond_2
    :try_start_4
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 580
    goto :goto_3

    .line 578
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 579
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v12, "Watchdog"

    invoke-static {v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    const/4 v0, 0x2

    move v4, v0

    .line 584
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    sub-long/2addr v12, v8

    sub-long v5, v10, v12

    goto :goto_2

    .line 587
    :cond_4
    const/4 v0, 0x0

    .line 588
    .local v0, "fdLimitTriggered":Z
    :try_start_6
    iget-object v12, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v12, :cond_5

    .line 589
    :try_start_7
    iget-object v12, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v12}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v12

    move v0, v12

    .line 592
    :cond_5
    const/4 v12, 0x2

    const/4 v13, 0x0

    if-nez v0, :cond_b

    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v14

    .line 594
    .local v14, "waitState":I
    if-nez v14, :cond_6

    .line 596
    const/4 v2, 0x0

    .line 597
    monitor-exit p0

    goto :goto_0

    .line 598
    :cond_6
    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 600
    monitor-exit p0

    goto :goto_0

    .line 601
    :cond_7
    if-ne v14, v12, :cond_a

    .line 602
    if-nez v2, :cond_9

    .line 603
    const-string v12, "Watchdog"

    const-string v15, "WAITED_HALF"

    invoke-static {v12, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v12, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    nop

    .line 609
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v15

    .line 608
    invoke-static {v12, v13, v13, v15}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v13

    move-object v3, v13

    .line 610
    const/4 v2, 0x1

    .line 613
    const-string/jumbo v13, "sys.debug.watchdog"

    invoke-static {v13, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_8

    .line 614
    invoke-direct {v1, v10, v11}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    .line 619
    :cond_8
    invoke-static {}, Landroid/os/PerfMonitor;->isEnable()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 620
    const/16 v7, 0x12f

    const-string v10, "WAITED_HALF"

    invoke-static {v7, v10}, Landroid/util/Plog;->i(ILjava/lang/String;)V

    .line 624
    .end local v12    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    monitor-exit p0

    goto/16 :goto_0

    .line 628
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v10

    .line 629
    .local v10, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    invoke-direct {v1, v10}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 630
    .end local v14    # "waitState":I
    .local v11, "subject":Ljava/lang/String;
    goto :goto_4

    .line 631
    .end local v10    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v11    # "subject":Ljava/lang/String;
    :cond_b
    :try_start_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 632
    .restart local v10    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v11, "Open FD high water mark reached"

    .line 634
    .restart local v11    # "subject":Ljava/lang/String;
    :goto_4
    iget-boolean v14, v1, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move v5, v14

    .line 635
    .end local v0    # "fdLimitTriggered":Z
    .end local v8    # "start":J
    .local v5, "allowRestart":Z
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 640
    const/16 v0, 0xaf2

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 643
    .local v6, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget v0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_c
    nop

    .line 647
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    .line 646
    invoke-static {v6, v13, v13, v0}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v8

    .line 650
    .local v8, "finalStack":Ljava/io/File;
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 651
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 656
    :cond_d
    const-wide/16 v13, 0x1388

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "traces_SystemServer_WDT"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 660
    invoke-virtual {v9, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_pid"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 662
    .local v9, "newTracesPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v13, "/data/anr"

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 663
    .local v13, "tracesDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 665
    .local v14, "watchdogTraces":Ljava/io/File;
    :try_start_9
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 666
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x180

    const/4 v12, -0x1

    invoke-static {v0, v15, v12, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 672
    if-eqz v3, :cond_f

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 677
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    sub-long v17, v17, v19

    .line 678
    .local v17, "age":J
    const-wide/32 v19, 0x493e0

    .line 679
    .local v19, "FIVE_MINUTES_IN_MILLIS":J
    const-wide/32 v21, 0x493e0

    cmp-long v0, v17, v21

    if-gez v0, :cond_e

    .line 680
    const-string v0, "Watchdog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "First set of traces taken from "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 680
    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-direct {v1, v14, v3}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_5

    .line 684
    :cond_e
    const-string v0, "Watchdog"

    const-string v12, "First set of traces were collected more than 5 minutes ago, ignoring ..."

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v17    # "age":J
    .end local v19    # "FIVE_MINUTES_IN_MILLIS":J
    :goto_5
    goto :goto_6

    .line 688
    :cond_f
    const-string v0, "Watchdog"

    const-string v12, "First set of traces are empty!"

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_6
    if-eqz v8, :cond_10

    .line 692
    const-string v0, "Watchdog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Second set of traces taken from "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 692
    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-direct {v1, v14, v8}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_7

    .line 696
    :cond_10
    const-string v0, "Watchdog"

    const-string v12, "Second set of traces are empty!"

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 699
    :cond_11
    const-string v0, "Watchdog"

    const-string v12, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 705
    :goto_7
    goto :goto_8

    .line 701
    :catch_1
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "Watchdog"

    const-string v15, "Exception creating Watchdog dump file:"

    invoke-static {v12, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v12, "watchdogWriteToDropbox"

    invoke-direct {v0, v1, v12, v11, v8}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    move-object v12, v0

    .line 722
    .local v12, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 724
    move-object/from16 v17, v8

    .end local v8    # "finalStack":Ljava/io/File;
    .local v17, "finalStack":Ljava/io/File;
    const-wide/16 v7, 0x7d0

    :try_start_a
    invoke-virtual {v12, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2

    .line 725
    :goto_9
    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    .line 730
    :goto_a
    nop

    .line 731
    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 732
    .local v8, "crashOnWatchdog":Z
    if-eqz v8, :cond_12

    .line 735
    const-string v0, "Watchdog"

    const-string v7, "Triggering SysRq for system_server watchdog"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/16 v0, 0x77

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 737
    const/16 v0, 0x6c

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 740
    const-wide/16 v18, 0xbb8

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    .line 742
    const/16 v0, 0x63

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 746
    :cond_12
    monitor-enter p0

    .line 747
    :try_start_b
    iget-object v0, v1, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v7, v0

    .line 748
    .local v7, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 749
    if-eqz v7, :cond_14

    .line 750
    const-string v0, "Watchdog"

    const-string v15, "Reporting stuck state to activity controller"

    invoke-static {v0, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :try_start_c
    invoke-interface {v7, v11}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 758
    .local v0, "res":I
    if-ltz v0, :cond_13

    .line 759
    const-string v15, "Watchdog"

    move/from16 v19, v0

    .end local v0    # "res":I
    .local v19, "res":I
    const-string v0, "Activity controller requested to coninue to wait"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    .line 760
    const/4 v2, 0x0

    .line 761
    goto/16 :goto_0

    .line 758
    .end local v19    # "res":I
    .restart local v0    # "res":I
    :cond_13
    move/from16 v19, v0

    .line 764
    .end local v0    # "res":I
    goto :goto_b

    .line 763
    :catch_3
    move-exception v0

    .line 768
    :cond_14
    :goto_b
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 769
    const/4 v4, 0x2

    .line 771
    :cond_15
    const/4 v15, 0x2

    if-lt v4, v15, :cond_16

    .line 772
    const-string v0, "Watchdog"

    const-string v15, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v2

    move-object v15, v3

    goto/16 :goto_c

    .line 773
    :cond_16
    if-lez v4, :cond_17

    .line 774
    const-string v0, "Watchdog"

    const-string v15, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v2

    move-object v15, v3

    goto :goto_c

    .line 775
    :cond_17
    if-nez v5, :cond_18

    .line 776
    const-string v0, "Watchdog"

    const-string v15, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v2

    move-object v15, v3

    goto :goto_c

    .line 778
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "Watchdog"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {v10}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 782
    const-string/jumbo v0, "sys.debug.watchdog"

    const/4 v15, 0x0

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 783
    const/4 v2, 0x0

    .line 784
    goto/16 :goto_0

    .line 786
    :cond_19
    move/from16 v16, v2

    move-object v15, v3

    .end local v2    # "waitedHalf":Z
    .end local v3    # "initialStack":Ljava/io/File;
    .local v15, "initialStack":Ljava/io/File;
    .local v16, "waitedHalf":Z
    const-wide/32 v2, 0xea60

    invoke-direct {v1, v2, v3}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    .line 787
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 788
    const-string v0, "Watchdog"

    const-string v2, "*** GOODBYE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 790
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_c

    .line 792
    :cond_1a
    const-string v0, "Watchdog"

    const-string/jumbo v2, "the status is completed after KillingAllProcessesByWatchdog skip killing system_server"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_c
    const/4 v2, 0x0

    .line 798
    .end local v4    # "debuggerWasConnected":I
    .end local v5    # "allowRestart":Z
    .end local v6    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "controller":Landroid/app/IActivityController;
    .end local v8    # "crashOnWatchdog":Z
    .end local v9    # "newTracesPath":Ljava/lang/String;
    .end local v10    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v11    # "subject":Ljava/lang/String;
    .end local v12    # "dropboxThread":Ljava/lang/Thread;
    .end local v13    # "tracesDir":Ljava/io/File;
    .end local v14    # "watchdogTraces":Ljava/io/File;
    .end local v16    # "waitedHalf":Z
    .end local v17    # "finalStack":Ljava/io/File;
    .restart local v2    # "waitedHalf":Z
    move-object v3, v15

    goto/16 :goto_0

    .line 748
    .end local v15    # "initialStack":Ljava/io/File;
    .restart local v3    # "initialStack":Ljava/io/File;
    .restart local v4    # "debuggerWasConnected":I
    .restart local v5    # "allowRestart":Z
    .restart local v6    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "crashOnWatchdog":Z
    .restart local v9    # "newTracesPath":Ljava/lang/String;
    .restart local v10    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v11    # "subject":Ljava/lang/String;
    .restart local v12    # "dropboxThread":Ljava/lang/Thread;
    .restart local v13    # "tracesDir":Ljava/io/File;
    .restart local v14    # "watchdogTraces":Ljava/io/File;
    .restart local v17    # "finalStack":Ljava/io/File;
    :catchall_0
    move-exception v0

    move/from16 v16, v2

    move-object v15, v3

    .end local v2    # "waitedHalf":Z
    .end local v3    # "initialStack":Ljava/io/File;
    .restart local v15    # "initialStack":Ljava/io/File;
    .restart local v16    # "waitedHalf":Z
    :goto_d
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_d

    .line 635
    .end local v5    # "allowRestart":Z
    .end local v6    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "crashOnWatchdog":Z
    .end local v9    # "newTracesPath":Ljava/lang/String;
    .end local v10    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v11    # "subject":Ljava/lang/String;
    .end local v12    # "dropboxThread":Ljava/lang/Thread;
    .end local v13    # "tracesDir":Ljava/io/File;
    .end local v14    # "watchdogTraces":Ljava/io/File;
    .end local v15    # "initialStack":Ljava/io/File;
    .end local v16    # "waitedHalf":Z
    .end local v17    # "finalStack":Ljava/io/File;
    .restart local v2    # "waitedHalf":Z
    .restart local v3    # "initialStack":Ljava/io/File;
    :catchall_2
    move-exception v0

    move/from16 v16, v2

    move-object v15, v3

    :goto_e
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_e
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    .line 391
    monitor-enter p0

    .line 392
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 393
    monitor-exit p0

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1
    .param p1, "allowRestart"    # Z

    .line 397
    monitor-enter p0

    .line 398
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 399
    monitor-exit p0

    .line 400
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
