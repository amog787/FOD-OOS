.class public final Lcom/android/server/wm/SurfaceAnimationThread;
.super Lcom/android/server/ServiceThread;
.source "SurfaceAnimationThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/wm/SurfaceAnimationThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 35
    const-string v0, "android.anim.lf"

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 36
    return-void
.end method

.method public static dispose()V
    .locals 5

    .line 67
    const-class v0, Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    if-nez v1, :cond_0

    .line 69
    monitor-exit v0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationThread$frZMbXAzhUBmX-wz0SwbLTXpw9k;->INSTANCE:Lcom/android/server/wm/-$$Lambda$SurfaceAnimationThread$frZMbXAzhUBmX-wz0SwbLTXpw9k;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 73
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static ensureThreadLocked()V
    .locals 3

    .line 39
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationThread;

    invoke-direct {v0}, Lcom/android/server/wm/SurfaceAnimationThread;-><init>()V

    sput-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->start()V

    .line 42
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sHandler:Landroid/os/Handler;

    .line 45
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/wm/SurfaceAnimationThread;
    .locals 2

    .line 48
    const-class v0, Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    .line 50
    sget-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 55
    const-class v0, Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    .line 57
    sget-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dispose$0()V
    .locals 1

    .line 72
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->quit()Z

    return-void
.end method
