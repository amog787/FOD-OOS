.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;,
        Lcom/android/server/companion/CompanionDeviceManagerService$Association;,
        Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManagerService"

.field private static final SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

.field private static final XML_ATTR_DEVICE:Ljava/lang/String; = "device"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_FILE_NAME:Ljava/lang/String; = "companion_device_manager_associations.xml"

.field private static final XML_TAG_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final XML_TAG_ASSOCIATIONS:Ljava/lang/String; = "associations"


# instance fields
.field private mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

.field private mCallingPackage:Ljava/lang/String;

.field private mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

.field private mIdleController:Landroid/os/IDeviceIdleController;

.field private final mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

.field private final mLock:Ljava/lang/Object;

.field private mRequest:Landroid/companion/AssociationRequest;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUidToStorage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-string v0, "com.android.companiondevicemanager"

    const-string v1, ".DeviceDiscoveryService"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 133
    nop

    .line 134
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    .line 135
    nop

    .line 136
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 137
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/util/function/Function;
    .param p2, "x2"    # I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 103
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 103
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 103
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Landroid/content/ComponentName;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/AssociationRequest;
    .param p2, "x2"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "x3"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 103
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/AssociationRequest;

    .line 103
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 103
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/IFindDeviceCallback;

    .line 103
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 103
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->unbind(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 191
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/companion/IFindDeviceCallback;

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    .line 193
    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    .line 194
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;TT;)Z"
        }
    .end annotation

    .line 500
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
    .locals 1
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "findDeviceCallback"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 383
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;Landroid/companion/AssociationRequest;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 422
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static getCallingUserId()I
    .locals 1

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 505
    sget-object v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;

    .line 515
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 505
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    .line 515
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledSupplier;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    .line 505
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    .locals 1

    .line 426
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$3;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    return-object v0
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 3
    .param p1, "uid"    # I

    .line 577
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$bh5xRJq9-CRJoXvmerYRNjK1xEQ;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$bh5xRJq9-CRJoXvmerYRNjK1xEQ;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    return-object v0
.end method

