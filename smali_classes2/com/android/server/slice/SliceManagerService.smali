.class public Lcom/android/server/slice/SliceManagerService;
.super Landroid/app/slice/ISliceManager$Stub;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SliceManagerService$SliceGrant;,
        Lcom/android/server/slice/SliceManagerService$Lifecycle;,
        Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAssistantLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHomeLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPermissions:Lcom/android/server/slice/SlicePermissionManager;

.field private final mPinnedSlicesByUri:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Lcom/android/server/slice/PinnedSliceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-static {}, Lcom/android/server/slice/SliceManagerService;->createHandler()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 104
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 107
    invoke-direct {p0}, Landroid/app/slice/ISliceManager$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    .line 536
    new-instance v0, Lcom/android/server/slice/SliceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceManagerService$1;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 109
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 110
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 109
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 111
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 112
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 115
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 117
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager;

    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/slice/SliceManagerService;

    .line 81
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/slice/SliceManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/slice/SliceManagerService;

    .line 81
    invoke-direct {p0}, Lcom/android/server/slice/SliceManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/slice/SliceManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/slice/SliceManagerService;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/slice/SliceManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/slice/SliceManagerService;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onStopUser(I)V

    return-void
.end method

.method private static createHandler()Lcom/android/server/ServiceThread;
    .locals 4

    .line 530
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "SliceManagerService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 532
    .local v0, "handlerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 533
    return-object v0
.end method

.method private enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/slice/SliceManagerService;->checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    nop

    .line 423
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 422
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 424
    .local v0, "userId":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to slice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is required"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    .end local v0    # "userId":I
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    return-void
.end method

.method private enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 412
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 413
    .local v0, "user":I
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Slice interaction across users requires INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    return-void
.end method

.method private enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "user"    # I

    .line 345
    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 348
    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller must own "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAssistant(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 473
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 474
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 475
    const/4 v1, 0x0

    return-object v1

    .line 477
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .locals 3
    .param p1, "userId"    # I

    .line 455
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 456
    .local v0, "matcher":Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    if-nez v0, :cond_0

    .line 457
    new-instance v1, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v2, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;

    invoke-direct {v2, p0, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v1, v2}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    move-object v0, v1

    .line 458
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    :cond_0
    return-object v0
.end method

.method private getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .locals 3
    .param p1, "userId"    # I

    .line 464
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 465
    .local v0, "matcher":Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    if-nez v0, :cond_0

    .line 466
    new-instance v1, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v2, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;

    invoke-direct {v2, p0, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v1, v2}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    move-object v0, v1

    .line 467
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    :cond_0
    return-object v0
.end method

.method private getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    .line 370
    .local v1, "manager":Lcom/android/server/slice/PinnedSliceState;
    if-nez v1, :cond_0

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v2

    move-object v1, v2

    .line 372
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_0
    monitor-exit v0

    return-object v1

    .line 375
    .end local v1    # "manager":Lcom/android/server/slice/PinnedSliceState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 357
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    .line 359
    .local v1, "manager":Lcom/android/server/slice/PinnedSliceState;
    if-eqz v1, :cond_0

    .line 363
    monitor-exit v0

    return-object v1

    .line 360
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Slice %s not pinned"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 361
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 360
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/slice/SliceManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v2

    .line 364
    .end local v1    # "manager":Lcom/android/server/slice/PinnedSliceState;
    .restart local p0    # "this":Lcom/android/server/slice/SliceManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # I

    .line 400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 402
    .local v0, "ident":J
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "providerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 404
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 403
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 405
    .local v3, "provider":Landroid/content/pm/ProviderInfo;
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    return-object v4

    .line 407
    .end local v2    # "providerName":Ljava/lang/String;
    .end local v3    # "provider":Landroid/content/pm/ProviderInfo;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    throw v2
.end method

