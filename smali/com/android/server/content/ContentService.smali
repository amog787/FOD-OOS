.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCollector;,
        Lcom/android/server/content/ContentService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BACKGROUND_OBSERVER_DELAY:J = 0x2710L

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ContentService"

.field private static final TOO_MANY_OBSERVERS_THRESHOLD:I = 0x3e8

.field private static final sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "Landroid/database/IContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sObserverLeakDetectedUid:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCacheReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 160
    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 164
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .line 293
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 155
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 175
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 295
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 299
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 300
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 301
    .local v0, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    new-instance v1, Lcom/android/server/content/-$$Lambda$ContentService$5-BNVxd6JTWU9ogp3u-0kfiqgbI;

    invoke-direct {v1, p0}, Lcom/android/server/content/-$$Lambda$ContentService$5-BNVxd6JTWU9ogp3u-0kfiqgbI;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;)V

    .line 305
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 314
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v2, "localeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/ContentService;

    .line 93
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/ContentService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/Uri;

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/internal/os/BinderDeathDispatcher;
    .locals 1

    .line 93
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/ArraySet;
    .locals 1

    .line 93
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-object v0
.end method

.method private checkUriPermission(Landroid/net/Uri;IIII)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "userHandle"    # I

    .line 499
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method private clampPeriod(J)J
    .locals 4
    .param p1, "period"    # J

    .line 638
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 639
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested poll frequency of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds being rounded up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    move-wide p1, v0

    .line 644
    :cond_0
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1368
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1369
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_0
    return-void
.end method

