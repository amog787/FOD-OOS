.class public final Lcom/android/server/policy/PermissionPolicyService;
.super Lcom/android/server/SystemService;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$Internal;,
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mIsPackageSyncsScheduled:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIsStarted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 102
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    .line 108
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 84
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    return-object p1
.end method

.method private static getSwitchOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 190
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, "op":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 192
    return v1

    .line 195
    :cond_0
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    return v1
.end method

.method private static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    return-object p0

    .line 324
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create context for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    const/4 v1, 0x0

    return-object v1
.end method

.method private grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 280
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 282
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->wereDefaultPermissionsGrantedSinceBoot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 291
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/permission/PermissionControllerManager;

    .line 293
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 294
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 295
    .local v2, "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    nop

    .line 296
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$8D9Zbki65ND_Q20M-Trexl6cHcQ;

    invoke-direct {v4, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$8D9Zbki65ND_Q20M-Trexl6cHcQ;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 295
    invoke-virtual {v2, v3, v4}, Landroid/permission/PermissionControllerManager;->grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 309
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v3

    .line 314
    :goto_0
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->setRuntimePermissionsFingerPrint(Ljava/lang/String;I)V

    .line 316
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    :cond_0
    return-void
.end method

.method private isStarted(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 237
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$RYery4oeHNcS8uZ6BgM2MtZIvKw(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$V2gOjn4rTBH_rbxagOz-eOTvNfc(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 298
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 306
    return-void

    .line 301
    :cond_0
    const-string v0, "Error granting/upgrading runtime permissions"

    .line 302
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error granting/upgrading runtime permissions"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p0, "synchronizer"    # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 381
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedUserId"    # I

    .line 200
    invoke-direct {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;->INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 203
    invoke-static {v2, p0, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 215
    :cond_1
    :goto_0
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 337
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 349
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 351
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 355
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Landroid/content/Context;)V

    .line 356
    .local v3, "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 357
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getPackagesForSharedUserId(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "sharedPkgNames":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 360
    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 361
    .local v6, "sharedPkgName":Ljava/lang/String;
    nop

    .line 362
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 363
    .local v7, "sharedPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_1

    .line 364
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 360
    .end local v6    # "sharedPkgName":Ljava/lang/String;
    .end local v7    # "sharedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 369
    return-void

    .line 339
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .end local v4    # "sharedPkgNames":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synchronizePermissionsAndAppOpsForUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 377
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 379
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 380
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Landroid/content/Context;)V

    .line 381
    .local v1, "synchronizer":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    new-instance v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;

    invoke-direct {v2, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 382
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 383
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .line 221
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 222
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 225
    .local v0, "um":Landroid/os/UserManagerInternal;
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 226
    .local v4, "userId":I
    invoke-virtual {v0, v4}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    .line 225
    .end local v4    # "userId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "um":Landroid/os/UserManagerInternal;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 12

    .line 113
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 115
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 117
    .local v1, "permManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    nop

    .line 118
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    .line 120
    .local v2, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    .line 141
    new-instance v3, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 144
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 151
    .local v3, "appOpsListener":Lcom/android/internal/app/IAppOpsCallback;
    nop

    .line 152
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionWithProtectionLevel(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 156
    .local v4, "dangerousPerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 157
    .local v5, "numDangerousPerms":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 158
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PermissionInfo;

    .line 160
    .local v7, "perm":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v8, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 163
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8, v9, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 165
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 166
    invoke-static {v9, v9, v9, v8}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v8

    .line 168
    .local v8, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v8}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 169
    invoke-virtual {v8}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v10

    invoke-interface {v2, v10, v9, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    goto :goto_2

    .line 161
    .end local v8    # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    :cond_1
    :goto_1
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8, v9, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v7    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    .end local v5    # "numDangerousPerms":I
    .end local v6    # "i":I
    :cond_3
    goto :goto_3

    .line 174
    :catch_0
    move-exception v5

    .line 175
    .local v5, "doesNotHappen":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Cannot set up app-ops listener"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v5    # "doesNotHappen":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V

    .line 254
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 256
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 257
    .local v1, "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePermissionsAndAppOpsForUser(I)V

    .line 263
    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v1, p1}, Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;->onInitialized(I)V

    .line 266
    :cond_1
    return-void

    .line 257
    .end local v1    # "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 272
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
