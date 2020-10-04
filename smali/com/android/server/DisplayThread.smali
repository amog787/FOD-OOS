.class public final Lcom/android/server/DisplayThread;
.super Lcom/android/server/ServiceThread;
.source "DisplayThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/DisplayThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 36
    const-string v0, "android.display"

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 37
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 3

    .line 40
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/server/DisplayThread;

    invoke-direct {v0}, Lcom/android/server/DisplayThread;-><init>()V

    sput-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 42
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->start()V

    .line 43
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    .line 46
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/DisplayThread;
    .locals 2

    .line 49
    const-class v0, Lcom/android/server/DisplayThread;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    .line 51
    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 56
    const-class v0, Lcom/android/server/DisplayThread;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    .line 58
    sget-object v1, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