.method private enforceNonFullCrossUserPermission(ILjava/lang/String;)V
    .locals 4
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1384
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1385
    .local v0, "callingUser":I
    if-ne v0, p1, :cond_0

    .line 1386
    return-void

    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 1391
    .local v1, "interactAcrossUsersState":I
    if-nez v1, :cond_1

    .line 1392
    return-void

    .line 1395
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method private enforceShell(Ljava/lang/String;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1759
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1760
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-shell user attempted to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1762
    :cond_1
    :goto_0
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1245
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_0

    .line 1246
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1247
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1249
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1250
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_1

    .line 1251
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 1252
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    :cond_1
    return-object v1
.end method

.method private getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .line 1236
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1237
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 1236
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1238
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1430
    if-eqz p2, :cond_0

    .line 1431
    nop

    .line 1432
    const-string/jumbo v0, "v_exemption"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1435
    .local v2, "exemption":I
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1436
    if-eq v2, v1, :cond_0

    .line 1437
    return v2

    .line 1440
    .end local v2    # "exemption":I
    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1441
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1442
    .local v0, "ami":Landroid/app/ActivityManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1443
    return v1

    .line 1445
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    .line 1446
    .local v2, "procState":I
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v3

    .line 1449
    .local v3, "isUidActive":Z
    const/4 v4, 0x2

    if-le v2, v4, :cond_5

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    goto :goto_1

    .line 1453
    :cond_2
    const/4 v4, 0x6

    if-le v2, v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_0

    .line 1456
    :cond_3
    return v1

    .line 1454
    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1451
    :cond_5
    :goto_1
    return v4
.end method

.method private getSyncExemptionForCaller(I)I
    .locals 1
    .param p1, "callingUid"    # I

    .line 1425
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    goto :goto_0

    .line 203
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 203
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "allowNonFull"    # Z
    .param p6, "userId"    # I

    .line 1324
    const/4 v0, -0x2

    if-ne p6, v0, :cond_0

    .line 1325
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    .line 1328
    :cond_0
    const/4 v0, -0x1

    const-string v6, "No access to "

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-ne p6, v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1331
    :cond_1
    if-ltz p6, :cond_6

    .line 1333
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_5

    .line 1334
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1336
    const/4 v0, 0x0

    .line 1337
    .local v0, "allow":Z
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1340
    const/4 v0, 0x1

    goto :goto_0

    .line 1341
    :cond_2
    if-eqz p5, :cond_3

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1344
    const/4 v0, 0x1

    .line 1346
    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 1347
    if-eqz p5, :cond_4

    .line 1348
    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    goto :goto_1

    .line 1350
    :cond_4
    nop

    :goto_1
    move-object v1, v7

    .line 1351
    .local v1, "permissions":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": neither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1357
    .end local v0    # "allow":Z
    .end local v1    # "permissions":Ljava/lang/String;
    :cond_5
    :goto_2
    return p6

    .line 1332
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 1259
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1260
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_0

    return-void

    .line 1262
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1263
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_1

    return-void

    .line 1265
    :cond_1
    if-eqz p3, :cond_4

    .line 1266
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1267
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1268
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1270
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 1272
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1274
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    :goto_1
    goto :goto_0

    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 1277
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1279
    :goto_2
    return-void
.end method

.method private static normalizeSyncable(I)I
    .locals 1
    .param p0, "syncable"    # I

    .line 1400
    if-lez p0, :cond_0

    .line 1401
    const/4 v0, 0x1

    return v0

    .line 1402
    :cond_0
    if-nez p0, :cond_1

    .line 1403
    const/4 v0, 0x0

    return v0

    .line 1405
    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method private validateExtras(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1409
    const-string/jumbo v0, "v_exemption"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1410
    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    const-string v0, "Invalid extras specified."

    .line 1417
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ContentService"

    const-string v2, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid extras specified."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1421
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 18
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "pollFrequency"    # J

    .line 896
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 897
    if-eqz v2, :cond_1

    .line 900
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 908
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 910
    .local v11, "userId":I
    move-wide/from16 v3, p4

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    .line 911
    .end local p4    # "pollFrequency":J
    .local v12, "pollFrequency":J
    invoke-static {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v14

    .line 913
    .local v14, "defaultFlex":J
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v16

    .line 915
    .local v16, "identityToken":J
    :try_start_0
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v9, p2

    invoke-direct {v4, v2, v9, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 917
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 921
    nop

    .line 922
    return-void

    .line 920
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 921
    throw v0

    .line 901
    .end local v11    # "userId":I
    .end local v12    # "pollFrequency":J
    .end local v14    # "defaultFlex":J
    .end local v16    # "identityToken":J
    .restart local p4    # "pollFrequency":J
    :cond_0
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must not be empty."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_1
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Account must not be null"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 6
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1210
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1212
    .local v1, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 1213
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 1214
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    .line 1215
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1214
    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1219
    nop

    .line 1220
    return-void

    .line 1218
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1219
    throw v3
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .locals 12
    .param p1, "request"    # Landroid/content/SyncRequest;

    .line 752
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 753
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_0

    return-void

    .line 754
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 755
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 757
    .local v2, "callingUid":I
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 758
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 763
    .local v3, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 765
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 769
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 770
    .local v6, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 771
    .local v7, "provider":Ljava/lang/String;
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 772
    .local v8, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 774
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cancelRequest() by uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 778
    :cond_2
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 779
    const-string v9, "API"

    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "provider":Ljava/lang/String;
    .end local v8    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 782
    nop

    .line 783
    return-void

    .line 781
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 782
    throw v6
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 706
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 707
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 725
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 732
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 733
    .local v0, "identityToken":J
    if-eqz p3, :cond_2

    .line 734
    const-string v2, "ContentService"

    const-string v3, "cname not null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void

    .line 738
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 739
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_3

    .line 741
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 742
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 743
    const/4 v4, 0x0

    const-string v5, "API"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_3
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 747
    nop

    .line 748
    return-void

    .line 746
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 747
    throw v2
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw_"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "ContentService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 221
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 223
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "-a"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v13, v0

    .line 227
    .local v13, "dumpAll":Z
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-wide v14, v4

    .line 229
    .local v14, "identityToken":J
    :try_start_2
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_1

    .line 230
    const-string v0, "SyncManager not available yet"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v11, p1

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v3, v13}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 234
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 235
    const-string v0, "Observer tree:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 236
    iget-object v10, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 237
    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [I

    .line 238
    .local v0, "counts":[I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v4

    .line 239
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v8, ""

    const-string v16, "  "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, p3

    move-object/from16 v17, v9

    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .local v17, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v11, v17

    :try_start_4
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 240
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v4, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 243
    move-object/from16 v6, v17

    .end local v17    # "pidCounts":Landroid/util/SparseIntArray;
    .local v6, "pidCounts":Landroid/util/SparseIntArray;
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v17, v6

    goto :goto_1

    .end local v6    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v17    # "pidCounts":Landroid/util/SparseIntArray;
    :cond_2
    move-object/from16 v6, v17

    .line 245
    .end local v5    # "i":I
    .end local v17    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v6    # "pidCounts":Landroid/util/SparseIntArray;
    new-instance v5, Lcom/android/server/content/ContentService$2;

    invoke-direct {v5, v1, v6}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 260
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 261
    .local v7, "pid":I
    const-string v8, "  pid "

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, " observers"

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 259
    .end local v7    # "pid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 264
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 265
    const-string v5, " Total number of nodes: "

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 266
    const-string v5, " Total number of observers: "

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 268
    sget-object v5, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    const-string v7, " "

    invoke-virtual {v5, v3, v7}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 269
    .end local v0    # "counts":[I
    .end local v4    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "pidCounts":Landroid/util/SparseIntArray;
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 270
    :try_start_5
    sget-object v4, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 271
    :try_start_6
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 272
    const-string v0, "Observer leaking UIDs: "

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 274
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 276
    :try_start_7
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 277
    :try_start_8
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 278
    const-string v0, "Cached content:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ge v0, v5, :cond_4

    .line 281
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 283
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 286
    .end local v0    # "i":I
    :cond_4
    :try_start_a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 287
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 289
    :try_start_b
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 290
    nop

    .line 291
    monitor-exit p0

    return-void

    .line 287
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    :catchall_0
    move-exception v0

    :goto_4
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .restart local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13    # "dumpAll":Z
    .restart local v14    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw_":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 274
    :catchall_2
    move-exception v0

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 269
    .restart local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13    # "dumpAll":Z
    .restart local v14    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw_":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v10

    :goto_5
    :try_start_10
    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .restart local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13    # "dumpAll":Z
    .restart local v14    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw_":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_4
    move-exception v0

    goto :goto_5

    .line 289
    :catchall_5
    move-exception v0

    :try_start_12
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 290
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 219
    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1307
    const-string v0, "ContentService"

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1312
    invoke-direct {p0, p2, p3}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1315
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1316
    :try_start_0
    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1318
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    monitor-exit v2

    return-object v4

    .line 1319
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1113
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 1128
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1130
    .local v0, "canAccessAccounts":Z
    :goto_0
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1132
    .local v1, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1133
    invoke-virtual {v3, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1132
    return-object v3

    .line 1135
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1136
    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 976
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 992
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 993
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 994
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, p2, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 994
    return v3

    .line 998
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 999
    nop

    .line 1000
    const/4 v2, -0x1

    return v2

    .line 998
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 999
    throw v2
.end method

.method public getMasterSyncAutomatically()Z
    .locals 1

    .line 1040
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1056
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1057
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 1058
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1058
    return v3

    .line 1061
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1062
    nop

    .line 1063
    const/4 v2, 0x0

    return v2

    .line 1061
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1062
    throw v2
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 955
    if-eqz p1, :cond_1

    .line 958
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 965
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 967
    .local v1, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 967
    return-object v3

    .line 970
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 971
    throw v3

    .line 959
    .end local v0    # "userId":I
    .end local v1    # "identityToken":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 823
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 825
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 826
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 826
    return-object v3

    .line 828
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 829
    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 1

    .line 791
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 4
    .param p1, "userId"    # I

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 808
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 810
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 811
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 811
    return-object v3

    .line 813
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 814
    throw v2
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 834
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 850
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 851
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 852
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 853
    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 852
    return v3

    .line 856
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 857
    nop

    .line 858
    const/4 v2, 0x0

    return v2

    .line 856
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 857
    throw v2
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1141
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 1151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync stats for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1162
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_0

    .line 1164
    const/4 v3, 0x0

    .line 1174
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1164
    return-object v3

    .line 1167
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1168
    :try_start_1
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1172
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1172
    return-object v4

    .line 1170
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must call sync status with valid authority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "cname":Landroid/content/ComponentName;
    .end local p4    # "userId":I
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1174
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v0    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "cname":Landroid/content/ComponentName;
    .restart local p4    # "userId":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1175
    throw v2

    .line 1152
    .end local v0    # "identityToken":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1095
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1098
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1100
    .local v1, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v3, :cond_0

    .line 1102
    const/4 v4, 0x0

    .line 1107
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1102
    return v4

    .line 1104
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1104
    return v4

    .line 1107
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1108
    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1180
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 1186
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to retrieve the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1190
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1191
    .local v0, "identityToken":J
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1192
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    return v3

    .line 1196
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1197
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1201
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1201
    return v4

    .line 1199
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid authority specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "identityToken":J
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "cname":Landroid/content/ComponentName;
    .end local p4    # "userId":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    .restart local v0    # "identityToken":J
    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "cname":Landroid/content/ComponentName;
    .restart local p4    # "userId":I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1204
    throw v3
.end method

.method public synthetic lambda$new$0$ContentService(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .locals 31
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "userId"    # I
    .param p6, "targetSdkVersion"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 410
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 411
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 412
    .local v19, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    .line 415
    .local v20, "callingUserId":I
    new-instance v29, Lcom/android/server/content/ContentService$ObserverCollector;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/content/ContentService$ObserverCollector;-><init>()V

    .line 419
    .local v29, "collector":Lcom/android/server/content/ContentService$ObserverCollector;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v0

    .line 421
    .local v14, "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    array-length v0, v9

    const/16 v30, 0x0

    move/from16 v10, v30

    :goto_0
    if-ge v10, v0, :cond_4

    aget-object v11, v9, v10

    .line 423
    .local v11, "uri":Landroid/net/Uri;
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, v19

    move v4, v15

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 425
    .local v1, "resolvedUserId":I
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 426
    .local v2, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 427
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 428
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "msg":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 430
    const/16 v4, 0x1a

    move/from16 v5, p6

    if-ge v5, v4, :cond_1

    .line 433
    const-string v4, "Failed to find provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 437
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring notify for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ContentService"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    goto :goto_3

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    move/from16 v5, p6

    .line 445
    :goto_1
    invoke-direct {v8, v11, v1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v14, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 426
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    move/from16 v5, p6

    .line 451
    :goto_2
    iget-object v3, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v3

    .line 452
    :try_start_0
    invoke-static {v11}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v23

    .line 453
    .local v23, "segmentCount":I
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/16 v24, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v11

    move-object/from16 v25, p2

    move/from16 v26, p3

    move/from16 v27, p4

    move/from16 v28, v1

    invoke-virtual/range {v21 .. v29}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 455
    .end local v23    # "segmentCount":I
    monitor-exit v3

    .line 421
    .end local v1    # "resolvedUserId":I
    .end local v2    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "uri":Landroid/net/Uri;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 455
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 458
    .end local v1    # "resolvedUserId":I
    .end local v2    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_4
    move/from16 v5, p6

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 461
    .local v1, "token":J
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/content/ContentService$ObserverCollector;->dispatch()V

    .line 463
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 464
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 465
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    .line 466
    .local v6, "resolvedUserId":I
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 469
    .local v7, "packageName":Ljava/lang/String;
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 471
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_5

    .line 472
    const/4 v11, 0x0

    .line 474
    invoke-direct {v8, v15}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 472
    move-object v10, v0

    move/from16 v12, v20

    move v13, v15

    move-object/from16 v21, v14

    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .local v21, "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    move-object v14, v4

    move/from16 v22, v15

    .end local v15    # "callingUid":I
    .local v22, "callingUid":I
    move/from16 v15, v16

    move/from16 v16, v22

    move/from16 v17, v19

    move-object/from16 v18, p7

    :try_start_2
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_5

    .line 471
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .restart local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v15    # "callingUid":I
    :cond_5
    move-object/from16 v21, v14

    move/from16 v22, v15

    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v15    # "callingUid":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    goto :goto_5

    .line 469
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .restart local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v15    # "callingUid":I
    :cond_6
    move-object/from16 v21, v14

    move/from16 v22, v15

    .line 480
    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v15    # "callingUid":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    :goto_5
    iget-object v10, v8, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 481
    :try_start_3
    array-length v0, v9

    move/from16 v11, v30

    :goto_6
    if-ge v11, v0, :cond_8

    aget-object v12, v9, v11

    .line 482
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 483
    invoke-direct {v8, v6, v7, v12}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    .line 481
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 486
    :cond_8
    monitor-exit v10

    .line 463
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "resolvedUserId":I
    .end local v7    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v21

    move/from16 v15, v22

    goto :goto_4

    .line 486
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v6    # "resolvedUserId":I
    .restart local v7    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "token":J
    .end local v19    # "callingPid":I
    .end local v20    # "callingUserId":I
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .end local v29    # "collector":Lcom/android/server/content/ContentService$ObserverCollector;
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "uris":[Landroid/net/Uri;
    .end local p2    # "observer":Landroid/database/IContentObserver;
    .end local p3    # "observerWantsSelfNotifications":Z
    .end local p4    # "flags":I
    .end local p5    # "userId":I
    .end local p6    # "targetSdkVersion":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 491
    .end local v3    # "i":I
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "resolvedUserId":I
    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v1    # "token":J
    .restart local v19    # "callingPid":I
    .restart local v20    # "callingUserId":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    .restart local v29    # "collector":Lcom/android/server/content/ContentService$ObserverCollector;
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "uris":[Landroid/net/Uri;
    .restart local p2    # "observer":Landroid/database/IContentObserver;
    .restart local p3    # "observerWantsSelfNotifications":Z
    .restart local p4    # "flags":I
    .restart local p5    # "userId":I
    .restart local p6    # "targetSdkVersion":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 463
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .restart local v3    # "i":I
    .restart local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v15    # "callingUid":I
    :cond_9
    move-object/from16 v21, v14

    move/from16 v22, v15

    .line 491
    .end local v3    # "i":I
    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v15    # "callingUid":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/content/ContentService$ObserverCollector;->clear()V

    .line 493
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    nop

    .line 495
    return-void

    .line 491
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .restart local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v15    # "callingUid":I
    :catchall_3
    move-exception v0

    move-object/from16 v21, v14

    move/from16 v22, v15

    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v15    # "callingUid":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    :goto_7
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/content/ContentService$ObserverCollector;->clear()V

    .line 493
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    throw v0
.end method

.method onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 321
    const/16 v0, 0x226

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    .line 329
    :cond_1
    return-void
.end method

.method public onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "stacktrace"    # Ljava/lang/String;

    .line 1780
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
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

    .line 1791
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1792
    return-void
.end method

.method onStartUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 207
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    .line 208
    :cond_0
    return-void
.end method

.method onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    .line 216
    :cond_0
    return-void
.end method

.method onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 211
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "value"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1284
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1285
    const-string v0, "ContentService"

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1290
    invoke-direct {p0, p2, p4}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1293
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1294
    :try_start_0
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1296
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-eqz p3, :cond_0

    .line 1297
    invoke-virtual {v3, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1299
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :goto_0
    monitor-exit v2

    .line 1302
    return-void

    .line 1301
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;

    .line 378
    nop

    .line 379
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 378
    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 380
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I
    .param p5, "targetSdkVersion"    # I

    .line 342
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_3

    if-eqz v15, :cond_3

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 347
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 349
    .local v17, "pid":I
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 352
    .end local p4    # "userHandle":I
    .local v1, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 355
    const/16 v0, 0x1a

    move/from16 v3, p5

    if-ge v3, v0, :cond_1

    .line 358
    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring content changes for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ContentService"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_2
    move/from16 v3, p5

    .line 368
    :goto_0
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v4

    .line 369
    :try_start_0
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v13, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p2

    move v5, v14

    .end local v14    # "uid":I
    .local v5, "uid":I
    move/from16 v15, v17

    move/from16 v16, v1

    :try_start_1
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 373
    monitor-exit v4

    .line 374
    return-void

    .line 373
    .end local v5    # "uid":I
    .restart local v14    # "uid":I
    :catchall_0
    move-exception v0

    move v5, v14

    .end local v14    # "uid":I
    .restart local v5    # "uid":I
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 342
    .end local v1    # "userHandle":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v17    # "pid":I
    .restart local p4    # "userHandle":I
    :cond_3
    move/from16 v3, p5

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 926
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 927
    if-eqz p1, :cond_1

    .line 930
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 940
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 941
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 943
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePeriodicSync() by uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 944
    invoke-virtual {v4, v5, p3, v6}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 949
    nop

    .line 950
    return-void

    .line 948
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 949
    throw v4

    .line 931
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1224
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1226
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1227
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1228
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1232
    nop

    .line 1233
    return-void

    .line 1231
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1232
    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 20
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 599
    move-object/from16 v1, p0

    move-object/from16 v13, p3

    const/4 v0, 0x1

    invoke-static {v13, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 600
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 601
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 602
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 603
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 605
    .local v16, "callingPid":I
    invoke-direct {v1, v15, v13}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 606
    invoke-direct {v1, v15, v13}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v17

    .line 610
    .local v17, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v18

    .line 612
    .local v18, "identityToken":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 613
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    .line 614
    const/4 v8, -0x2

    move-object v2, v0

    move-object/from16 v3, p1

    move v4, v14

    move v5, v15

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, v17

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 620
    nop

    .line 621
    return-void

    .line 619
    :catchall_0
    move-exception v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 620
    throw v0
.end method

.method public resetTodayStats()V
    .locals 3

    .line 1766
    const-string/jumbo v0, "resetTodayStats"

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1768
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    .line 1769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1771
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1774
    goto :goto_0

    .line 1773
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1774
    throw v2

    .line 1776
    .end local v0    # "token":J
    :cond_0
    :goto_0
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I

    .line 1005
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1006
    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .locals 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I
    .param p4, "userId"    # I

    .line 1014
    move-object v1, p0

    move/from16 v9, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to set the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1019
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-static/range {p3 .. p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v10

    .line 1023
    .end local p3    # "syncable":I
    .local v10, "syncable":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1024
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1026
    .local v12, "callingPid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v13

    .line 1028
    .local v13, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 1029
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1035
    nop

    .line 1036
    return-void

    .line 1034
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1035
    throw v0

    .line 1015
    .end local v10    # "syncable":I
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v13    # "identityToken":J
    .restart local p3    # "syncable":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 1068
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1069
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 11
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1079
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1081
    .local v1, "callingPid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v9

    .line 1083
    .local v9, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1084
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 1085
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1086
    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 1085
    move v4, p1

    move v5, p2

    move v7, v0

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1090
    nop

    .line 1091
    return-void

    .line 1089
    :catchall_0
    move-exception v2

    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1090
    throw v2
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    .line 863
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 864
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "userId"    # I

    .line 869
    move-object/from16 v1, p0

    move/from16 v10, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 872
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 877
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 878
    .local v12, "callingPid":I
    invoke-direct {v1, v11}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v13

    .line 880
    .local v13, "syncExemptionFlag":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v14

    .line 882
    .local v14, "identityToken":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 883
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move/from16 v6, p3

    move v7, v13

    move v8, v11

    move v9, v12

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 889
    nop

    .line 890
    return-void

    .line 888
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 889
    throw v0

    .line 870
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v13    # "syncExemptionFlag":I
    .end local v14    # "identityToken":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must be non-empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 634
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    .line 635
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .locals 26
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 653
    move-object/from16 v1, p0

    move/from16 v13, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to request sync as user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 655
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 657
    .local v15, "callingPid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 659
    .local v12, "extras":Landroid/os/Bundle;
    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 660
    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v23

    .line 664
    .local v23, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v24

    .line 666
    .local v24, "identityToken":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 667
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_0

    .line 691
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 668
    return-void

    .line 670
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v20

    .line 671
    .local v20, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v2

    move-wide v10, v2

    .line 672
    .local v10, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    .line 673
    :try_start_2
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object/from16 v17, v2

    .line 680
    .local v17, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {v1, v10, v11}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v18

    .line 682
    .end local v10    # "runAtTime":J
    .local v18, "runAtTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v16

    move-object/from16 v22, v12

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 684
    .end local v17    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v18, v12

    goto :goto_0

    .line 691
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v18    # "runAtTime":J
    .end local v20    # "flextime":J
    :catchall_0
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_1

    .line 685
    .restart local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v10    # "runAtTime":J
    .restart local v20    # "flextime":J
    :cond_1
    nop

    .line 686
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v8, -0x2

    .line 685
    move-object v2, v0

    move/from16 v4, p2

    move v5, v14

    move-object v7, v12

    move/from16 v9, v23

    move-wide/from16 v16, v10

    .end local v10    # "runAtTime":J
    .local v16, "runAtTime":J
    move v10, v14

    move v11, v15

    move-object/from16 v18, v12

    .end local v12    # "extras":Landroid/os/Bundle;
    .local v18, "extras":Landroid/os/Bundle;
    move-object/from16 v12, p3

    :try_start_4
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 691
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v16    # "runAtTime":J
    .end local v20    # "flextime":J
    :goto_0
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 692
    nop

    .line 693
    return-void

    .line 691
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v18    # "extras":Landroid/os/Bundle;
    .restart local v12    # "extras":Landroid/os/Bundle;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v12

    .end local v12    # "extras":Landroid/os/Bundle;
    .restart local v18    # "extras":Landroid/os/Bundle;
    :goto_1
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 692
    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 384
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
