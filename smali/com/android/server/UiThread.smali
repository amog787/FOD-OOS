.class public final Lcom/android/server/UiThread;
.super Lcom/android/server/ServiceThread;
.source "UiThread.java"


# static fields
.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/UiThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 36
    const-string v0, "android.ui"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 37
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 5

    .line 47
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/UiThread;

    invoke-direct {v0}, Lcom/android/server/UiThread;-><init>()V

    sput-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 49
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Lcom/android/server/UiThread;->start()V

    .line 50
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 51
    .local v0, "looper":Landroid/os/Looper;
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 52
    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 54
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v2}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    .line 56
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/UiThread;
    .locals 2

    .line 59
    const-class v0, Lcom/android/server/UiThread;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 61
    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    monitor-exit v0

    return-object v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 66
    const-class v0, Lcom/android/server/UiThread;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 68
    sget-object v1, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroup(II)V

    .line 43
    invoke-super {p0}, Lcom/android/server/ServiceThread;->run()V

    .line 44
    return-void
.end method
