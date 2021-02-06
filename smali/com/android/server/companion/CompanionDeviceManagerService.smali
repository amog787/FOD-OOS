.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;,
        Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManagerService"

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "companion_device_preferences.xml"

.field private static final PREF_KEY_AUTO_REVOKE_GRANTS_DONE:Ljava/lang/String; = "auto_revoke_grants_done"

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

.field private mOngoingDeviceDiscovery:Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Landroid/companion/AssociationRequest;

.field private mServiceConnectors:Lcom/android/internal/infra/PerUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/PerUser<",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/companion/ICompanionDeviceDiscoveryService;",
            ">;>;"
        }
    .end annotation
.end field

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

    .line 115
    const-string v0, "com.android.companiondevicemanager"

    const-string v1, ".DeviceDiscoveryService"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 147
    nop

    .line 148
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    .line 149
    nop

    .line 150
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnectors:Lcom/android/internal/infra/PerUser;

    .line 163
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/util/function/Function;
    .param p2, "x2"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 113
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 113
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 113
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 113
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/IFindDeviceCallback;

    .line 113
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 113
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/AssociationRequest;

    .line 113
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 113
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Lcom/android/internal/infra/AndroidFuture;

    .line 113
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mOngoingDeviceDiscovery:Lcom/android/internal/infra/AndroidFuture;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/infra/PerUser;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 113
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnectors:Lcom/android/internal/infra/PerUser;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 113
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mOngoingDeviceDiscovery:Lcom/android/internal/infra/AndroidFuture;

    .line 250
    .local v1, "ongoingDeviceDiscovery":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/companion/Association;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/companion/IFindDeviceCallback;

    iput-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    .line 254
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    .line 255
    iput-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    .line 256
    .end local v1    # "ongoingDeviceDiscovery":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/companion/Association;>;"
    monitor-exit v0

    .line 257
    return-void

    .line 256
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

    .line 540
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

