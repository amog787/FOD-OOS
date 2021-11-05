.class public final Lcom/android/server/DisplayThread;
.super Lcom/android/server/ServiceThread;
.source "DisplayThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/DisplayThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 38
    const-string v0, "android.display"

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 39
    return-void
.end method

.method public static dispose()V
    .locals 5

    .line 70
    const-class v0, Lcom/android/server/DisplayThread;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    if-nez v1, :cond_0

    .line 72
    monitor-exit v0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/-$$Lambda$DisplayThread$f5MRs-rGyBEbIMjOX5lqvMSkf2g;->INSTANCE:Lcom/android/server/-$$Lambda$DisplayThread$f5MRs-rGyBEbIMjOX5lqvMSkf2g;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 76
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static ensureThreadLocked()V
    .locals 3

    .line 42
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/server/DisplayThread;

    invoke-direct {v0}, Lcom/android/server/DisplayThread;-><init>()V

    sput-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 44
    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->start()V

    .line 45
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    .line 48
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/DisplayThread;
    .locals 2

    .line 51
    const-class v0, Lcom/android/server/DisplayThread;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    .line 53
    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 58
    const-class v0, Lcom/android/server/DisplayThread;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    .line 60
    sget-object v1, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dispose$0()V
    .locals 1

    .line 75
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->quit()Z

    return-void
.end method
