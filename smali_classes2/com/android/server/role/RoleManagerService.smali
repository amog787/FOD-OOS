.class public Lcom/android/server/role/RoleManagerService;
.super Lcom/android/server/SystemService;
.source "RoleManagerService.java"

# interfaces
.implements Lcom/android/server/role/RoleUserState$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;,
        Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;,
        Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;,
        Lcom/android/server/role/RoleManagerService$Internal;,
        Lcom/android/server/role/RoleManagerService$Stub;,
        Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GRANT_DEFAULT_ROLES_INTERVAL_MILLIS:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/role/RoleControllerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mGrantDefaultRolesThrottledRunnables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/infra/ThrottledRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyRoleResolver:Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

.field private final mListenerHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/role/RoleUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const-class v0, Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "legacyRoleResolver"    # Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    .line 150
    nop

    .line 151
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mListenerHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mGrantDefaultRolesThrottledRunnables:Landroid/util/SparseArray;

    .line 165
    iput-object p2, p0, Lcom/android/server/role/RoleManagerService;->mLegacyRoleResolver:Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

    .line 167
    invoke-static {p1}, Landroid/app/role/RoleControllerManager;->initializeRemoteServiceComponentName(Landroid/content/Context;)V

    .line 169
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 170
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 172
    const-class v0, Lcom/android/server/role/RoleManagerInternal;

    new-instance v1, Lcom/android/server/role/RoleManagerService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/role/RoleManagerService$Internal;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 174
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 175
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 176
    .local v0, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    new-instance v1, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;

    invoke-direct {v1, p0, v2}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setDefaultBrowserProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;)V

    .line 177
    new-instance v1, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;

    invoke-direct {v1, p0, v2}, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setDefaultDialerProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;)V

    .line 178
    new-instance v1, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;

    invoke-direct {v1, p0, v2}, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setDefaultHomeProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;)V

    .line 180
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerService;->registerUserRemovedReceiver()V

    .line 181
    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/role/RoleManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->onRemoveUser(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/role/RoleManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->maybeGrantDefaultRolesAsync(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/role/RoleManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/RoleManagerService;

    .line 102
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/RoleManagerService;

    .line 102
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method private static computeComponentStateHash(I)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I

    .line 321
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 322
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 324
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;

    invoke-direct {v2, v1, v0, p0}, Lcom/android/server/role/-$$Lambda$RoleManagerService$D-kb5EPaMwRx7H5Az2cV4ORPgIY;-><init>(Ljava/io/ByteArrayOutputStream;Landroid/content/pm/PackageManagerInternal;I)V

    invoke-static {v2}, Lcom/android/internal/util/FunctionalUtils;->uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 348
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getListeners(I)Landroid/os/RemoteCallbackList;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    monitor-exit v0

    return-object v1

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOrCreateController(I)Landroid/app/role/RoleControllerManager;
    .locals 6
    .param p1, "userId"    # I

    .line 365
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleControllerManager;

    .line 367
    .local v1, "controller":Landroid/app/role/RoleControllerManager;
    if-nez v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    .local v2, "systemContext":Landroid/content/Context;
    nop

    .line 372
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 371
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .local v3, "context":Landroid/content/Context;
    nop

    .line 377
    :try_start_2
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 376
    invoke-static {v4, v3}, Landroid/app/role/RoleControllerManager;->createWithInitializedRemoteServiceComponentName(Landroid/os/Handler;Landroid/content/Context;)Landroid/app/role/RoleControllerManager;

    move-result-object v4

    move-object v1, v4

    .line 378
    iget-object v4, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 373
    .end local v3    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 374
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/role/RoleManagerService;
    .end local p1    # "userId":I
    throw v4

    .line 380
    .end local v2    # "systemContext":Landroid/content/Context;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local p0    # "this":Lcom/android/server/role/RoleManagerService;
    .restart local p1    # "userId":I
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    .line 381
    .end local v1    # "controller":Landroid/app/role/RoleControllerManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getOrCreateListeners(I)Landroid/os/RemoteCallbackList;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 396
    .local v1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-nez v1, :cond_0

    .line 397
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v1, v2

    .line 398
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    :cond_0
    monitor-exit v0

    return-object v1

    .line 401
    .end local v1    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    .locals 3
    .param p1, "userId"    # I

    .line 353
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/role/RoleUserState;

    .line 355
    .local v1, "userState":Lcom/android/server/role/RoleUserState;
    if-nez v1, :cond_0

    .line 356
    new-instance v2, Lcom/android/server/role/RoleUserState;

    invoke-direct {v2, p1, p0}, Lcom/android/server/role/RoleUserState;-><init>(ILcom/android/server/role/RoleUserState$Callback;)V

    move-object v1, v2

    .line 357
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    :cond_0
    monitor-exit v0

    return-object v1

    .line 360
    .end local v1    # "userState":Lcom/android/server/role/RoleUserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$TCTA4I2bhEypguZihxs4ezif6t0(Lcom/android/server/role/RoleManagerService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$computeComponentStateHash$2(Ljava/io/ByteArrayOutputStream;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 8
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "pm"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 326
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->toBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 327
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 329
    nop

    .line 330
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 331
    .local v0, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 332
    .local v1, "numComponents":I
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 334
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v2    # "i":I
    :cond_0
    nop

    .line 338
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v2

    .line 339
    .local v2, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 340
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 341
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 343
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 344
    .local v6, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 343
    .end local v6    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 346
    :cond_2
    return-void
.end method

.method static synthetic lambda$maybeGrantDefaultRolesInternal$1(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "userState"    # Lcom/android/server/role/RoleUserState;
    .param p1, "newPackagesHash"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p3, "successful"    # Ljava/lang/Boolean;

    .line 292
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/server/role/RoleUserState;->setPackagesHash(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 298
    :goto_0
    return-void
.end method

.method private maybeGrantDefaultRolesAsync(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 242
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mGrantDefaultRolesThrottledRunnables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ThrottledRunnable;

    .line 244
    .local v1, "runnable":Lcom/android/internal/infra/ThrottledRunnable;
    if-nez v1, :cond_0

    .line 245
    new-instance v2, Lcom/android/internal/infra/ThrottledRunnable;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    new-instance v6, Lcom/android/server/role/-$$Lambda$RoleManagerService$p0uu3WH3gz96-kAWnyu6IUHMtCg;

    invoke-direct {v6, p0, p1}, Lcom/android/server/role/-$$Lambda$RoleManagerService$p0uu3WH3gz96-kAWnyu6IUHMtCg;-><init>(Lcom/android/server/role/RoleManagerService;I)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/infra/ThrottledRunnable;-><init>(Landroid/os/Handler;JLjava/lang/Runnable;)V

    move-object v1, v2

    .line 248
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mGrantDefaultRolesThrottledRunnables:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/infra/ThrottledRunnable;->run()V

    .line 252
    return-void

    .line 250
    .end local v1    # "runnable":Lcom/android/internal/infra/ThrottledRunnable;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private maybeGrantDefaultRolesInternal(I)Lcom/android/internal/infra/AndroidFuture;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    .line 258
    .local v0, "userState":Lcom/android/server/role/RoleUserState;
    invoke-virtual {v0}, Lcom/android/server/role/RoleUserState;->getPackagesHash()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "oldPackagesHash":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/role/RoleManagerService;->computeComponentStateHash(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "newPackagesHash":Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/role/RmInjector;->isUpdate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v3

    return-object v3

    .line 280
    :cond_0
    const-string v3, "android.app.role.ASSISTANT"

    invoke-direct {p0, v3, p1}, Lcom/android/server/role/RoleManagerService;->maybeMigrateRole(Ljava/lang/String;I)V

    .line 281
    const-string v3, "android.app.role.BROWSER"

    invoke-direct {p0, v3, p1}, Lcom/android/server/role/RoleManagerService;->maybeMigrateRole(Ljava/lang/String;I)V

    .line 282
    const-string v3, "android.app.role.DIALER"

    invoke-direct {p0, v3, p1}, Lcom/android/server/role/RoleManagerService;->maybeMigrateRole(Ljava/lang/String;I)V

    .line 283
    const-string v3, "android.app.role.SMS"

    invoke-direct {p0, v3, p1}, Lcom/android/server/role/RoleManagerService;->maybeMigrateRole(Ljava/lang/String;I)V

    .line 284
    const-string v3, "android.app.role.EMERGENCY"

    invoke-direct {p0, v3, p1}, Lcom/android/server/role/RoleManagerService;->maybeMigrateRole(Ljava/lang/String;I)V

    .line 285
    const-string v3, "android.app.role.HOME"

    invoke-direct {p0, v3, p1}, Lcom/android/server/role/RoleManagerService;->maybeMigrateRole(Ljava/lang/String;I)V

    .line 288
    sget-object v3, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Granting default roles..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 290
    .local v3, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;

    invoke-direct {v6, v0, v2, v3}, Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;-><init>(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/role/RoleControllerManager;->grantDefaultRoles(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 299
    return-object v3
.end method

.method private maybeGrantDefaultRolesSync(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->maybeGrantDefaultRolesInternal(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 234
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    const-wide/16 v1, 0x1e

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grant default roles for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private maybeMigrateRole(Ljava/lang/String;I)V
    .locals 5
    .param p1, "role"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 304
    invoke-direct {p0, p2}, Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    .line 305
    .local v0, "userState":Lcom/android/server/role/RoleUserState;
    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mLegacyRoleResolver:Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;->getRoleHolders(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 307
    .local v1, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    sget-object v2, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", legacy holders: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->addRoleName(Ljava/lang/String;)Z

    .line 312
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 313
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 314
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Lcom/android/server/role/RoleUserState;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private notifyRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "removedHolder"    # Ljava/lang/String;
    .param p4, "addedHolder"    # Ljava/lang/String;

    .line 432
    invoke-direct {p0, p2}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 433
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V

    .line 437
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 439
    .local v1, "allUsersListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-eqz v1, :cond_1

    .line 440
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V

    .line 444
    :cond_1
    const-string v2, "android.app.role.SMS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3, p3, p4}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_2
    return-void
.end method

.method private notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V
    .locals 6
    .param p2, "roleName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 454
    .local p1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 456
    .local v0, "broadcastCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 457
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/role/IOnRoleHoldersChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .local v2, "listener":Landroid/app/role/IOnRoleHoldersChangedListener;
    :try_start_1
    invoke-interface {v2, p2, p3}, Landroid/app/role/IOnRoleHoldersChangedListener;->onRoleHoldersChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    goto :goto_1

    .line 460
    :catch_0
    move-exception v3

    .line 461
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Error calling OnRoleHoldersChangedListener"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    .end local v2    # "listener":Landroid/app/role/IOnRoleHoldersChangedListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 466
    throw v1

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 466
    nop

    .line 467
    return-void
.end method

.method private onRemoveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 407
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mGrantDefaultRolesThrottledRunnables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 409
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 410
    .local v1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 411
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/role/RoleUserState;

    .line 412
    .local v2, "userState":Lcom/android/server/role/RoleUserState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 416
    :cond_0
    if-eqz v2, :cond_1

    .line 417
    invoke-virtual {v2}, Lcom/android/server/role/RoleUserState;->destroy()V

    .line 419
    :cond_1
    return-void

    .line 412
    .end local v1    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    .end local v2    # "userState":Lcom/android/server/role/RoleUserState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private registerUserRemovedReceiver()V
    .locals 7

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/role/RoleManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/role/RoleManagerService$1;-><init>(Lcom/android/server/role/RoleManagerService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 195
    return-void
.end method


# virtual methods
.method public synthetic lambda$maybeGrantDefaultRolesAsync$0$RoleManagerService(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->maybeGrantDefaultRolesInternal(I)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "removedHolder"    # Ljava/lang/String;
    .param p4, "addedHolder"    # Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mListenerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;->INSTANCE:Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;

    .line 425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 424
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void
.end method

.method public onStart()V
    .locals 7

    .line 199
    new-instance v0, Lcom/android/server/role/RoleManagerService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/role/RoleManagerService$Stub;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    const-string v1, "role"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/role/RoleManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 206
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/role/RoleManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/role/RoleManagerService$2;-><init>(Lcom/android/server/role/RoleManagerService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    return-void
.end method

.method public onStartUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->maybeGrantDefaultRolesSync(I)V

    .line 228
    return-void
.end method
