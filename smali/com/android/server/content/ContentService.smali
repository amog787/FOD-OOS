.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCall;,
        Lcom/android/server/content/ContentService$OnChangeRunnable;,
        Lcom/android/server/content/ContentService$CancelRunnable;,
        Lcom/android/server/content/ContentService$Lifecycle;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MEDIA_PROVIDER_ONCHNAGE_TIMEOUT:I = 0x1388

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sObserverLeakDetectedUid"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

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

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mTimeoutHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 156
    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 160
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

    .line 353
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 151
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 171
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 355
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 359
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 361
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/content/ContentService$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$3;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    .line 369
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 378
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .local v2, "localeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 385
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MediaProviderContentServiceHandlerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/ContentService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 386
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 387
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/content/ContentService;->mHandler:Landroid/os/Handler;

    .line 389
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MediaProviderContentServiceTimeoutHandlerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/ContentService;->mTimeoutHandlerThread:Landroid/os/HandlerThread;

    .line 390
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mTimeoutHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 391
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mTimeoutHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/content/ContentService;->mTimeoutHandler:Landroid/os/Handler;

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/ContentService;

    .line 97
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/ContentService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/Uri;

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/ContentService;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/ContentService;

    .line 97
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/content/ContentService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/ContentService;

    .line 97
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/content/ContentService;)Lcom/android/server/content/ContentService$ObserverNode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/ContentService;

    .line 97
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/internal/os/BinderDeathDispatcher;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    return-object v0
.end method

.method static synthetic access$700()Landroid/util/ArraySet;
    .locals 1

    .line 97
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

    .line 629
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

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method private clampPeriod(J)J
    .locals 4
    .param p1, "period"    # J

    .line 723
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 724
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 725
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

    .line 727
    move-wide p1, v0

    .line 729
    :cond_0
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1453
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1454
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_0

    .line 1455
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_0
    return-void
.end method