.method private hasFullSliceAccess(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 436
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 438
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isGrantedFullAccess(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 440
    .local v2, "ret":Z
    :goto_1
    nop

    .line 442
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    return v2

    .line 442
    .end local v2    # "ret":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    throw v2
.end method

.method private isAssistant(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 447
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDefaultHomeApp(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 451
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isGrantedFullAccess(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 526
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager;->hasFullAccess(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onStopUser$0(ILcom/android/server/slice/PinnedSliceState;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "s"    # Lcom/android/server/slice/PinnedSliceState;

    .line 135
    invoke-virtual {p1}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onStopUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 134
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/-$$Lambda$SliceManagerService$EsoJb3dNe0G_qzoQixj72OS5gnw;

    invoke-direct {v2, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$EsoJb3dNe0G_qzoQixj72OS5gnw;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUnlockUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 131
    return-void
.end method

.method private systemReady()V
    .locals 0

    .line 128
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 433
    return-void
.end method


# virtual methods
.method public applyRestore([BI)V
    .locals 4
    .param p1, "payload"    # [B
    .param p2, "user"    # I

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 318
    const-string v0, "SliceManagerService"

    if-nez p1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore: no payload to restore for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 323
    :cond_0
    if-eqz p2, :cond_1

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore: cannot restore policy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 327
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 329
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 330
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v3}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/slice/SlicePermissionManager;->readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "applyRestore: error reading payload"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 316
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 396
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 226
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 227
    .local v14, "userId":I
    const/4 v15, -0x1

    const/16 v16, 0x0

    if-nez v10, :cond_2

    .line 228
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    array-length v5, v6

    move/from16 v4, v16

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v17, v6, v4

    .line 229
    .local v17, "p":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v18, v4

    move/from16 v4, p4

    move/from16 v19, v5

    move/from16 v5, p5

    move-object/from16 v20, v6

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    return v16

    .line 228
    .end local v17    # "p":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v18, 0x1

    move/from16 v5, v19

    move-object/from16 v6, v20

    goto :goto_0

    .line 234
    :cond_1
    return v15

    .line 236
    :cond_2
    invoke-direct {v7, v10, v14}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    return v16

    .line 239
    :cond_3
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, v10, v14, v8}, Lcom/android/server/slice/SlicePermissionManager;->hasPermission(Ljava/lang/String;ILandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    return v16

    .line 242
    :cond_4
    if-eqz v13, :cond_6

    if-eqz v9, :cond_6

    .line 244
    invoke-direct {v7, v9, v8, v14}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 245
    array-length v0, v13

    move/from16 v1, v16

    :goto_1
    if-ge v1, v0, :cond_6

    aget-object v6, v13, v1

    .line 246
    .local v6, "perm":Ljava/lang/String;
    iget-object v2, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_5

    .line 247
    invoke-static {v8, v14}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v15

    .line 248
    .local v15, "providerUser":I
    invoke-direct {v7, v8, v15}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v17

    .line 249
    .local v17, "providerPkg":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object/from16 v1, p3

    move v2, v14

    move-object/from16 v3, v17

    move v4, v15

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 250
    return v16

    .line 245
    .end local v6    # "perm":Ljava/lang/String;
    .end local v15    # "providerUser":I
    .end local v17    # "providerPkg":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    :cond_6
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, v8, v11, v12, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_7

    .line 257
    return v16

    .line 259
    :cond_7
    return v15
.end method

.method protected createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 380
    new-instance v0, Lcom/android/server/slice/PinnedSliceState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/slice/PinnedSliceState;-><init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;

    .line 566
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 567
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 566
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/slice/SlicePermissionManager;->getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBackupPayload(I)[B
    .locals 6
    .param p1, "user"    # I

    .line 290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 294
    const/4 v0, 0x0

    const-string v1, "SliceManagerService"

    if-eqz p1, :cond_0

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupPayload: cannot backup policy for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v0

    .line 298
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 300
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 301
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v4}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v4, v3}, Lcom/android/server/slice/SlicePermissionManager;->writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 305
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 306
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 307
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v3

    .line 308
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBackupPayload: error writing payload for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v0

    .line 291
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDefaultHome(I)Ljava/lang/String;
    .locals 10
    .param p1, "userId"    # I

    .line 484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 486
    .local v0, "token":J
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v2, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 490
    invoke-virtual {v3, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v3

    .line 492
    .local v3, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 493
    .local v4, "detected":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 494
    move-object v4, v3

    .line 497
    :cond_0
    if-nez v4, :cond_3

    .line 504
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 506
    .local v5, "size":I
    const/high16 v6, -0x80000000

    .line 507
    .local v6, "lastPriority":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_3

    .line 508
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 509
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_1

    .line 510
    goto :goto_1

    .line 512
    :cond_1
    iget v9, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v9, v6, :cond_2

    .line 513
    goto :goto_1

    .line 515
    :cond_2
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    move-object v4, v9

    .line 516
    iget v9, v8, Landroid/content/pm/ResolveInfo;->priority:I

    move v6, v9

    .line 507
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 519
    .end local v5    # "size":I
    .end local v6    # "lastPriority":I
    .end local v7    # "i":I
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 521
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    return-object v5

    .line 521
    .end local v2    # "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultLauncher":Landroid/content/ComponentName;
    .end local v4    # "detected":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 144
    .local v0, "callingUser":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/PinnedSliceState;

    .line 147
    .local v4, "state":Lcom/android/server/slice/PinnedSliceState;
    invoke-virtual {v4}, Lcom/android/server/slice/PinnedSliceState;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {v4}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 149
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {v5, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 150
    .local v6, "userId":I
    if-ne v6, v0, :cond_0

    .line 151
    invoke-static {v5}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v4    # "state":Lcom/android/server/slice/PinnedSliceState;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "userId":I
    :cond_0
    goto :goto_0

    .line 155
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    return-object v2

    .line 155
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p2, p1}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 204
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/slice/PinnedSliceState;->getSpecs()[Landroid/app/slice/SliceSpec;

    move-result-object v0

    return-object v0
.end method

.method public grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "allSlices"    # Z

    .line 264
    invoke-direct {p0, p3}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_SLICE_PERMISSIONS"

    const-string v2, "Slice granting requires MANAGE_SLICE_PERMISSIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 268
    .local v0, "userId":I
    if-eqz p4, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/slice/SlicePermissionManager;->grantFullAccess(Ljava/lang/String;I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 273
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 275
    .local v7, "grantUri":Landroid/net/Uri;
    invoke-static {v7, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 276
    .local v8, "providerUser":I
    invoke-direct {p0, v7, v8}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, "providerPkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v0

    move-object v4, v9

    move v5, v8

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 279
    .end local v7    # "grantUri":Landroid/net/Uri;
    .end local v8    # "providerUser":I
    .end local v9    # "providerPkg":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 281
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    nop

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    throw v3
.end method

.method public grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "toPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 211
    .local v0, "user":I
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 212
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v0

    move-object v4, p1

    move v5, v0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 213
    return-void
.end method

.method public hasSliceAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getAssistantMatcher$2$SliceManagerService(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 457
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getAssistant(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getHomeMatcher$3$SliceManagerService(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$pinSlice$1$SliceManagerService(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "slicePkg"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # I

    .line 170
    if-eqz p1, :cond_2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 172
    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    const/16 v1, 0xe

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0xd

    .line 171
    :goto_1
    invoke-virtual {v0, p1, p3, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 175
    :cond_2
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 340
    new-instance v0, Lcom/android/server/slice/SliceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceShellCommand;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/slice/SliceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 341
    return-void
.end method

.method public pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "specs"    # [Landroid/app/slice/SliceSpec;
    .param p4, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 165
    .local v0, "user":I
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 166
    invoke-direct {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "slicePkg":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/server/slice/SliceManagerService;->getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v2

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/server/slice/PinnedSliceState;->pin(Ljava/lang/String;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V

    .line 169
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/slice/-$$Lambda$SliceManagerService$pJ39TkC3AEVezLFEPuJgSQSTDJM;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$pJ39TkC3AEVezLFEPuJgSQSTDJM;-><init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method protected removePinnedSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 351
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    invoke-virtual {v1}, Lcom/android/server/slice/PinnedSliceState;->destroy()V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "toPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 219
    .local v0, "user":I
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 220
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v0

    move-object v4, p1

    move v5, v0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->revokeSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 221
    return-void
.end method

.method public unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 184
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v0

    .line 185
    .local v0, "slice":Lcom/android/server/slice/PinnedSliceState;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/slice/PinnedSliceState;->unpin(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "slice":Lcom/android/server/slice/PinnedSliceState;
    :cond_0
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "exception":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SliceManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method
