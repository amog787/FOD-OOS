.class Lcom/android/server/ExplicitHealthCheckController;
.super Ljava/lang/Object;
.source "ExplicitHealthCheckController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExplicitHealthCheckController"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mNotifySyncRunnable:Ljava/lang/Runnable;

.field private mPassedConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

.field private mSupportedConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ExplicitHealthCheckController;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ExplicitHealthCheckController;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->initState(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ExplicitHealthCheckController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ExplicitHealthCheckController;

    .line 58
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/ExplicitHealthCheckController;Landroid/service/watchdog/IExplicitHealthCheckService;)Landroid/service/watchdog/IExplicitHealthCheckService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ExplicitHealthCheckController;
    .param p1, "x1"    # Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 58
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/ExplicitHealthCheckController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ExplicitHealthCheckController;

    .line 58
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ExplicitHealthCheckController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ExplicitHealthCheckController;

    .line 58
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    return-void
.end method

.method private actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "collection1":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "collection2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 190
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    return-void
.end method

.method private bindService()V
    .locals 7

    .line 292
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->getServiceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object v1

    .line 304
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 305
    const-string v2, "ExplicitHealthCheckController"

    const-string v3, "Explicit health check service not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    monitor-exit v0

    return-void

    .line 309
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    new-instance v3, Lcom/android/server/ExplicitHealthCheckController$1;

    invoke-direct {v3, p0}, Lcom/android/server/ExplicitHealthCheckController$1;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    iput-object v3, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    .line 345
    iget-object v4, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 346
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 345
    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 347
    const-string v3, "ExplicitHealthCheckController"

    const-string v4, "Explicit health check service is bound"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    nop

    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 349
    return-void

    .line 294
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-nez v1, :cond_3

    .line 295
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Not binding to service, service disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_4

    .line 297
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Not binding to service, service already connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    :cond_4
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Not binding to service, service already connecting"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_1
    monitor-exit v0

    return-void

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancel(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel health check for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    monitor-exit v0

    return-void

    .line 224
    :cond_0
    const-string v1, "ExplicitHealthCheckController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling health check for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    invoke-interface {v1, p1}, Landroid/service/watchdog/IExplicitHealthCheckService;->cancel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ExplicitHealthCheckController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cancel health check for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getRequestedPackages(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 267
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    const-string v1, "get health check requested packages"

    invoke-direct {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    monitor-exit v0

    return-void

    .line 272
    :cond_0
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Getting health check requested packages"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$MJhpX-SveTcXQEYQTQa3k6RpjzU;

    invoke-direct {v3, p1}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$MJhpX-SveTcXQEYQTQa3k6RpjzU;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v2}, Landroid/service/watchdog/IExplicitHealthCheckService;->getRequestedPackages(Landroid/os/RemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ExplicitHealthCheckController"

    const-string v3, "Failed to get health check requested packages"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getServiceComponentNameLocked()Landroid/content/ComponentName;
    .locals 6

    .line 387
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->getServiceInfoLocked()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 388
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 389
    return-object v1

    .line 392
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .local v2, "name":Landroid/content/ComponentName;
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 394
    const-string v4, "android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not require permission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExplicitHealthCheckController"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-object v1

    .line 399
    :cond_1
    return-object v2
.end method

.method private getServiceInfoLocked()Landroid/content/pm/ServiceInfo;
    .locals 6

    .line 366
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 367
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "ExplicitHealthCheckController"

    if-nez v0, :cond_0

    .line 369
    const-string/jumbo v3, "no external services package!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-object v1

    .line 373
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.watchdog.ExplicitHealthCheckService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v4, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x84

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 377
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v1

    .line 378
    :cond_2
    :goto_0
    const-string v5, "No valid components found."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v1
.end method

.method private getSupportedPackages(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;)V"
        }
    .end annotation

    .line 240
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;>;"
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    const-string v1, "get health check supported packages"

    invoke-direct {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    monitor-exit v0

    return-void

    .line 245
    :cond_0
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Getting health check supported packages"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$_PgTaUvckhKQczm_86P6Mowec48;

    invoke-direct {v3, p1}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$_PgTaUvckhKQczm_86P6Mowec48;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v2}, Landroid/service/watchdog/IExplicitHealthCheckService;->getSupportedPackages(Landroid/os/RemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ExplicitHealthCheckController"

    const-string v3, "Failed to get health check supported packages"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initState(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "service"    # Landroid/os/IBinder;

    .line 403
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-nez v1, :cond_0

    .line 405
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Attempting to connect disabled service?? Unbinding..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 408
    monitor-exit v0

    return-void

    .line 410
    :cond_0
    invoke-static {p1}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/watchdog/IExplicitHealthCheckService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :try_start_1
    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$6YGiVtgCnlJ0hMIeX5TzlFUaNrY;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$6YGiVtgCnlJ0hMIeX5TzlFUaNrY;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v2}, Landroid/service/watchdog/IExplicitHealthCheckService;->setCallback(Landroid/os/RemoteCallback;)V

    .line 426
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Service initialized, syncing requests"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ExplicitHealthCheckController"

    const-string v3, "Could not setCallback on explicit health check service"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 433
    return-void

    .line 430
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method static synthetic lambda$getRequestedPackages$5(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 275
    const-string v0, "android.service.watchdog.extra.requested_packages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 276
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Explicit health check requested packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExplicitHealthCheckController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method static synthetic lambda$getSupportedPackages$4(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 248
    nop

    .line 249
    const-string v0, "android.service.watchdog.extra.supported_packages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Explicit health check supported packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExplicitHealthCheckController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method private prepareServiceLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x1

    return v0

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service not ready to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, ". Binding..."

    goto :goto_0

    :cond_1
    const-string v1, ". Disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-boolean v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 450
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    .line 452
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private request(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request health check for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    monitor-exit v0

    return-void

    .line 204
    :cond_0
    const-string v1, "ExplicitHealthCheckController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting health check for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    invoke-interface {v1, p1}, Landroid/service/watchdog/IExplicitHealthCheckService;->request(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ExplicitHealthCheckController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to request health check for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private unbindService()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 356
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 357
    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    .line 359
    :cond_0
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Explicit health check service is unbound"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public synthetic lambda$initState$6$ExplicitHealthCheckController(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Bundle;

    .line 413
    const-string v0, "android.service.watchdog.extra.health_check_passed_package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ExplicitHealthCheckController"

    if-nez v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    if-nez v1, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Health check passed for package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "but no consumer registered."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 423
    :cond_1
    const-string v1, "Empty package passed explicit health check?"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void
.end method

.method public synthetic lambda$syncRequests$0$ExplicitHealthCheckController(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$syncRequests$1$ExplicitHealthCheckController(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->request(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$syncRequests$2$ExplicitHealthCheckController(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .locals 5
    .param p1, "supportedPackageConfigs"    # Ljava/util/List;
    .param p2, "newRequestedPackages"    # Ljava/util/Set;
    .param p3, "previousRequestedPackages"    # Ljava/util/List;

    .line 154
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 159
    .local v1, "supportedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 160
    .local v3, "config":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    invoke-virtual {v3}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    nop

    .end local v3    # "config":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 166
    new-instance v2, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$fE2pZ6ZhwFEJPuOl0ochqPnSmyI;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$fE2pZ6ZhwFEJPuOl0ochqPnSmyI;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-direct {p0, p3, p2, v2}, Lcom/android/server/ExplicitHealthCheckController;->actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 169
    new-instance v2, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$ucIBQc_IW2iYt6j4dngAncLT6nQ;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$ucIBQc_IW2iYt6j4dngAncLT6nQ;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/ExplicitHealthCheckController;->actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 172
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    const-string v2, "ExplicitHealthCheckController"

    const-string v3, "No more health check requests, unbinding..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 175
    monitor-exit v0

    return-void

    .line 177
    .end local v1    # "supportedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$syncRequests$3$ExplicitHealthCheckController(Ljava/util/Set;Ljava/util/List;)V
    .locals 1
    .param p1, "newRequestedPackages"    # Ljava/util/Set;
    .param p2, "supportedPackageConfigs"    # Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 153
    new-instance v0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/android/server/ExplicitHealthCheckController;->getRequestedPackages(Ljava/util/function/Consumer;)V

    .line 179
    return-void
.end method

.method public setCallbacks(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 3
    .param p3, "notifySyncRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 111
    .local p1, "passedConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    .local p2, "supportedConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;>;"
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Resetting health check controller callbacks"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/util/function/Consumer;

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Ljava/util/function/Consumer;

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    .line 119
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 97
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    const-string v1, "ExplicitHealthCheckController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Explicit health checks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "enabled."

    goto :goto_0

    :cond_0
    const-string v3, "disabled."

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncRequests(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "newRequestedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 141
    .local v1, "enabled":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-nez v1, :cond_0

    .line 144
    const-string v0, "ExplicitHealthCheckController"

    const-string v2, "Health checks disabled, no supported packages"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 147
    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$x4g41SYVR_nHQxV-RQY6VIfh1zs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$x4g41SYVR_nHQxV-RQY6VIfh1zs;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/android/server/ExplicitHealthCheckController;->getSupportedPackages(Ljava/util/function/Consumer;)V

    .line 180
    return-void

    .line 141
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
