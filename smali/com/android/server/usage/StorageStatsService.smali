.class public Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/StorageStatsService$H;,
        Lcom/android/server/usage/StorageStatsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUOTA:J

.field private static final DELAY_IN_MILLIS:J = 0x7530L

.field private static final PROP_DISABLE_QUOTA:Ljava/lang/String; = "fw.disable_quota"

.field private static final PROP_VERIFY_STORAGE:Ljava/lang/String; = "fw.verify_storage"

.field private static final TAG:Ljava/lang/String; = "StorageStatsService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCacheQuotas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usage/StorageStatsService$H;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackage:Landroid/content/pm/PackageManager;

.field private final mStorage:Landroid/os/storage/StorageManager;

.field private final mUser:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 106
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 107
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 109
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 112
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 113
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    .line 116
    new-instance v0, Lcom/android/server/usage/StorageStatsService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 117
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessage(I)Z

    .line 119
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/server/usage/StorageStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 71
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 71
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 71
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 71
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static checkEquals(Ljava/lang/String;JJ)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 446
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/content/pm/PackageStats;
    .param p2, "b"    # Landroid/content/pm/PackageStats;

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " codeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalCodeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalDataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalCacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 443
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;[J[J)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # [J
    .param p2, "b"    # [J

    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private enforcePermission(ILjava/lang/String;)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "mode":I
    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    const-string v3, "StorageStatsService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " blocked by mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    return-void
.end method

.method private getAppIds(I)[I
    .locals 5
    .param p1, "userId"    # I

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "appIds":[I
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 414
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 415
    .local v3, "appId":I
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 416
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 418
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appId":I
    :cond_0
    goto :goto_0

    .line 419
    :cond_1
    return-object v0
.end method

.method private static getDefaultFlags()I
    .locals 2

    .line 423
    const/4 v0, 0x0

    const-string v1, "fw.disable_quota"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    return v0

    .line 426
    :cond_0
    const/16 v0, 0x1000

    return v0
.end method

.method private invalidateMounts()V
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "StorageStatsService"

    const-string v2, "Failed to invalidate mounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    return-void
.end method

.method static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 547
    const/4 v0, 0x1

    const-string v1, "enable_cache_quota_calculation"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .locals 5
    .param p0, "stats"    # Landroid/content/pm/PackageStats;

    .line 452
    new-instance v0, Landroid/app/usage/StorageStats;

    invoke-direct {v0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 453
    .local v0, "res":Landroid/app/usage/StorageStats;
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 454
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 455
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 456
    return-object v0
.end method


# virtual methods
.method public getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 227
    const-wide/16 v0, 0x0

    .line 228
    .local v0, "cacheBytes":J
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 229
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v4

    .line 230
    .local v4, "stats":Landroid/app/usage/StorageStats;
    iget-wide v5, v4, Landroid/app/usage/StorageStats;->cacheBytes:J

    add-long/2addr v0, v5

    .line 231
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "stats":Landroid/app/usage/StorageStats;
    goto :goto_0

    .line 232
    :cond_0
    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 241
    .local v0, "uidMap":Landroid/util/SparseLongArray;
    sget-wide v1, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    return-wide v1

    .line 244
    .end local v0    # "uidMap":Landroid/util/SparseLongArray;
    :cond_0
    sget-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-wide v0
.end method

.method public getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 12
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 197
    const-string v0, "android"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 201
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .local v3, "path":Ljava/io/File;
    nop

    .line 209
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 211
    .local v4, "cacheTotal":J
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v6

    .line 212
    .local v6, "cacheReserved":J
    const-wide/16 v8, 0x0

    sub-long v10, v4, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 214
    .local v8, "cacheClearable":J
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v10, v8

    .line 219
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    return-wide v10

    .line 216
    .end local v4    # "cacheTotal":J
    .end local v6    # "cacheReserved":J
    .end local v8    # "cacheClearable":J
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    return-wide v4

    .line 219
    .end local v3    # "path":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "token":J
    .end local p0    # "this":Lcom/android/server/usage/StorageStatsService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "callingPackage":Ljava/lang/String;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/StorageStatsService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 181
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 185
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_1

    .line 189
    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-wide v1, v1, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {v1, v2}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v1

    return-wide v1

    .line 186
    :cond_1
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find storage device for UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 169
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 170
    const-string/jumbo v0, "vold.has_reserved"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_CONTAINER:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 173
    :cond_2
    return v1
.end method

.method notifySignificantDelta()V
    .locals 4

    .line 556
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 557
    const-string v1, "content://com.android.externalstorage.documents/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 556
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 558
    return-void
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 378
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 386
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 389
    .local v0, "appIds":[I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v1

    .line 391
    .local v1, "stats":[J
    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v2

    .line 394
    .local v2, "manualStats":[J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;[J[J)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v2    # "manualStats":[J
    :cond_1
    nop

    .line 400
    new-instance v2, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {v2}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 401
    .local v2, "res":Landroid/app/usage/ExternalStorageStats;
    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 402
    const/4 v3, 0x1

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 403
    const/4 v3, 0x2

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 404
    const/4 v3, 0x3

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 405
    const/4 v3, 0x4

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 406
    const/4 v3, 0x5

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 407
    return-object v2

    .line 396
    .end local v1    # "stats":[J
    .end local v2    # "res":Landroid/app/usage/ExternalStorageStats;
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 19
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 250
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v3, "StorageStatsService"

    if-eq v12, v0, :cond_0

    .line 251
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v0, v2, v4, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v14, v0

    .line 261
    .local v14, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v4, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v13}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 269
    :goto_0
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    iget v4, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 271
    iget v0, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v15, p1

    invoke-virtual {v1, v15, v0, v13}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 274
    :cond_2
    move-object/from16 v15, p1

    iget v0, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 275
    .local v16, "appId":I
    new-array v5, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, v5, v0

    .line 276
    .local v5, "packageNames":[Ljava/lang/String;
    new-array v10, v4, [J

    .line 277
    .local v10, "ceDataInodes":[J
    new-array v0, v0, [Ljava/lang/String;

    .line 279
    .local v0, "codePaths":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v17, v0

    goto :goto_1

    .line 282
    :cond_3
    const-class v4, Ljava/lang/String;

    .line 283
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-static {v4, v0, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 286
    .end local v0    # "codePaths":[Ljava/lang/String;
    .local v17, "codePaths":[Ljava/lang/String;
    :goto_1
    new-instance v11, Landroid/content/pm/PackageStats;

    invoke-direct {v11, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 288
    .local v11, "stats":Landroid/content/pm/PackageStats;
    :try_start_1
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v8, v16

    move-object v9, v10

    move-object/from16 v18, v10

    .end local v10    # "ceDataInodes":[J
    .local v18, "ceDataInodes":[J
    move-object/from16 v10, v17

    :try_start_2
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    nop

    .line 293
    invoke-static {v11}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 290
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v18    # "ceDataInodes":[J
    .restart local v10    # "ceDataInodes":[J
    :catch_1
    move-exception v0

    move-object/from16 v18, v10

    .line 291
    .end local v10    # "ceDataInodes":[J
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v18    # "ceDataInodes":[J
    :goto_2
    new-instance v3, Landroid/os/ParcelableException;

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 259
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v5    # "packageNames":[Ljava/lang/String;
    .end local v11    # "stats":Landroid/content/pm/PackageStats;
    .end local v14    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "appId":I
    .end local v17    # "codePaths":[Ljava/lang/String;
    .end local v18    # "ceDataInodes":[J
    :catch_2
    move-exception v0

    move-object/from16 v15, p1

    .line 260
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 20
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 299
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 300
    .local v12, "userId":I
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 302
    .local v13, "appId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v14, "StorageStatsService"

    if-eq v12, v0, :cond_0

    .line 303
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, v2, :cond_1

    move-object/from16 v15, p3

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v15, p3

    invoke-direct {v1, v0, v15}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 313
    :goto_0
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "packageNames":[Ljava/lang/String;
    array-length v0, v11

    new-array v10, v0, [J

    .line 315
    .local v10, "ceDataInodes":[J
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/String;

    .line 317
    .local v3, "codePaths":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object v9, v3

    .end local v3    # "codePaths":[Ljava/lang/String;
    .local v4, "i":I
    .local v9, "codePaths":[Ljava/lang/String;
    :goto_1
    array-length v3, v11

    if-ge v4, v3, :cond_3

    .line 319
    :try_start_0
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v5, v11, v4

    const/16 v6, 0x2000

    invoke-virtual {v3, v5, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 321
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 324
    :cond_2
    const-class v5, Ljava/lang/String;

    .line 325
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-static {v5, v9, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v5

    .line 329
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    nop

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 332
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i":I
    :cond_3
    new-instance v3, Landroid/content/pm/PackageStats;

    invoke-direct {v3, v14}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v8, v3

    .line 334
    .local v8, "stats":Landroid/content/pm/PackageStats;
    :try_start_1
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v7
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v4, p1

    move-object v5, v11

    move v6, v12

    move-object/from16 v16, v8

    .end local v8    # "stats":Landroid/content/pm/PackageStats;
    .local v16, "stats":Landroid/content/pm/PackageStats;
    move v8, v13

    move-object/from16 v17, v9

    .end local v9    # "codePaths":[Ljava/lang/String;
    .local v17, "codePaths":[Ljava/lang/String;
    move-object v9, v10

    move-object/from16 v18, v10

    .end local v10    # "ceDataInodes":[J
    .local v18, "ceDataInodes":[J
    move-object/from16 v10, v17

    move-object/from16 v19, v11

    .end local v11    # "packageNames":[Ljava/lang/String;
    .local v19, "packageNames":[Ljava/lang/String;
    move-object/from16 v11, v16

    :try_start_2
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 337
    const-string v3, "fw.verify_storage"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v14}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    move v6, v12

    move v8, v13

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    move-object v11, v0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v4, v16

    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .local v4, "stats":Landroid/content/pm/PackageStats;
    :try_start_3
    invoke-static {v3, v0, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 343
    .end local v0    # "manualStats":Landroid/content/pm/PackageStats;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 337
    .end local v4    # "stats":Landroid/content/pm/PackageStats;
    .restart local v16    # "stats":Landroid/content/pm/PackageStats;
    :cond_4
    move-object/from16 v4, v16

    .line 345
    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .restart local v4    # "stats":Landroid/content/pm/PackageStats;
    :goto_3
    nop

    .line 346
    invoke-static {v4}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 343
    .end local v4    # "stats":Landroid/content/pm/PackageStats;
    .restart local v16    # "stats":Landroid/content/pm/PackageStats;
    :catch_2
    move-exception v0

    move-object/from16 v4, v16

    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .restart local v4    # "stats":Landroid/content/pm/PackageStats;
    goto :goto_4

    .end local v4    # "stats":Landroid/content/pm/PackageStats;
    .end local v17    # "codePaths":[Ljava/lang/String;
    .end local v18    # "ceDataInodes":[J
    .end local v19    # "packageNames":[Ljava/lang/String;
    .restart local v8    # "stats":Landroid/content/pm/PackageStats;
    .restart local v9    # "codePaths":[Ljava/lang/String;
    .restart local v10    # "ceDataInodes":[J
    .restart local v11    # "packageNames":[Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v4, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 344
    .end local v8    # "stats":Landroid/content/pm/PackageStats;
    .end local v9    # "codePaths":[Ljava/lang/String;
    .end local v10    # "ceDataInodes":[J
    .end local v11    # "packageNames":[Ljava/lang/String;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v4    # "stats":Landroid/content/pm/PackageStats;
    .restart local v17    # "codePaths":[Ljava/lang/String;
    .restart local v18    # "ceDataInodes":[J
    .restart local v19    # "packageNames":[Ljava/lang/String;
    :goto_4
    new-instance v3, Landroid/os/ParcelableException;

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 351
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "StorageStatsService"

    if-eq p2, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 359
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 360
    .local v0, "appIds":[I
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    .line 362
    .local v8, "stats":Landroid/content/pm/PackageStats;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v5

    move-object v3, p1

    move v4, p2

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 364
    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 366
    .local v1, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v8}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1    # "manualStats":Landroid/content/pm/PackageStats;
    :cond_1
    nop

    .line 372
    invoke-static {v8}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v1

    return-object v1

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