.method private enforceShell(Ljava/lang/String;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    .line 1832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1833
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1834
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

    .line 1836
    :cond_1
    :goto_0
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

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

    .line 1329
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1330
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_0

    .line 1331
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1332
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1334
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1335
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_1

    .line 1336
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 1337
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_1
    return-object v1
.end method

.method private getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1321
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1322
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1323
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

    .line 1491
    if-eqz p2, :cond_0

    .line 1492
    nop

    .line 1493
    const/4 v0, -0x1

    const-string/jumbo v1, "v_exemption"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1496
    .local v2, "exemption":I
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1497
    if-eq v2, v0, :cond_0

    .line 1498
    return v2

    .line 1501
    .end local v2    # "exemption":I
    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1502
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1503
    .local v0, "ami":Landroid/app/ActivityManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1504
    return v1

    .line 1506
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    .line 1507
    .local v2, "procState":I
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v3

    .line 1510
    .local v3, "isUidActive":Z
    const/4 v4, 0x2

    if-le v2, v4, :cond_5

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    goto :goto_1

    .line 1514
    :cond_2
    const/4 v4, 0x7

    if-le v2, v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_0

    .line 1517
    :cond_3
    return v1

    .line 1515
    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1512
    :cond_5
    :goto_1
    return v4
.end method

.method private getSyncExemptionForCaller(I)I
    .locals 1
    .param p1, "callingUid"    # I

    .line 1486
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
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

    .line 197
    :cond_0
    goto :goto_0

    .line 199
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 199
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

    .line 1409
    const/4 v0, -0x2

    if-ne p6, v0, :cond_0

    .line 1410
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    .line 1413
    :cond_0
    const/4 v0, -0x1

    const-string v6, "No access to "

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-ne p6, v0, :cond_1

    .line 1414
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1416
    :cond_1
    if-ltz p6, :cond_6

    .line 1418
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_5

    .line 1419
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1421
    const/4 v0, 0x0

    .line 1422
    .local v0, "allow":Z
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1425
    const/4 v0, 0x1

    goto :goto_0

    .line 1426
    :cond_2
    if-eqz p5, :cond_3

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1429
    const/4 v0, 0x1

    .line 1431
    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 1432
    if-eqz p5, :cond_4

    .line 1433
    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    goto :goto_1

    .line 1435
    :cond_4
    nop

    :goto_1
    move-object v1, v7

    .line 1436
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

    .line 1442
    .end local v0    # "allow":Z
    .end local v1    # "permissions":Ljava/lang/String;
    :cond_5
    :goto_2
    return p6

    .line 1417
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

    .line 1344
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1345
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_0

    return-void

    .line 1347
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1348
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_1

    return-void

    .line 1350
    :cond_1
    if-eqz p3, :cond_4

    .line 1351
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1352
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1353
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

    .line 1355
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 1357
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1359
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    :goto_1
    goto :goto_0

    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 1362
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1364
    :goto_2
    return-void
.end method

.method private static normalizeSyncable(I)I
    .locals 1
    .param p0, "syncable"    # I

    .line 1461
    if-lez p0, :cond_0

    .line 1462
    const/4 v0, 0x1

    return v0

    .line 1463
    :cond_0
    if-nez p0, :cond_1

    .line 1464
    const/4 v0, 0x0

    return v0

    .line 1466
    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method private validateExtras(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1470
    const-string/jumbo v0, "v_exemption"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1471
    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1477
    :cond_0
    const-string v0, "Invalid extras specified."

    .line 1478
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ContentService"

    const-string v2, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid extras specified."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1482
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

    .line 981
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 982
    if-eqz v2, :cond_1

    .line 985
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 993
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 995
    .local v11, "userId":I
    move-wide/from16 v3, p4

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    .line 996
    .end local p4    # "pollFrequency":J
    .local v12, "pollFrequency":J
    invoke-static {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v14

    .line 998
    .local v14, "defaultFlex":J
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v16

    .line 1000
    .local v16, "identityToken":J
    :try_start_0
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v9, p2

    invoke-direct {v4, v2, v9, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1002
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1006
    nop

    .line 1007
    return-void

    .line 1005
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 986
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

    .line 983
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

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1295
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1297
    .local v1, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 1298
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 1299
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    .line 1300
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1299
    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1304
    nop

    .line 1305
    return-void

    .line 1303
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .locals 12
    .param p1, "request"    # Landroid/content/SyncRequest;

    .line 837
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 838
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_0

    return-void

    .line 839
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 840
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 842
    .local v2, "callingUid":I
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 843
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 848
    .local v3, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 850
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 854
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 855
    .local v6, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 856
    .local v7, "provider":Ljava/lang/String;
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 857
    .local v8, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 859
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

    .line 863
    :cond_2
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 864
    const-string v9, "API"

    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "provider":Ljava/lang/String;
    .end local v8    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 867
    nop

    .line 868
    return-void

    .line 866
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 791
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 792
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 810
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
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

    .line 817
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 818
    .local v0, "identityToken":J
    if-eqz p3, :cond_2

    .line 819
    const-string v2, "ContentService"

    const-string v3, "cname not null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void

    .line 823
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 824
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_3

    .line 826
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 827
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 828
    const/4 v4, 0x0

    const-string v5, "API"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_3
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 832
    nop

    .line 833
    return-void

    .line 831
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

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

    .line 216
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

    .line 217
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 219
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "-a"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v13, v0

    .line 223
    .local v13, "dumpAll":Z
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-wide v14, v4

    .line 225
    .local v14, "identityToken":J
    :try_start_2
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_1

    .line 226
    const-string v0, "SyncManager not available yet"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v11, p1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v3, v13}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 230
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 231
    const-string v0, "Observer tree:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    iget-object v10, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 233
    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [I

    .line 234
    .local v0, "counts":[I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v4

    .line 235
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

    .line 236
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v4, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 239
    move-object/from16 v7, v17

    .end local v17    # "pidCounts":Landroid/util/SparseIntArray;
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v7

    goto :goto_1

    .end local v7    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v17    # "pidCounts":Landroid/util/SparseIntArray;
    :cond_2
    move-object/from16 v7, v17

    .line 241
    .end local v6    # "i":I
    .end local v17    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v7    # "pidCounts":Landroid/util/SparseIntArray;
    new-instance v6, Lcom/android/server/content/ContentService$2;

    invoke-direct {v6, v1, v7}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    move v6, v5

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 256
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 257
    .local v8, "pid":I
    const-string v9, "  pid "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, " observers"

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .end local v8    # "pid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 260
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 261
    const-string v6, " Total number of nodes: "

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget v6, v0, v5

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 262
    const-string v6, " Total number of observers: "

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 264
    sget-object v6, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    const-string v8, " "

    invoke-virtual {v6, v3, v8}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 265
    .end local v0    # "counts":[I
    .end local v4    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "pidCounts":Landroid/util/SparseIntArray;
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 266
    :try_start_5
    sget-object v4, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 267
    :try_start_6
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 268
    const-string v0, "Observer leaking UIDs: "

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 270
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 272
    :try_start_7
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 273
    :try_start_8
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 274
    const-string v0, "Cached content:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 276
    move v0, v5

    .local v0, "i":I
    :goto_3
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ge v0, v5, :cond_4

    .line 277
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

    .line 278
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 279
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 280
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 282
    .end local v0    # "i":I
    :cond_4
    :try_start_a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 283
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 285
    :try_start_b
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 286
    nop

    .line 287
    monitor-exit p0

    return-void

    .line 283
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

    .line 270
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

    .line 265
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

    .line 285
    :catchall_5
    move-exception v0

    :try_start_12
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 215
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

    .line 1392
    const-string v0, "ContentService"

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1397
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1400
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1401
    :try_start_0
    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1403
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    monitor-exit v2

    return-object v4

    .line 1404
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

    .line 1198
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

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 1213
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1215
    .local v0, "canAccessAccounts":Z
    :goto_0
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1217
    .local v1, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1218
    invoke-virtual {v3, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1217
    return-object v3

    .line 1220
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 1061
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

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1077
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1078
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 1079
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, p2, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1079
    return v3

    .line 1083
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1084
    nop

    .line 1085
    const/4 v2, -0x1

    return v2

    .line 1083
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getMasterSyncAutomatically()Z
    .locals 1

    .line 1125
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1141
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1142
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 1143
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1143
    return v3

    .line 1146
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1147
    nop

    .line 1148
    const/4 v2, 0x0

    return v2

    .line 1146
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

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

    .line 1040
    if-eqz p1, :cond_1

    .line 1043
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1050
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1052
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

    .line 1055
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1052
    return-object v3

    .line 1055
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .line 1044
    .end local v0    # "userId":I
    .end local v1    # "identityToken":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
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

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 908
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 910
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 911
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 911
    return-object v3

    .line 913
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 1

    .line 876
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 4
    .param p1, "userId"    # I

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 893
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 895
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 896
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 896
    return-object v3

    .line 898
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 919
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

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 935
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 936
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 937
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 938
    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 937
    return v3

    .line 941
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 942
    nop

    .line 943
    const/4 v2, 0x0

    return v2

    .line 941
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1226
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

    .line 1236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync stats for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1247
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_0

    .line 1249
    const/4 v3, 0x0

    .line 1259
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1249
    return-object v3

    .line 1252
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1253
    :try_start_1
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1257
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1257
    return-object v4

    .line 1255
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

    .line 1259
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

    throw v2

    .line 1237
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

    .line 1180
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1183
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1185
    .local v1, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v3, :cond_0

    .line 1187
    const/4 v4, 0x0

    .line 1192
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1187
    return v4

    .line 1189
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

    .line 1192
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1189
    return v4

    .line 1192
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1265
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

    .line 1271
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to retrieve the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1275
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1276
    .local v0, "identityToken":J
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1277
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    return v3

    .line 1281
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1282
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1286
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1286
    return v4

    .line 1284
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

    .line 1288
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

    throw v3
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "userHandle"    # I
    .param p6, "targetSdkVersion"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 482
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p7

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying update of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from observer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    const-string v1, "ContentService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :cond_0
    move/from16 v9, p5

    .line 490
    :goto_0
    if-eqz v15, :cond_f

    .line 494
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 495
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 496
    .local v18, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 498
    .local v19, "callingUserHandle":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v18

    move v4, v12

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 501
    .end local p5    # "userHandle":I
    .local v1, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 502
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 504
    const/16 v0, 0x1a

    move/from16 v3, p6

    if-ge v3, v0, :cond_2

    .line 507
    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 511
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring notify for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ContentService"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 505
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_3
    move/from16 v3, p6

    .line 519
    :goto_1
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 526
    .local v4, "identityToken":J
    const/4 v6, 0x0

    .line 528
    .local v6, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 530
    iget-object v7, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    .line 531
    :try_start_1
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    const/4 v11, 0x0

    move-object/from16 v10, p1

    move/from16 v20, v12

    .end local v12    # "callingUid":I
    .local v20, "callingUid":I
    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move v15, v1

    move-object/from16 v16, v6

    :try_start_2
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 533
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    .line 535
    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v0

    .line 538
    .local v7, "numCalls":I
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_4

    :try_start_4
    const-string v0, "com.android.providers.media"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v15, p7

    :try_start_5
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 539
    const-string v0, "ContentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "numCalls: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 612
    .end local v7    # "numCalls":I
    :catchall_0
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 p5, v2

    move-object v3, v15

    move/from16 v2, v20

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v3, p7

    move-object/from16 p5, v2

    move/from16 v2, v20

    goto/16 :goto_f

    .line 538
    .restart local v7    # "numCalls":I
    :cond_4
    move-object/from16 v15, p7

    .line 542
    :cond_5
    :goto_2
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_3
    if-ge v9, v7, :cond_a

    .line 543
    :try_start_6
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-object v10, v0

    .line 549
    .local v10, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :try_start_7
    iget v0, v10, Lcom/android/server/content/ContentService$ObserverCall;->mUid:I

    iget v11, v10, Lcom/android/server/content/ContentService$ObserverCall;->mPid:I

    const/16 v12, 0x25e4

    invoke-static {v12, v0, v11}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 556
    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 557
    new-instance v0, Lcom/android/server/content/ContentService$OnChangeRunnable;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v14, p1

    :try_start_8
    invoke-direct {v0, v8, v10, v14, v1}, Lcom/android/server/content/ContentService$OnChangeRunnable;-><init>(Lcom/android/server/content/ContentService;Lcom/android/server/content/ContentService$ObserverCall;Landroid/net/Uri;I)V

    .line 558
    .local v0, "onChangeRunnable":Lcom/android/server/content/ContentService$OnChangeRunnable;
    iget-object v11, v8, Lcom/android/server/content/ContentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 559
    nop

    .end local v0    # "onChangeRunnable":Lcom/android/server/content/ContentService$OnChangeRunnable;
    goto :goto_4

    .line 560
    :cond_6
    move-object/from16 v14, p1

    iget-object v0, v10, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    iget-boolean v11, v10, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    invoke-interface {v0, v11, v14, v1}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 563
    :goto_4
    invoke-static {v12}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V

    .line 570
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_7

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 571
    const-string v0, "ContentService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notified "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget v13, v10, Lcom/android/server/content/ContentService$ObserverCall;->mUid:I

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ") of update at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 592
    :cond_7
    move-object/from16 p5, v2

    move/from16 v21, v7

    goto/16 :goto_7

    .line 576
    :catch_0
    move-exception v0

    goto :goto_5

    .line 612
    .end local v7    # "numCalls":I
    .end local v9    # "i":I
    .end local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catchall_2
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v10, p2

    move-object/from16 p5, v2

    move-object v3, v15

    move/from16 v2, v20

    goto/16 :goto_f

    .line 576
    .restart local v7    # "numCalls":I
    .restart local v9    # "i":I
    .restart local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_1
    move-exception v0

    move-object/from16 v14, p1

    :goto_5
    move-object v11, v0

    .line 577
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_9
    iget-object v12, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 578
    :try_start_a
    const-string v0, "ContentService"

    const-string v13, "Found dead observer, removing"

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, v10, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 580
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v13, v10, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 581
    invoke-static {v13}, Lcom/android/server/content/ContentService$ObserverNode;->access$500(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v13

    .line 582
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 583
    .local v16, "numList":I
    const/16 v17, 0x0

    move-object/from16 p5, v2

    move/from16 v3, v16

    move/from16 v2, v17

    .end local v16    # "numList":I
    .local v2, "j":I
    .local v3, "numList":I
    .local p5, "msg":Ljava/lang/String;
    :goto_6
    if-ge v2, v3, :cond_9

    .line 584
    :try_start_b
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v17, v16

    .line 585
    .local v17, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move/from16 v21, v7

    move-object/from16 v16, v10

    move-object/from16 v7, v17

    .end local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v17    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .local v7, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .local v16, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .local v21, "numCalls":I
    :try_start_c
    iget-object v10, v7, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v10}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    if-ne v10, v0, :cond_8

    .line 586
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    add-int/lit8 v2, v2, -0x1

    .line 588
    add-int/lit8 v3, v3, -0x1

    .line 583
    .end local v7    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v10, v16

    move/from16 v7, v21

    goto :goto_6

    .line 591
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "j":I
    .end local v3    # "numList":I
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v21    # "numCalls":I
    .local v7, "numCalls":I
    .restart local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catchall_3
    move-exception v0

    move/from16 v21, v7

    move-object/from16 v16, v10

    .end local v7    # "numCalls":I
    .end local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v21    # "numCalls":I
    goto :goto_8

    .line 583
    .end local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v21    # "numCalls":I
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "j":I
    .restart local v3    # "numList":I
    .restart local v7    # "numCalls":I
    .restart local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    :cond_9
    move/from16 v21, v7

    move-object/from16 v16, v10

    .line 591
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "j":I
    .end local v3    # "numList":I
    .end local v7    # "numCalls":I
    .end local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .restart local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v21    # "numCalls":I
    monitor-exit v12

    .line 542
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v7, v21

    goto/16 :goto_3

    .line 591
    .end local v21    # "numCalls":I
    .end local p5    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v7    # "numCalls":I
    .restart local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v11    # "ex":Landroid/os/RemoteException;
    :catchall_4
    move-exception v0

    move-object/from16 p5, v2

    move/from16 v21, v7

    move-object/from16 v16, v10

    .end local v2    # "msg":Ljava/lang/String;
    .end local v7    # "numCalls":I
    .end local v10    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v21    # "numCalls":I
    .restart local p5    # "msg":Ljava/lang/String;
    :goto_8
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .end local v1    # "userHandle":I
    .end local v4    # "identityToken":J
    .end local v6    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v18    # "callingPid":I
    .end local v19    # "callingUserHandle":I
    .end local v20    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "observer":Landroid/database/IContentObserver;
    .end local p3    # "observerWantsSelfNotifications":Z
    .end local p4    # "flags":I
    .end local p5    # "msg":Ljava/lang/String;
    .end local p6    # "targetSdkVersion":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 612
    .end local v9    # "i":I
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v21    # "numCalls":I
    .restart local v1    # "userHandle":I
    .restart local v4    # "identityToken":J
    .restart local v6    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v18    # "callingPid":I
    .restart local v19    # "callingUserHandle":I
    .restart local v20    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "observer":Landroid/database/IContentObserver;
    .restart local p3    # "observerWantsSelfNotifications":Z
    .restart local p4    # "flags":I
    .restart local p5    # "msg":Ljava/lang/String;
    .restart local p6    # "targetSdkVersion":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v10, p2

    move-object v3, v15

    move/from16 v2, v20

    goto/16 :goto_f

    .line 591
    .restart local v9    # "i":I
    .restart local v11    # "ex":Landroid/os/RemoteException;
    .restart local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v21    # "numCalls":I
    :catchall_6
    move-exception v0

    goto :goto_8

    .line 612
    .end local v9    # "i":I
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v16    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v21    # "numCalls":I
    .end local p5    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    :catchall_7
    move-exception v0

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object/from16 v14, p1

    :goto_9
    move-object/from16 p5, v2

    move-object/from16 v10, p2

    move-object v3, v15

    move/from16 v2, v20

    .end local v2    # "msg":Ljava/lang/String;
    .restart local p5    # "msg":Ljava/lang/String;
    goto/16 :goto_f

    .line 542
    .end local p5    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v7    # "numCalls":I
    .restart local v9    # "i":I
    :cond_a
    move-object/from16 v14, p1

    move-object/from16 p5, v2

    move/from16 v21, v7

    .line 594
    .end local v2    # "msg":Ljava/lang/String;
    .end local v7    # "numCalls":I
    .end local v9    # "i":I
    .restart local v21    # "numCalls":I
    .restart local p5    # "msg":Ljava/lang/String;
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c

    .line 595
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 596
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_b

    .line 597
    const/4 v10, 0x0

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    move/from16 v2, v20

    .end local v20    # "callingUid":I
    .local v2, "callingUid":I
    :try_start_f
    invoke-direct {v8, v2}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 597
    move-object v9, v0

    move/from16 v11, v19

    move v12, v2

    move-object v7, v14

    move v14, v3

    move-object v3, v15

    move v15, v2

    move/from16 v16, v18

    move-object/from16 v17, p7

    :try_start_10
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_a

    .line 612
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v21    # "numCalls":I
    :catchall_9
    move-exception v0

    move-object v7, v14

    move-object v3, v15

    goto/16 :goto_d

    .line 596
    .end local v2    # "callingUid":I
    .restart local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v20    # "callingUid":I
    .restart local v21    # "numCalls":I
    :cond_b
    move-object v7, v14

    move-object v3, v15

    move/from16 v2, v20

    .end local v20    # "callingUid":I
    .restart local v2    # "callingUid":I
    goto :goto_a

    .line 612
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v2    # "callingUid":I
    .end local v21    # "numCalls":I
    .restart local v20    # "callingUid":I
    :catchall_a
    move-exception v0

    move-object v7, v14

    move-object v3, v15

    move/from16 v2, v20

    move-object/from16 v10, p2

    .end local v20    # "callingUid":I
    .restart local v2    # "callingUid":I
    goto/16 :goto_f

    .line 594
    .end local v2    # "callingUid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "numCalls":I
    :cond_c
    move-object v7, v14

    move-object v3, v15

    move/from16 v2, v20

    .line 604
    .end local v20    # "callingUid":I
    .restart local v2    # "callingUid":I
    :goto_a
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 605
    :try_start_11
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-direct {v8, v1, v0, v7}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    .line 607
    .end local v0    # "providerPackageName":Ljava/lang/String;
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 612
    .end local v21    # "numCalls":I
    nop

    .line 613
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 616
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 617
    nop

    .line 620
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_d

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notifying update of "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for user "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " from observer "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", flags "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " end"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    const-string v9, "ContentService"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 620
    :cond_d
    move-object/from16 v10, p2

    .line 625
    :goto_b
    return-void

    .line 607
    .restart local v21    # "numCalls":I
    :catchall_b
    move-exception v0

    move-object/from16 v10, p2

    :goto_c
    :try_start_12
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .end local v1    # "userHandle":I
    .end local v2    # "callingUid":I
    .end local v4    # "identityToken":J
    .end local v6    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v18    # "callingPid":I
    .end local v19    # "callingUserHandle":I
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "observer":Landroid/database/IContentObserver;
    .end local p3    # "observerWantsSelfNotifications":Z
    .end local p4    # "flags":I
    .end local p5    # "msg":Ljava/lang/String;
    .end local p6    # "targetSdkVersion":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    .restart local v1    # "userHandle":I
    .restart local v2    # "callingUid":I
    .restart local v4    # "identityToken":J
    .restart local v6    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v18    # "callingPid":I
    .restart local v19    # "callingUserHandle":I
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "observer":Landroid/database/IContentObserver;
    .restart local p3    # "observerWantsSelfNotifications":Z
    .restart local p4    # "flags":I
    .restart local p5    # "msg":Ljava/lang/String;
    .restart local p6    # "targetSdkVersion":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :catchall_c
    move-exception v0

    goto :goto_c

    .line 612
    .end local v21    # "numCalls":I
    :catchall_d
    move-exception v0

    :goto_d
    move-object/from16 v10, p2

    goto :goto_f

    .end local p5    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v20    # "callingUid":I
    :catchall_e
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v3, p7

    move-object/from16 p5, v2

    move/from16 v2, v20

    .end local v20    # "callingUid":I
    .local v2, "callingUid":I
    .restart local p5    # "msg":Ljava/lang/String;
    goto :goto_f

    .line 533
    .end local p5    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v20    # "callingUid":I
    :catchall_f
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v3, p7

    move-object/from16 p5, v2

    move/from16 v2, v20

    .end local v20    # "callingUid":I
    .local v2, "callingUid":I
    .restart local p5    # "msg":Ljava/lang/String;
    goto :goto_e

    .end local p5    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v12    # "callingUid":I
    :catchall_10
    move-exception v0

    move-object/from16 p5, v2

    move v2, v12

    move-object v3, v13

    move-object v10, v14

    .end local v12    # "callingUid":I
    .local v2, "callingUid":I
    .restart local p5    # "msg":Ljava/lang/String;
    :goto_e
    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    .end local v1    # "userHandle":I
    .end local v2    # "callingUid":I
    .end local v4    # "identityToken":J
    .end local v6    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v18    # "callingPid":I
    .end local v19    # "callingUserHandle":I
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "observer":Landroid/database/IContentObserver;
    .end local p3    # "observerWantsSelfNotifications":Z
    .end local p4    # "flags":I
    .end local p5    # "msg":Ljava/lang/String;
    .end local p6    # "targetSdkVersion":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    .line 612
    .restart local v1    # "userHandle":I
    .restart local v2    # "callingUid":I
    .restart local v4    # "identityToken":J
    .restart local v6    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v18    # "callingPid":I
    .restart local v19    # "callingUserHandle":I
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "observer":Landroid/database/IContentObserver;
    .restart local p3    # "observerWantsSelfNotifications":Z
    .restart local p4    # "flags":I
    .restart local p5    # "msg":Ljava/lang/String;
    .restart local p6    # "targetSdkVersion":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :catchall_11
    move-exception v0

    goto :goto_f

    .line 533
    :catchall_12
    move-exception v0

    goto :goto_e

    .line 612
    .end local p5    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v12    # "callingUid":I
    :catchall_13
    move-exception v0

    move-object/from16 p5, v2

    move v2, v12

    move-object v3, v13

    move-object v10, v14

    .end local v12    # "callingUid":I
    .local v2, "callingUid":I
    .restart local p5    # "msg":Ljava/lang/String;
    :goto_f
    if-eqz v6, :cond_e

    .line 613
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 616
    :cond_e
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 491
    .end local v1    # "userHandle":I
    .end local v2    # "callingUid":I
    .end local v4    # "identityToken":J
    .end local v6    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v18    # "callingPid":I
    .end local v19    # "callingUserHandle":I
    .local p5, "userHandle":I
    :cond_f
    move-object v3, v13

    move-object v10, v14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 639
    nop

    .line 640
    nop

    .line 641
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/16 v6, 0x2710

    .line 639
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V

    .line 642
    return-void
.end method

.method onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 396
    const/16 v0, 0x226

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    .line 404
    :cond_1
    return-void
.end method

.method public onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "stacktrace"    # Ljava/lang/String;

    .line 1854
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
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

    .line 1865
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

    .line 1866
    return-void
.end method

.method onStartUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 203
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    .line 204
    :cond_0
    return-void
.end method

.method onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 211
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    .line 212
    :cond_0
    return-void
.end method

.method onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 207
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "value"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1369
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1370
    const-string v0, "ContentService"

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1375
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1378
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1379
    :try_start_0
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1381
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-eqz p3, :cond_0

    .line 1382
    invoke-virtual {v3, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1384
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :goto_0
    monitor-exit v2

    .line 1387
    return-void

    .line 1386
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

    .line 453
    nop

    .line 454
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 453
    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 455
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I
    .param p5, "targetSdkVersion"    # I

    .line 417
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_3

    if-eqz v15, :cond_3

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 422
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 424
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

    .line 427
    .end local p4    # "userHandle":I
    .local v1, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 430
    const/16 v0, 0x1a

    move/from16 v3, p5

    if-ge v3, v0, :cond_1

    .line 433
    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 437
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

    .line 438
    return-void

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    move/from16 v3, p5

    .line 443
    :goto_0
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v4

    .line 444
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

    .line 448
    monitor-exit v4

    .line 449
    return-void

    .line 448
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

    .line 417
    .end local v1    # "userHandle":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v17    # "pid":I
    .restart local p4    # "userHandle":I
    :cond_3
    move/from16 v3, p5

    .line 418
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

    .line 1011
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1012
    if-eqz p1, :cond_1

    .line 1015
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1025
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1026
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1028
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

    .line 1029
    invoke-virtual {v4, v5, p3, v6}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1034
    nop

    .line 1035
    return-void

    .line 1033
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .line 1016
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1309
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1311
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1312
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1313
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1317
    nop

    .line 1318
    return-void

    .line 1316
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 20
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 684
    move-object/from16 v1, p0

    move-object/from16 v13, p3

    const/4 v0, 0x1

    invoke-static {v13, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 685
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 686
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 687
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 688
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 690
    .local v16, "callingPid":I
    invoke-direct {v1, v15, v13}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 691
    invoke-direct {v1, v15, v13}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v17

    .line 695
    .local v17, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v18

    .line 697
    .local v18, "identityToken":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 698
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    .line 699
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

    .line 704
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 705
    nop

    .line 706
    return-void

    .line 704
    :catchall_0
    move-exception v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetTodayStats()V
    .locals 3

    .line 1840
    const-string/jumbo v0, "resetTodayStats"

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1842
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    .line 1843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1845
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1848
    goto :goto_0

    .line 1847
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1850
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

    .line 1090
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1091
    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .locals 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I
    .param p4, "userId"    # I

    .line 1099
    move-object v1, p0

    move/from16 v9, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to set the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1104
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-static/range {p3 .. p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v10

    .line 1108
    .end local p3    # "syncable":I
    .local v10, "syncable":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1109
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1111
    .local v12, "callingPid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v13

    .line 1113
    .local v13, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 1114
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    .line 1115
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

    .line 1119
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1120
    nop

    .line 1121
    return-void

    .line 1119
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 1100
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

    .line 1153
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1154
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 11
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1164
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1166
    .local v1, "callingPid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v9

    .line 1168
    .local v9, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1169
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    .line 1170
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1171
    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 1170
    move v4, p1

    move v5, p2

    move v7, v0

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1175
    nop

    .line 1176
    return-void

    .line 1174
    :catchall_0
    move-exception v2

    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    .line 948
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 949
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "userId"    # I

    .line 954
    move-object/from16 v1, p0

    move/from16 v10, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 957
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 961
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 962
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 963
    .local v12, "callingPid":I
    invoke-direct {v1, v11}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v13

    .line 965
    .local v13, "syncExemptionFlag":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v14

    .line 967
    .local v14, "identityToken":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 968
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    .line 969
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

    .line 973
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_0
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 974
    nop

    .line 975
    return-void

    .line 973
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 955
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

    .line 719
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    .line 720
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .locals 26
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 738
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

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 740
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 742
    .local v15, "callingPid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 744
    .local v12, "extras":Landroid/os/Bundle;
    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 745
    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v23

    .line 749
    .local v23, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v24

    .line 751
    .local v24, "identityToken":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 752
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_0

    .line 776
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 753
    return-void

    .line 755
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v20

    .line 756
    .local v20, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v2

    move-wide v10, v2

    .line 757
    .local v10, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    .line 758
    :try_start_2
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object/from16 v17, v2

    .line 765
    .local v17, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {v1, v10, v11}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v18

    .line 767
    .end local v10    # "runAtTime":J
    .local v18, "runAtTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v16

    move-object/from16 v22, v12

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    .end local v17    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v18, v12

    goto :goto_0

    .line 776
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v18    # "runAtTime":J
    .end local v20    # "flextime":J
    :catchall_0
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_1

    .line 770
    .restart local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v10    # "runAtTime":J
    .restart local v20    # "flextime":J
    :cond_1
    nop

    .line 771
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v8, -0x2

    .line 770
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

    .line 776
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v16    # "runAtTime":J
    .end local v20    # "flextime":J
    :goto_0
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 777
    nop

    .line 778
    return-void

    .line 776
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

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 459
    if-eqz p1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 465
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
