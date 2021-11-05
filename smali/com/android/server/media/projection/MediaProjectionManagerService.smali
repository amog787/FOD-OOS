.class public final Lcom/android/server/media/projection/MediaProjectionManagerService;
.super Lcom/android/server/SystemService;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final REQUIRE_FG_SERVICE_FOR_PROJECTION:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaProjectionManagerService"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mDeathEaters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field private mProjectionToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    .line 94
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-direct {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 95
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 96
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 97
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 99
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    .line 100
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 101
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method static synthetic access$1700(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 69
    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .line 69
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/media/projection/MediaProjectionManagerService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->handleForegroundServicesChanged(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isValidMediaProjection(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/projection/MediaProjectionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    return-object v0
.end method

.method private addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 190
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$2;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 196
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 198
    invoke-direct {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 1
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 229
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 230
    return-void
.end method

.method private dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 1
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 233
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 234
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 255
    const-string v0, "MEDIA PROJECTION MANAGER (dumpsys media_projection)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    const-string v1, "Media Projection: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v1, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 261
    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    :goto_0
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_0

    .line 248
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleForegroundServicesChanged(III)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 149
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 153
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getMediaProjectPid()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.oneplus.screenrecord"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->requiresForegroundService()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    monitor-exit v0

    return-void

    .line 163
    :cond_1
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_2

    .line 164
    monitor-exit v0

    return-void

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 156
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isValidMediaProjection(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 237
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;
    .param p2, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 212
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 213
    .local v0, "token":Landroid/os/IBinder;
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 214
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .end local v0    # "token":Landroid/os/IBinder;
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManagerService"

    const-string v2, "Unable to link to death for media projection monitoring callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 203
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 205
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v1, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 1
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 172
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 179
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 181
    return-void
.end method

.method private stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 1
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 185
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 187
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 806
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 814
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 812
    :cond_0
    const-string v0, "TYPE_PRESENTATION"

    return-object v0

    .line 810
    :cond_1
    const-string v0, "TYPE_MIRRORING"

    return-object v0

    .line 808
    :cond_2
    const-string v0, "TYPE_SCREEN_CAPTURE"

    return-object v0
.end method

.method private unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 221
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 222
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 223
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    if-eqz v1, :cond_0

    .line 224
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public monitor()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 4

    .line 105
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$1;)V

    const-string/jumbo v1, "media_projection"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 107
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 110
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 126
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 130
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 131
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 135
    :cond_0
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
