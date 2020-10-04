.class public Lcom/android/server/location/LocationProviderProxy;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "LocationProviderProxy.java"


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

.field private final mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProviderPackagesLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderPackagesLock:Ljava/lang/Object;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRequestLock"
        }
    .end annotation
.end field

.field private final mRequestLock:Ljava/lang/Object;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private mWorkSource:Landroid/os/WorkSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRequestLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationProviderManager"    # Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I

    .line 121
    move-object v9, p0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Lcom/android/server/location/LocationProviderProxy;->mProviderPackagesLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Lcom/android/server/location/LocationProviderProxy;->mRequestLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationProviderProxy$1;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    iput-object v0, v9, Lcom/android/server/location/LocationProviderProxy;->mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v9, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    new-instance v10, Lcom/android/server/location/LocationProviderProxy$2;

    .line 125
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v3, "LocationProviderProxy"

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/LocationProviderProxy$2;-><init>(Lcom/android/server/location/LocationProviderProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    iput-object v10, v9, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 140
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 141
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, v9, Lcom/android/server/location/LocationProviderProxy;->mWorkSource:Landroid/os/WorkSource;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationProviderProxy;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;
    .param p1, "x1"    # Ljava/util/List;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->onSetAdditionalProviderPackages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;
    .param p1, "x1"    # Ljava/util/List;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->resetProviderPackages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->initializeService(Landroid/os/IBinder;)V

    return-void
.end method

.method private bind()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationProviderManager"    # Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNamesResId"    # I

    .line 108
    new-instance v7, Lcom/android/server/location/LocationProviderProxy;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)V

    .line 111
    .local v0, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-direct {v0}, Lcom/android/server/location/LocationProviderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    return-object v0

    .line 114
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private initializeService(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 150
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    sget-boolean v1, Lcom/android/server/location/LocationProviderProxy;->D:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applying state to connected service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationProviderProxy;->resetProviderPackages(Ljava/util/List;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

    invoke-interface {v0, v1}, Lcom/android/internal/location/ILocationProvider;->setLocationProviderManager(Lcom/android/internal/location/ILocationProviderManager;)V

    .line 156
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 160
    :cond_1
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic lambda$getStatus$1(Landroid/os/Bundle;Landroid/os/IBinder;)Ljava/lang/Integer;
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 196
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    invoke-interface {v0, p0}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getStatusUpdateTime$2(Landroid/os/IBinder;)Ljava/lang/Long;
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 204
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    invoke-interface {v0}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$sendExtraCommand$3(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {p2}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 212
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    invoke-interface {v0, p0, p1}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method static synthetic lambda$setRequest$0(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p1, "source"    # Landroid/os/WorkSource;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {p2}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 178
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    invoke-interface {v0, p0, p1}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 179
    return-void
.end method

.method private onSetAdditionalProviderPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->resetProviderPackages(Ljava/util/List;)V

    .line 218
    return-void
.end method

.method private resetProviderPackages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p1, "additionalPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v0, "permittedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x100000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 225
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_1

    .line 226
    :catch_0
    move-exception v3

    .line 227
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " specified unknown additional provider package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LocationProviderProxy"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 234
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "myPackage":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 236
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    .end local v2    # "myPackage":Ljava/lang/String;
    :cond_1
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    additional packages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    :cond_0
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProviderPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit v0

    return-object v1

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 194
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$HNmfjzTDtRS07pxKSpIAhcUh88Y;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$HNmfjzTDtRS07pxKSpIAhcUh88Y;-><init>(Landroid/os/Bundle;)V

    .line 197
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ServiceWatcher;->runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    sget-object v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;->INSTANCE:Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;

    .line 205
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ServiceWatcher;->runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 210
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 214
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 172
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 174
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mWorkSource:Landroid/os/WorkSource;

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 180
    return-void

    .line 175
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
