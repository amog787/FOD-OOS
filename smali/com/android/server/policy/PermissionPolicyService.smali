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

.field private static final USER_SENSITIVE_UPDATE_DELAY_MS:J = 0x2710L


# instance fields
.field private mAppOpPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private final mIsPackageSyncsScheduled:Landroid/util/ArraySet;
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

.field private final mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

.field private final mLock:Ljava/lang/Object;

.field private mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    const-class v0, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 117
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    .line 124
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 132
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 96
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUidAsync(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 96
    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 96
    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    return-object v0
.end method

.method private static getSwitchOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 305
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "op":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 307
    return v1

    .line 310
    :cond_0
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    return v1
.end method

.method private static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    return-object p0

    .line 444
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

    .line 445
    :catch_0
    move-exception v0

    .line 446
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

    .line 447
    const/4 v1, 0x0

    return-object v1
.end method

.method private grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 395
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 396
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 397
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 398
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 399
    .local v1, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 408
    .local v2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    new-instance v3, Landroid/permission/PermissionControllerManager;

    .line 410
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 411
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 412
    .local v3, "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    nop

    .line 413
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$enZnky8NIhd5B9lAhmYeFn1Y6mk;

    invoke-direct {v5, v2, p1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$enZnky8NIhd5B9lAhmYeFn1Y6mk;-><init>(Lcom/android/internal/infra/AndroidFuture;I)V

    .line 412
    invoke-virtual {v3, v4, v5}, Landroid/permission/PermissionControllerManager;->grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 426
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    nop

    .line 431
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/policy/-$$Lambda$jaDybyCEM2y6SS96P5BBES0UITE;

    invoke-direct {v5, v3}, Lcom/android/server/policy/-$$Lambda$jaDybyCEM2y6SS96P5BBES0UITE;-><init>(Landroid/permission/PermissionControllerManager;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->updateRuntimePermissionsFingerprint(I)V

    goto :goto_0

    .line 427
    :catch_0
    move-exception v4

    .line 428
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 436
    .end local v2    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .end local v3    # "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private isStarted(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 354
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

.method static synthetic lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/Boolean;)V
    .locals 2
    .param p0, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "userId"    # I
    .param p2, "successful"    # Ljava/lang/Boolean;

    .line 414
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error granting/upgrading runtime permissions for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 424
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method static synthetic lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1
    .param p0, "synchronizer"    # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 501
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$vRo3eblf_94ockkD9_pc4n6dU_Q(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method private resetAppOpPermissionsIfNotRequestedForUid(I)V
    .locals 24
    .param p1, "uid"    # I

    .line 519
    move-object/from16 v1, p0

    move/from16 v8, p1

    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 520
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 521
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 524
    .local v9, "context":Landroid/content/Context;
    nop

    .line 525
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 524
    invoke-static {v9, v0}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 526
    .local v10, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 527
    .local v11, "packageNames":[Ljava/lang/String;
    if-eqz v11, :cond_8

    array-length v0, v11

    if-nez v0, :cond_0

    move-object/from16 v16, v9

    goto/16 :goto_6

    .line 531
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v0

    .line 532
    .local v12, "requestedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v11

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v11, v3

    .line 535
    .local v4, "packageName":Ljava/lang/String;
    const/16 v0, 0x1000

    :try_start_1
    invoke-virtual {v10, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 538
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 539
    if-eqz v0, :cond_2

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 540
    goto :goto_1

    .line 542
    :cond_1
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v12, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 536
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 537
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 532
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    :cond_3
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 546
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const-class v2, Landroid/app/AppOpsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/app/AppOpsManagerInternal;

    .line 548
    .local v14, "appOpsManagerInternal":Landroid/app/AppOpsManagerInternal;
    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    .line 549
    .local v15, "appOpPermissionsSize":I
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_2
    if-ge v7, v15, :cond_7

    .line 550
    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 552
    .local v6, "appOpPermission":Ljava/lang/String;
    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 553
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v5

    .line 554
    .local v5, "appOpCode":I
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    .line 555
    .local v4, "defaultAppOpMode":I
    array-length v3, v11

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_5

    aget-object v13, v11, v2

    .line 556
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v16, v9

    .end local v9    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    invoke-virtual {v0, v5, v8, v13}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v9

    .line 558
    .local v9, "appOpMode":I
    if-eq v9, v4, :cond_4

    .line 559
    move-object/from16 v17, v0

    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v17, "appOpsManager":Landroid/app/AppOpsManager;
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v14, v5, v8, v4, v0}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 561
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v18, v2

    move-object v2, v14

    move/from16 v19, v3

    move v3, v5

    move/from16 v20, v4

    .end local v4    # "defaultAppOpMode":I
    .local v20, "defaultAppOpMode":I
    move/from16 v4, p1

    move/from16 v21, v5

    .end local v5    # "appOpCode":I
    .local v21, "appOpCode":I
    move-object v5, v13

    move-object/from16 v22, v6

    .end local v6    # "appOpPermission":Ljava/lang/String;
    .local v22, "appOpPermission":Ljava/lang/String;
    move/from16 v6, v20

    move/from16 v23, v7

    .end local v7    # "i":I
    .local v23, "i":I
    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    goto :goto_4

    .line 558
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v4    # "defaultAppOpMode":I
    .restart local v5    # "appOpCode":I
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_4
    move-object/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    .line 555
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v4    # "defaultAppOpMode":I
    .end local v5    # "appOpCode":I
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "appOpMode":I
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v20    # "defaultAppOpMode":I
    .restart local v21    # "appOpCode":I
    .restart local v22    # "appOpPermission":Ljava/lang/String;
    .restart local v23    # "i":I
    :goto_4
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    goto :goto_3

    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v4    # "defaultAppOpMode":I
    .restart local v5    # "appOpCode":I
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    .local v9, "context":Landroid/content/Context;
    :cond_5
    move-object/from16 v17, v0

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v16, v9

    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v4    # "defaultAppOpMode":I
    .end local v5    # "appOpCode":I
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v20    # "defaultAppOpMode":I
    .restart local v21    # "appOpCode":I
    .restart local v22    # "appOpPermission":Ljava/lang/String;
    .restart local v23    # "i":I
    goto :goto_5

    .line 552
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_6
    move-object/from16 v17, v0

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v16, v9

    .line 549
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v23    # "i":I
    :goto_5
    add-int/lit8 v7, v23, 0x1

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    .end local v23    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_2

    .line 567
    .end local v7    # "i":I
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v9    # "context":Landroid/content/Context;
    :cond_7
    return-void

    .line 527
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v12    # "requestedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "appOpsManagerInternal":Landroid/app/AppOpsManagerInternal;
    .end local v15    # "appOpPermissionsSize":I
    :cond_8
    move-object/from16 v16, v9

    .line 528
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    :goto_6
    return-void

    .line 521
    .end local v10    # "userPackageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageNames":[Ljava/lang/String;
    .end local v16    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private resetAppOpPermissionsIfNotRequestedForUidAsync(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 506
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 510
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;->INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;

    .line 512
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 510
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 516
    :cond_1
    :goto_0
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedUserId"    # I

    .line 315
    invoke-direct {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;->INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;

    .line 321
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 318
    invoke-static {v2, p0, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 330
    :cond_1
    :goto_0
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 457
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 459
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 469
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 471
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 472
    return-void

    .line 474
    :cond_0
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 475
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 476
    .local v3, "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 477
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "sharedPkgNames":[Ljava/lang/String;
    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 481
    .local v6, "sharedPkgName":Ljava/lang/String;
    nop

    .line 482
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 483
    .local v7, "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v7, :cond_1

    .line 484
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 480
    .end local v6    # "sharedPkgName":Ljava/lang/String;
    .end local v7    # "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_2
    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$700(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 488
    return-void

    .line 459
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

    .line 496
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 498
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 499
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 500
    .local v1, "synchronizer":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    new-instance v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$i87nwVknDNR-kxbgdgQq3zYShyg;

    invoke-direct {v2, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$i87nwVknDNR-kxbgdgQq3zYShyg;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 502
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$700(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 503
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .line 336
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 337
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 340
    .local v0, "um":Landroid/os/UserManagerInternal;
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 341
    .local v4, "userId":I
    invoke-virtual {v0, v4}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    .line 340
    .end local v4    # "userId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "um":Landroid/os/UserManagerInternal;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 18

    .line 137
    move-object/from16 v1, p0

    const-string v2, "Cannot set up app-ops listener"

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 139
    .local v3, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 141
    .local v4, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    nop

    .line 142
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    .line 144
    .local v5, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$1;

    invoke-direct {v0, v1}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 171
    new-instance v0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;

    invoke-direct {v0, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 174
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$2;

    invoke-direct {v0, v1}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 182
    nop

    .line 183
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 186
    .local v7, "dangerousPerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    const/4 v8, -0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 187
    .local v0, "numDangerousPerms":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_2

    .line 188
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PermissionInfo;

    .line 190
    .local v11, "perm":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 191
    iget-object v12, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v12

    iget-object v13, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v12, v9, v13}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 193
    :cond_0
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 194
    iget-object v12, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 195
    invoke-static {v9, v9, v9, v9, v12}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v12

    .line 197
    .local v12, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v12}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result v13

    .line 198
    .local v13, "extraAppOp":I
    if-eq v13, v8, :cond_1

    .line 199
    iget-object v14, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v13, v9, v14}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v11    # "perm":Landroid/content/pm/PermissionInfo;
    .end local v12    # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .end local v13    # "extraAppOp":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "numDangerousPerms":I
    .end local v10    # "i":I
    :cond_2
    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "doesNotHappen":Landroid/os/RemoteException;
    sget-object v10, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "doesNotHappen":Landroid/os/RemoteException;
    :goto_1
    const/16 v0, 0x40

    .line 208
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 210
    .local v10, "appOpPermissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 211
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 212
    .local v11, "appOpPermissionInfosSize":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_a

    .line 213
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/PermissionInfo;

    .line 215
    .local v13, "appOpPermissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, 0x1277d93c

    const/4 v9, 0x2

    if-eq v14, v15, :cond_6

    const v15, 0x50b27c6d

    if-eq v14, v15, :cond_5

    const v15, 0x69eee241

    if-eq v14, v15, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    const-string v14, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v9

    goto :goto_4

    :cond_5
    const-string v14, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const-string v14, "android.permission.MANAGE_IPSEC_TUNNELS"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_4

    :goto_3
    move v0, v8

    :goto_4
    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_9

    if-eq v0, v9, :cond_8

    .line 225
    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    .line 227
    .local v9, "appOpCode":I
    if-eq v9, v8, :cond_7

    .line 228
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    iget-object v14, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :try_start_1
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v14, 0x0

    :try_start_2
    invoke-interface {v5, v9, v14, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 233
    goto :goto_6

    .line 231
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    sget-object v15, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v15, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 223
    .end local v9    # "appOpCode":I
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 215
    :cond_9
    const/4 v14, 0x0

    .line 218
    nop

    .line 212
    .end local v13    # "appOpPermissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object v9, v14

    goto :goto_2

    .line 238
    .end local v12    # "i":I
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/android/server/policy/PermissionPolicyService$3;

    invoke-direct {v13, v1, v3}, Lcom/android/server/policy/PermissionPolicyService$3;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/pm/PackageManagerInternal;)V

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v0

    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 293
    return-void
.end method

.method public onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 361
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    return-void

    .line 365
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 371
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 372
    .local v1, "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePermissionsAndAppOpsForUser(I)V

    .line 378
    if-eqz v1, :cond_1

    .line 379
    invoke-interface {v1, p1}, Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;->onInitialized(I)V

    .line 381
    :cond_1
    return-void

    .line 372
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

    .line 387
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 389
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
