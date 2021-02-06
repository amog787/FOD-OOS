.class public final Lcom/android/server/IoThread;
.super Lcom/android/server/ServiceThread;
.source "IoThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static sInstance:Lcom/android/server/IoThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 36
    const-string v0, "android.io"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 37
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 3

    .line 40
    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/server/IoThread;

    invoke-direct {v0}, Lcom/android/server/IoThread;-><init>()V

    sput-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    .line 42
    invoke-virtual {v0}, Lcom/android/server/IoThread;->start()V

    .line 43
    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/os/HandlerExecutor;

    sget-object v1, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/IoThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 47
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/IoThread;
    .locals 2

    .line 50
    const-class v0, Lcom/android/server/IoThread;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    .line 52
    sget-object v1, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 64
    const-class v0, Lcom/android/server/IoThread;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    .line 66
    sget-object v1, Lcom/android/server/IoThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 57
    const-class v0, Lcom/android/server/IoThread;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    .line 59
    sget-object v1, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
