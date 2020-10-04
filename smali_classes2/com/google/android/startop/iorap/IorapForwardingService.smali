.class public Lcom/google/android/startop/iorap/IorapForwardingService;
.super Lcom/android/server/SystemService;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;,
        Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;,
        Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;,
        Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static IS_ENABLED:Z = false

.field public static final TAG:Ljava/lang/String; = "IorapForwardingService"

.field private static WTF_CRASH:Z


# instance fields
.field private final mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredListeners:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-string v0, "IorapForwardingService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    .line 54
    const-string v0, "ro.iorapd.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->IS_ENABLED:Z

    .line 56
    const-string v0, "iorapd.forwarding_service.wtf_crash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->WTF_CRASH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;

    .line 63
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/startop/iorap/IorapForwardingService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService;->retryConnectToRemoteAndConfigure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;

    .line 48
    invoke-static {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->invokeRemote(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;

    .line 48
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    return-object v0
.end method

.method private connectToRemoteAndConfigure()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->connectToRemoteAndConfigureLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectToRemoteAndConfigureLocked()Z
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->isIorapEnabled()Z

    move-result v0

    const-string v1, "IorapForwardingService"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 215
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "connectToRemoteAndConfigure - iorapd is disabled, skip rest of work"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    return v2

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideIorapRemote()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    .line 228
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    if-nez v0, :cond_2

    .line 229
    const-string v0, "connectToRemoteAndConfigure - null iorap remote. check for Log.wtf?"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_2
    new-instance v0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$wgbD3UX3tm4cAHA8-DcwmeBBlXU;

    invoke-direct {v0, p0}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$wgbD3UX3tm4cAHA8-DcwmeBBlXU;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->invokeRemote(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    .line 233
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->registerInProcessListenersLocked()V

    .line 235
    return v2
.end method

.method private static handleRemoteError(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 384
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->WTF_CRASH:Z

    if-nez v0, :cond_0

    .line 389
    const-string v0, "IorapForwardingService"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unexpected remote error"

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static invokeRemote(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V
    .locals 1
    .param p0, "r"    # Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;

    .line 368
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->handleRemoteError(Ljava/lang/Throwable;)V

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private registerInProcessListenersLocked()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    if-eqz v0, :cond_0

    .line 251
    return-void

    .line 256
    :cond_0
    nop

    .line 257
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v0

    .line 258
    .local v0, "launchObserverRegistry":Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    .line 261
    return-void
.end method

.method private retryConnectToRemoteAndConfigure(I)Z
    .locals 6
    .param p1, "attempts"    # I

    .line 177
    const/16 v0, 0x3e8

    .line 179
    .local v0, "sleepTime":I
    sget-boolean v1, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    const-string v2, "IorapForwardingService"

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryConnectToRemoteAndConfigure - attempt #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->connectToRemoteAndConfigure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v1, 0x1

    return v1

    .line 193
    :cond_1
    const-string v1, "Failed to connect to iorapd, is it down? Delay for 1000"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mHandler:Landroid/os/Handler;

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 197
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    return v2
.end method


# virtual methods
.method protected isIorapEnabled()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 128
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->IS_ENABLED:Z

    return v0
.end method

.method public synthetic lambda$connectToRemoteAndConfigureLocked$0$IorapForwardingService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    new-instance v1, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/startop/iorap/IIorap;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 135
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "IorapForwardingService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->retryConnectToRemoteAndConfigure(I)Z

    .line 140
    return-void
.end method

.method protected provideDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$1;

    invoke-direct {v0, p0}, Lcom/google/android/startop/iorap/IorapForwardingService$1;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    return-object v0
.end method

.method protected provideIorapRemote()Lcom/google/android/startop/iorap/IIorap;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 97
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "iorapd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/startop/iorap/IIorap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .local v1, "iorap":Lcom/google/android/startop/iorap/IIorap;
    nop

    .line 104
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/startop/iorap/IIorap;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    nop

    .line 110
    return-object v1

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Lcom/google/android/startop/iorap/IorapForwardingService;->handleRemoteError(Ljava/lang/Throwable;)V

    .line 107
    return-object v0

    .line 98
    .end local v1    # "iorap":Lcom/google/android/startop/iorap/IIorap;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    invoke-static {v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->handleRemoteError(Ljava/lang/Throwable;)V

    .line 100
    return-object v0
.end method

.method protected provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 86
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 87
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 88
    .local v0, "amtInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    nop

    .line 89
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v1

    .line 90
    .local v1, "launchObserverRegistry":Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    return-object v1
.end method
