.class public final Lcom/android/server/wm/SurfaceAnimationThread;
.super Lcom/android/server/ServiceThread;
.source "SurfaceAnimationThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/wm/SurfaceAnimationThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 34
    const-string v0, "android.anim.lf"

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 35
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 3

    .line 38
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationThread;

    invoke-direct {v0}, Lcom/android/server/wm/SurfaceAnimationThread;-><init>()V

    sput-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 40
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->start()V

    .line 41
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sHandler:Landroid/os/Handler;

    .line 44
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/wm/SurfaceAnimationThread;
    .locals 2

    .line 47
    const-class v0, Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    .line 49
    sget-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 54
    const-class v0, Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    .line 56
    sget-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