.method private exemptFromAutoRevoke(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x61

    const/4 v2, 0x1

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while granting auto revoke exemption for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static getCallingUserId()I
    .locals 1

    .line 465
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

    .line 545
    sget-object v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;

    .line 555
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 545
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    .line 555
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledSupplier;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    .line 545
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 3
    .param p1, "uid"    # I

    .line 618
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

    .line 469
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

    .line 547
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x5000

    .line 550
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 547
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
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

    .line 553
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getStorageFileForUser$5(Ljava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "u"    # Ljava/lang/Integer;

    .line 619
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 621
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "companion_device_manager_associations.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 619
    return-object v0
.end method

.method public static synthetic lambda$pG_kG2extKjHVEAFcCd4MLP2mkk(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method static synthetic lambda$recordAssociation$2(Landroid/companion/Association;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "association"    # Landroid/companion/Association;
    .param p1, "associations"    # Ljava/util/Set;

    .line 562
    invoke-static {p1, p0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$removeAssociation$0(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "deviceMacAddress"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "associations"    # Ljava/util/Set;

    .line 483
    new-instance v0, Landroid/companion/Association;

    invoke-direct {v0, p0, p1, p2}, Landroid/companion/Association;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$updateAssociations$3(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/Association;)V
    .locals 5
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "association"    # Landroid/companion/Association;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    const/4 v0, 0x0

    const-string v1, "association"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    iget-object v3, p1, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    .line 598
    const-string/jumbo v4, "package"

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    iget-object v3, p1, Landroid/companion/Association;->deviceAddress:Ljava/lang/String;

    .line 599
    const-string v4, "device"

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 600
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    return-void
.end method

.method static synthetic lambda$updateAssociations$4(Ljava/util/Set;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p0, "finalAssociations"    # Ljava/util/Set;
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .line 589
    const-string v0, "associations"

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 591
    .local v1, "xml":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 592
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 593
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 594
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    new-instance v2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$d_RLJQyt7Hah5vpYlYLeoWXxACU;

    invoke-direct {v2, v1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$d_RLJQyt7Hah5vpYlYLeoWXxACU;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {p0, v2}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 603
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    nop

    .line 610
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CompanionDeviceManagerService"

    const-string v3, "Error while writing associations file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
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
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation

    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private readAllAssociations(ILjava/lang/String;)Ljava/util/Set;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation

    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 634
    .local v0, "file":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 636
    :cond_0
    const/4 v1, 0x0

    .line 637
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/companion/Association;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 638
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    monitor-enter v0

    .line 639
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 640
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 642
    :cond_1
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_5

    .line 643
    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    const-string v5, "associations"

    .line 644
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 646
    :cond_2
    const-string/jumbo v5, "package"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "appPackage":Ljava/lang/String;
    const-string v7, "device"

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, "deviceAddress":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-nez v7, :cond_3

    goto :goto_0

    .line 650
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    .line 652
    :cond_4
    new-instance v8, Landroid/companion/Association;

    invoke-direct {v8, p1, v7, v5}, Landroid/companion/Association;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v8

    .line 654
    .end local v5    # "appPackage":Ljava/lang/String;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    goto :goto_0

    .line 655
    :cond_5
    nop

    .line 656
    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 655
    return-object v1

    .line 639
    .end local v6    # "type":I
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v1    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/companion/Association;>;"
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .end local p1    # "userId":I
    .end local p2    # "packageFilter":Ljava/lang/String;
    :cond_7
    :goto_1
    throw v5
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 660
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v1    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/companion/Association;>;"
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageFilter":Ljava/lang/String;
    :catchall_2
    move-exception v2

    goto :goto_2

    .line 656
    :catch_0
    move-exception v4

    .line 657
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "CompanionDeviceManagerService"

    const-string v6, "Error while reading associations file"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    monitor-exit v0

    return-object v2

    .line 660
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method

.method private recordAssociation(Landroid/companion/Association;)V
    .locals 1
    .param p1, "association"    # Landroid/companion/Association;

    .line 562
    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wG7upTzVFwCMCLI1zfTZW4dftak;

    invoke-direct {v0, p1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wG7upTzVFwCMCLI1zfTZW4dftak;-><init>(Landroid/companion/Association;)V

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 563
    return-void
.end method

.method private recordAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "privilegedPackage"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 566
    new-instance v0, Landroid/companion/Association;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v1

    invoke-direct {v0, v1, p2, p1}, Landroid/companion/Association;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->recordAssociation(Landroid/companion/Association;)V

    .line 567
    return-void
.end method

.method private registerPackageMonitor()V
    .locals 5

    .line 167
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService$2;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 185
    return-void
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

    .line 266
    .local p0, "iinterface":Landroid/os/IInterface;, "TT;"
    if-eqz p0, :cond_0

    .line 267
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 269
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
            "Landroid/companion/Association;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;>;)V"
        }
    .end annotation

    .line 570
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Landroid/companion/Association;>;Ljava/util/Set<Landroid/companion/Association;>;>;"
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    .line 571
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
            "Landroid/companion/Association;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;>;I)V"
        }
    .end annotation

    .line 575
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Landroid/companion/Association;>;Ljava/util/Set<Landroid/companion/Association;>;>;"
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 576
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 577
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v1

    .line 578
    .local v1, "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 579
    .local v2, "old":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object v1, v3

    .line 580
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v4

    if-ne v3, v4, :cond_0

    monitor-exit v0

    return-void

    .line 582
    :cond_0
    move-object v3, v1

    .line 583
    .local v3, "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 584
    .local v4, "companionAppPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/Association;

    .line 585
    .local v6, "association":Landroid/companion/Association;
    iget-object v7, v6, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    nop

    .end local v6    # "association":Landroid/companion/Association;
    goto :goto_0

    .line 588
    :cond_1
    new-instance v5, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs;

    invoke-direct {v5, v3}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V

    .line 611
    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 613
    .local v5, "atmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    invoke-virtual {v5, p2, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppPackages(ILjava/util/Set;)V

    .line 614
    .end local v1    # "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    .end local v2    # "old":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    .end local v3    # "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    .end local v4    # "companionAppPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "atmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    monitor-exit v0

    .line 615
    return-void

    .line 614
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

    .line 499
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    goto :goto_1

    .line 506
    :catch_0
    move-exception v0

    .line 510
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 511
    .local v0, "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v3, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-static {v1, v2, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_2

    .line 518
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    .line 523
    :goto_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(Ljava/lang/String;I)V

    .line 524
    return-void
.end method

.method private updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 489
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 490
    return-void

    .line 493
    :cond_0
    sget-object v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 494
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 493
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 495
    return-void
.end method


# virtual methods
.method addAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .line 473
    new-instance v0, Landroid/companion/Association;

    invoke-direct {v0, p1, p3, p2}, Landroid/companion/Association;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->addAssociation(Landroid/companion/Association;)V

    .line 474
    return-void
.end method

.method addAssociation(Landroid/companion/Association;)V
    .locals 2
    .param p1, "association"    # Landroid/companion/Association;

    .line 477
    iget-object v0, p1, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    iget v1, p1, Landroid/companion/Association;->userId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    .line 479
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->recordAssociation(Landroid/companion/Association;)V

    .line 480
    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 244
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk;

    invoke-direct {v1, p0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method maybeGrantAutoRevokeExemptions()V
    .locals 16

    .line 214
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 215
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget v7, v3, v6

    .line 216
    .local v7, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    .line 217
    invoke-static {v7}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    const-string v10, "companion_device_preferences.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 219
    .local v8, "pref":Landroid/content/SharedPreferences;
    const-string v9, "auto_revoke_grants_done"

    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    goto :goto_3

    .line 224
    :cond_0
    const/4 v10, 0x1

    :try_start_0
    invoke-direct {v1, v7}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 225
    .local v11, "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    if-nez v11, :cond_1

    .line 237
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    goto :goto_3

    .line 228
    :cond_1
    :try_start_1
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/Association;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v0

    .line 230
    .local v13, "a":Landroid/companion/Association;
    :try_start_2
    iget-object v0, v13, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, "uid":I
    iget-object v14, v13, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    invoke-direct {v1, v14, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    .end local v0    # "uid":I
    goto :goto_2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v14, "CompanionDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown companion package: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "a":Landroid/companion/Association;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 237
    .end local v11    # "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    :cond_2
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    nop

    .line 215
    .end local v7    # "userId":I
    .end local v8    # "pref":Landroid/content/SharedPreferences;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 237
    .restart local v7    # "userId":I
    .restart local v8    # "pref":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    throw v0

    .line 240
    .end local v7    # "userId":I
    .end local v8    # "pref":Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    const-string v1, "companiondevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 190
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 8
    .param p1, "userHandle"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    .line 195
    .local v0, "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v1, "companionAppPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/Association;

    .line 200
    .local v3, "association":Landroid/companion/Association;
    iget-object v4, v3, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v3    # "association":Landroid/companion/Association;
    goto :goto_0

    .line 202
    :cond_1
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 204
    .local v2, "atmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppPackages(ILjava/util/Set;)V

    .line 208
    :cond_2
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/companion/-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA;->INSTANCE:Lcom/android/server/companion/-$$Lambda$WrLlS9vQWduMboBfcO05xQ9xJtA;

    .line 209
    invoke-static {v4, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    .line 210
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 208
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    return-void

    .line 196
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

    .line 483
    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 485
    return-void
.end method
