.class public Lcom/android/server/location/LocationProviderProxy;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "LocationProviderProxy.java"


# static fields
.field private static final MAX_ADDITIONAL_PACKAGES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private mBound:Z

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

.field private volatile mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "enableOverlayResId"    # I
    .param p4, "nonOverlayPackageResId"    # I

    .line 149
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    .line 72
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationProviderProxy$1;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    .line 151
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Lcom/android/server/ServiceWatcher;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$3wGALcuMWaMkkBRL1d0LQ_QqoCk;

    invoke-direct {v5, p0}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$3wGALcuMWaMkkBRL1d0LQ_QqoCk;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    new-instance v6, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$26d2FFhpYis1Ws92o2khDXr7LzU;

    invoke-direct {v6, p0}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$26d2FFhpYis1Ws92o2khDXr7LzU;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/ServiceWatcher$BinderRunner;Ljava/lang/Runnable;II)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mBound:Z

    .line 156
    sget-object v0, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationProviderProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 50
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 50
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 50
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 50
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mBound:Z

    return v0
.end method

.method public static createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableOverlayResId"    # I
    .param p3, "nonOverlayPackageResId"    # I

    .line 63
    new-instance v0, Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 65
    .local v0, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-direct {v0}, Lcom/android/server/location/LocationProviderProxy;->register()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    return-object v0

    .line 68
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic lambda$26d2FFhpYis1Ws92o2khDXr7LzU(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->onUnbind()V

    return-void
.end method

.method public static synthetic lambda$3wGALcuMWaMkkBRL1d0LQ_QqoCk(Lcom/android/server/location/LocationProviderProxy;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->onBind(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$onExtraCommand$1(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-static {p2}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 203
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    invoke-interface {v0, p0, p1}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method static synthetic lambda$onSetRequest$0(Lcom/android/internal/location/ProviderRequest;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 195
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    iget-object v1, p0, Lcom/android/internal/location/ProviderRequest;->workSource:Landroid/os/WorkSource;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 196
    return-void
.end method

.method private onBind(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 166
    .local v0, "provider":Lcom/android/internal/location/ILocationProvider;
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mBound:Z

    .line 169
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

    invoke-interface {v0, v2}, Lcom/android/internal/location/ILocationProvider;->setLocationProviderManager(Lcom/android/internal/location/ILocationProviderManager;)V

    .line 171
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 172
    .local v2, "request":Lcom/android/internal/location/ProviderRequest;
    sget-object v3, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    iget-object v3, v2, Lcom/android/internal/location/ProviderRequest;->workSource:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v3}, Lcom/android/server/ServiceWatcher;->getBoundService()Lcom/android/server/ServiceWatcher$ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    .line 177
    .local v3, "service":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/location/LocationProviderProxy;->setPackageNames(Ljava/util/Set;)V

    .line 180
    .end local v2    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v3    # "service":Landroid/content/ComponentName;
    :cond_1
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onUnbind()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mBound:Z

    .line 186
    sget-object v1, Lcom/android/server/location/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationProviderProxy;->setState(Lcom/android/server/location/AbstractLocationProvider$State;)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private register()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->register()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ServiceWatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 201
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$yxlgGzrAmph8SqKppGMl5iNhd-0;

    invoke-direct {v1, p3, p4}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$yxlgGzrAmph8SqKppGMl5iNhd-0;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 205
    return-void
.end method

.method public onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 192
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 193
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$Uez3oEpu2OhUykPUhHZnDv6UWJI;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$Uez3oEpu2OhUykPUhHZnDv6UWJI;-><init>(Lcom/android/internal/location/ProviderRequest;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 197
    return-void
.end method