.method private static isCallerSystem()Z
    .locals 2

    .line 376
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getPackageInfo$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/Integer;

    .line 507
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x5000

    .line 510
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 507
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get PackageInfo for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getStorageFileForUser$5(Ljava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "u"    # Ljava/lang/Integer;

    .line 578
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 580
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "companion_device_manager_associations.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 578
    return-object v0
.end method

.method public static synthetic lambda$pG_kG2extKjHVEAFcCd4MLP2mkk(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method static synthetic lambda$updateAssociations$3(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V
    .locals 5
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "association"    # Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 556
    const-string v0, "association"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    .line 557
    const-string/jumbo v4, "package"

    invoke-interface {v2, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    .line 558
    const-string v4, "device"

    invoke-interface {v2, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 559
    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 560
    return-void
.end method

.method static synthetic lambda$updateAssociations$4(Ljava/util/Set;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p0, "finalAssociations"    # Ljava/util/Set;
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .line 548
    const-string v0, "associations"

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 550
    .local v1, "xml":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 551
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 552
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 553
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    new-instance v2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;

    invoke-direct {v2, v1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {p0, v2}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 562
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    nop

    .line 569
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CompanionDeviceManagerService"

    const-string v3, "Error while writing associations file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static synthetic lambda$wnUkAY8uXyjMGM59-bNpzLLMJ1I(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private readAllAssociations(I)Ljava/util/Set;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;"
        }
    .end annotation

    .line 586
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private readAllAssociations(ILjava/lang/String;)Ljava/util/Set;
    .locals 16
    .param p1, "userId"    # I
    .param p2, "packageFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;"
        }
    .end annotation

    .line 591
    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v2

    .line 593
    .local v2, "file":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    .line 595
    :cond_0
    const/4 v4, 0x0

    .line 596
    .local v4, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 597
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    monitor-enter v2

    .line 598
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v6, v0

    .line 599
    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 601
    :cond_1
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_5

    .line 602
    const/4 v0, 0x2

    if-eq v7, v0, :cond_2

    const-string v0, "associations"

    .line 603
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 605
    :cond_2
    const-string/jumbo v0, "package"

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "appPackage":Ljava/lang/String;
    const-string v8, "device"

    invoke-interface {v5, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    .line 608
    .local v14, "deviceAddress":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v14, :cond_3

    goto :goto_0

    .line 609
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    .line 611
    :cond_4
    new-instance v15, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v13, 0x0

    move-object v8, v15

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object v11, v14

    move-object v12, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {v4, v15}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v8

    .line 613
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v14    # "deviceAddress":Ljava/lang/String;
    goto :goto_0

    .line 614
    :cond_5
    nop

    .line 615
    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 614
    return-object v4

    .line 598
    .end local v7    # "type":I
    :catchall_0
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v4    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .end local p1    # "userId":I
    .end local p2    # "packageFilter":Ljava/lang/String;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 615
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .local v7, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .restart local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageFilter":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v8, v0

    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_6
    invoke-virtual {v4, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .end local p1    # "userId":I
    .end local p2    # "packageFilter":Ljava/lang/String;
    :cond_7
    :goto_1
    throw v8
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 619
    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .restart local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageFilter":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v4, v7

    goto :goto_3

    .line 615
    :catch_0
    move-exception v0

    move-object v4, v7

    goto :goto_2

    .line 619
    .end local v7    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .restart local v4    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :catchall_4
    move-exception v0

    goto :goto_3

    .line 615
    :catch_1
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string v6, "CompanionDeviceManagerService"

    const-string v7, "Error while reading associations file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    monitor-exit v2

    return-object v3

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method

.method private recordAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priviledgedPackage"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 523
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    .line 524
    .local v0, "userId":I
    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pF7vjIJpy5wI-u498jmFdSjoS_0;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pF7vjIJpy5wI-u498jmFdSjoS_0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 526
    return-void
.end method

.method private registerPackageMonitor()V
    .locals 5

    .line 141
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 159
    return-void
.end method

.method private unbind(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 1
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 216
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;
    .locals 1
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            "I)TT;"
        }
    .end annotation

    .line 204
    .local p0, "iinterface":Landroid/os/IInterface;, "TT;"
    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 207
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateAssociations(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;>;)V"
        }
    .end annotation

    .line 529
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;>;"
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    .line 530
    return-void
.end method

.method private updateAssociations(Ljava/util/function/Function;I)V
    .locals 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;>;I)V"
        }
    .end annotation

    .line 534
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;>;"
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 535
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 536
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v1

    .line 537
    .local v1, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 538
    .local v2, "old":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object v1, v3

    .line 539
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v4

    if-ne v3, v4, :cond_0

    monitor-exit v0

    return-void

    .line 541
    :cond_0
    move-object v3, v1

    .line 542
    .local v3, "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 543
    .local v4, "companionAppPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    .line 544
    .local v6, "association":Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    iget-object v7, v6, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 545
    nop

    .end local v6    # "association":Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    goto :goto_0

    .line 547
    :cond_1
    new-instance v5, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs;

    invoke-direct {v5, v3}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V

    .line 570
    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 572
    .local v5, "atmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    invoke-virtual {v5, p2, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppPackages(ILjava/util/Set;)V

    .line 573
    .end local v1    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local v2    # "old":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local v3    # "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local v4    # "companionAppPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "atmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 474
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    goto :goto_1

    .line 481
    :catch_0
    move-exception v0

    .line 485
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 486
    .local v0, "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v3, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-static {v1, v2, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_2

    .line 493
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    .line 497
    :goto_2
    return-void
.end method

.method private updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 464
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 465
    return-void

    .line 468
    :cond_0
    sget-object v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 469
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 468
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 470
    return-void
.end method


# virtual methods
.method addAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .line 453
    invoke-direct {p0, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    .line 454
    invoke-direct {p0, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->recordAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 185
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk;

    invoke-direct {v1, p0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public synthetic lambda$recordAssociation$2$CompanionDeviceManagerService(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "priviledgedPackage"    # Ljava/lang/String;
    .param p4, "associations"    # Ljava/util/Set;

    .line 524
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {p4, v6}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$removeAssociation$0$CompanionDeviceManagerService(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "associations"    # Ljava/util/Set;

    .line 458
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {p4, v6}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    const-string v1, "companiondevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 164
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    .line 169
    .local v0, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 173
    .local v1, "companionAppPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    .line 174
    .local v3, "association":Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    iget-object v4, v3, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v3    # "association":Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    goto :goto_0

    .line 176
    :cond_1
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 178
    .local v2, "atmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppPackages(ILjava/util/Set;)V

    .line 181
    :cond_2
    return-void

    .line 170
    .end local v1    # "companionAppPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "atmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    :cond_3
    :goto_1
    return-void
.end method

.method removeAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "deviceMacAddress"    # Ljava/lang/String;

    .line 458
    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$utOm0rPFb4x9GgnuV9fsUZ-eMfY;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$utOm0rPFb4x9GgnuV9fsUZ-eMfY;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 460
    return-void
.end method
