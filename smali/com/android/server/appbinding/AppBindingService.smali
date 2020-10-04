.class public Lcom/android/server/appbinding/AppBindingService;
.super Landroid/os/Binder;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;,
        Lcom/android/server/appbinding/AppBindingService$Lifecycle;,
        Lcom/android/server/appbinding/AppBindingService$Injector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AppBindingService"


# instance fields
.field private final mApps:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnections:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConstants:Lcom/android/server/appbinding/AppBindingConstants;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

.field private final mLock:Ljava/lang/Object;

.field final mPackageUserMonitor:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mRunningUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;)V
    .locals 4
    .param p1, "injector"    # Lcom/android/server/appbinding/AppBindingService$Injector;
    .param p2, "context"    # Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Lcom/android/server/appbinding/AppBindingService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appbinding/AppBindingService$1;-><init>(Lcom/android/server/appbinding/AppBindingService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 222
    new-instance v0, Lcom/android/server/appbinding/AppBindingService$2;

    invoke-direct {v0, p0}, Lcom/android/server/appbinding/AppBindingService$2;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    .line 144
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

    .line 145
    iput-object p2, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {p1}, Lcom/android/server/appbinding/AppBindingService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 149
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 150
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    new-instance v2, Lcom/android/server/appbinding/-$$Lambda$AppBindingService$D_3boeCn8eAANOp2ZDk6OC2rNaI;

    invoke-direct {v2, p0}, Lcom/android/server/appbinding/-$$Lambda$AppBindingService$D_3boeCn8eAANOp2ZDk6OC2rNaI;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p2, v2, v3}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v0, ""

    invoke-static {v0}, Lcom/android/server/appbinding/AppBindingConstants;->initializeFromString(Ljava/lang/String;)Lcom/android/server/appbinding/AppBindingConstants;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/appbinding/AppBindingService$Injector;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/server/appbinding/AppBindingService$1;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;-><init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appbinding/AppBindingService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appbinding/AppBindingService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/appbinding/AppBindingService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appbinding/AppBindingService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onStartUser(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/appbinding/AppBindingService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appbinding/AppBindingService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/appbinding/AppBindingService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appbinding/AppBindingService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onStopUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/appbinding/AppBindingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appbinding/AppBindingService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/appbinding/AppBindingService;->refreshConstants()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/appbinding/AppBindingService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appbinding/AppBindingService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appbinding/AppBindingService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;->handlePackageAddedReplacing(Ljava/lang/String;I)V

    return-void
.end method

.method private bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "target"    # Lcom/android/server/appbinding/finders/AppServiceFinder;
    .param p3, "reasonForLog"    # Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 380
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 381
    .local v1, "app":Lcom/android/server/appbinding/finders/AppServiceFinder;
    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    .line 382
    goto :goto_1

    .line 386
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->findConnectionLock(ILcom/android/server/appbinding/finders/AppServiceFinder;)Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    move-result-object v9

    .line 387
    .local v9, "existingConn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    if-eqz v9, :cond_1

    .line 388
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->findService(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    .line 392
    .local v10, "service":Landroid/content/pm/ServiceInfo;
    if-nez v10, :cond_2

    .line 393
    goto :goto_1

    .line 399
    :cond_2
    new-instance v11, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget-object v6, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 401
    invoke-virtual {v10}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    move-object v2, v11

    move v4, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;-><init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/AppServiceFinder;Landroid/content/ComponentName;)V

    .line 402
    .local v2, "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->bind()V

    .line 379
    .end local v1    # "app":Lcom/android/server/appbinding/finders/AppServiceFinder;
    .end local v2    # "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    .end local v9    # "existingConn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    .end local v10    # "service":Landroid/content/pm/ServiceInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private dumpSimple(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 501
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 503
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 505
    .local v2, "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    const-string v3, "conn,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 509
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->isBound()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "bound"

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "not-bound"

    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "connected"

    goto :goto_2

    :cond_1
    const-string/jumbo v3, "not-connected"

    :goto_2
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    const-string v3, ",#con="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getNumConnected()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 519
    const-string v3, ",#dis="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getNumDisconnected()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 521
    const-string v3, ",#died="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getNumBindingDied()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 523
    const-string v3, ",backoff="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getNextBackoffMs()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 525
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 502
    .end local v2    # "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 527
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/android/server/appbinding/-$$Lambda$AppBindingService$ecbTIkvVpOcufbjzWWh2_dn3hSo;

    invoke-direct {v1, p1}, Lcom/android/server/appbinding/-$$Lambda$AppBindingService$ecbTIkvVpOcufbjzWWh2_dn3hSo;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 528
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findConnectionLock(ILcom/android/server/appbinding/finders/AppServiceFinder;)Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "target"    # Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 345
    .local v1, "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    invoke-virtual {v1}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getUserId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 346
    return-object v1

    .line 343
    .end local v1    # "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findFinderLocked(ILjava/lang/String;)Lcom/android/server/appbinding/finders/AppServiceFinder;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 333
    .local v1, "app":Lcom/android/server/appbinding/finders/AppServiceFinder;
    invoke-virtual {v1, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getTargetPackage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    return-object v1

    .line 331
    .end local v1    # "app":Lcom/android/server/appbinding/finders/AppServiceFinder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private forAllAppsLocked(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/appbinding/finders/AppServiceFinder;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/finders/AppServiceFinder;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handlePackageAddedReplacing(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 356
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/appbinding/AppBindingService;->findFinderLocked(ILjava/lang/String;)Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v1

    .line 358
    .local v1, "finder":Lcom/android/server/appbinding/finders/AppServiceFinder;
    if-eqz v1, :cond_0

    .line 359
    const-string/jumbo v2, "package update"

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v2, "package update"

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 362
    .end local v1    # "finder":Lcom/android/server/appbinding/finders/AppServiceFinder;
    :cond_0
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$D_3boeCn8eAANOp2ZDk6OC2rNaI(Lcom/android/server/appbinding/AppBindingService;Lcom/android/server/appbinding/finders/AppServiceFinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;->onAppChanged(Lcom/android/server/appbinding/finders/AppServiceFinder;I)V

    return-void
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "app"    # Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 493
    const-string v0, "    "

    invoke-virtual {p1, v0, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic lambda$dumpSimple$2(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V
    .locals 0
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "app"    # Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 527
    invoke-virtual {p1, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->dumpSimple(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic lambda$onUserRemoved$0(ILcom/android/server/appbinding/finders/AppServiceFinder;)V
    .locals 0
    .param p0, "userId"    # I
    .param p1, "app"    # Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 309
    invoke-virtual {p1, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->onUserRemoved(I)V

    return-void
.end method

.method private onAppChanged(Lcom/android/server/appbinding/finders/AppServiceFinder;I)V
    .locals 3
    .param p1, "finder"    # Lcom/android/server/appbinding/finders/AppServiceFinder;
    .param p2, "userId"    # I

    .line 322
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 326
    .end local v1    # "reason":Ljava/lang/String;
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 166
    const/16 v0, 0x226

    if-eq p1, v0, :cond_1

    const/16 v0, 0x258

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/server/appbinding/AppBindingService;->onPhaseThirdPartyAppsCanStart()V

    goto :goto_0

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/server/appbinding/AppBindingService;->onPhaseActivityManagerReady()V

    .line 169
    nop

    .line 174
    :goto_0
    return-void
.end method

.method private onPhaseActivityManagerReady()V
    .locals 8

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_binding_constants"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/appbinding/AppBindingService;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    invoke-direct {p0}, Lcom/android/server/appbinding/AppBindingService;->refreshConstants()V

    .line 198
    return-void
.end method

.method private onPhaseThirdPartyAppsCanStart()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v1, Lcom/android/server/appbinding/-$$Lambda$xkEFYM78dwFMyAjWJXkB7AxgA2c;->INSTANCE:Lcom/android/server/appbinding/-$$Lambda$xkEFYM78dwFMyAjWJXkB7AxgA2c;

    invoke-direct {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 276
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 278
    const/4 v1, 0x0

    const-string/jumbo v2, "user start"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onStopUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 297
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "user stop"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 301
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 287
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "user unlock"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 308
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    new-instance v1, Lcom/android/server/appbinding/-$$Lambda$AppBindingService$_RrDLXlhUGfI3nzAdSavPUgy7uo;

    invoke-direct {v1, p1}, Lcom/android/server/appbinding/-$$Lambda$AppBindingService$_RrDLXlhUGfI3nzAdSavPUgy7uo;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private rebindAllLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    goto :goto_1

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 372
    .local v1, "userId":I
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 366
    .end local v1    # "userId":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private refreshConstants()V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 208
    const-string v2, "app_binding_constants"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appbinding/AppBindingService$Injector;->getGlobalSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "newSetting":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget-object v2, v2, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    monitor-exit v1

    return-void

    .line 215
    :cond_0
    const-string v2, "AppBindingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating constants with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v0}, Lcom/android/server/appbinding/AppBindingConstants;->initializeFromString(Ljava/lang/String;)Lcom/android/server/appbinding/AppBindingConstants;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 218
    const-string/jumbo v2, "settings update"

    invoke-direct {p0, v2}, Lcom/android/server/appbinding/AppBindingService;->rebindAllLocked(Ljava/lang/String;)V

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "target"    # Lcom/android/server/appbinding/finders/AppServiceFinder;
    .param p3, "reasonForLog"    # Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 410
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 411
    .local v1, "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    invoke-virtual {v1}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getUserId()I

    move-result v2

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_0

    .line 412
    invoke-virtual {v1}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v2

    if-eq v2, p2, :cond_0

    .line 413
    goto :goto_1

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 421
    invoke-virtual {v1}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->unbind()V

    .line 409
    .end local v1    # "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 423
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    const-string v1, "AppBindingService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_1

    aget-object v0, p3, v1

    const-string v2, "-s"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-direct {p0, p2}, Lcom/android/server/appbinding/AppBindingService;->dumpSimple(Ljava/io/PrintWriter;)V

    .line 462
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    const-string v3, "  "

    invoke-virtual {v2, v3, p2}, Lcom/android/server/appbinding/AppBindingConstants;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 468
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 469
    const-string v2, "  Running users:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 471
    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 470
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 478
    const-string v2, "  Connections:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    nop

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 480
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;

    .line 481
    .local v2, "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    const-string v3, "    App type: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 485
    const-string v3, "      "

    invoke-virtual {v2, v3, p2}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 479
    .end local v2    # "conn":Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 487
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 488
    const-string v1, "    None:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 492
    const-string v1, "  Finders:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v1, Lcom/android/server/appbinding/-$$Lambda$AppBindingService$C9KbqX5cmsR3luJhFKt2Gpj0uLc;

    invoke-direct {v1, p2}, Lcom/android/server/appbinding/-$$Lambda$AppBindingService$C9KbqX5cmsR3luJhFKt2Gpj0uLc;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 494
    monitor-exit v0

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getConstantsForTest()Lcom/android/server/appbinding/AppBindingConstants;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    return-object v0
.end method
