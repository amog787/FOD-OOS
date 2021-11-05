.class public Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/StorageStatsService$LocalService;,
        Lcom/android/server/usage/StorageStatsService$H;,
        Lcom/android/server/usage/StorageStatsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUOTA:J

.field private static final DELAY_IN_MILLIS:J = 0x7530L

.field private static final PROP_DISABLE_QUOTA:Ljava/lang/String; = "fw.disable_quota"

.field private static final PROP_STORAGE_CRATES:Ljava/lang/String; = "fw.storage_crates"

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

.field private final mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 127
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 128
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 129
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 131
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 132
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 134
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 135
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 136
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    .line 138
    new-instance v0, Lcom/android/server/usage/StorageStatsService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 139
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessage(I)Z

    .line 141
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/server/usage/StorageStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 155
    const-class v0, Lcom/android/server/usage/StorageStatsManagerInternal;

    new-instance v1, Lcom/android/server/usage/StorageStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/usage/StorageStatsService$LocalService;-><init>(Lcom/android/server/usage/StorageStatsService;Lcom/android/server/usage/StorageStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 89
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 89
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 89
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 89
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usage/StorageStatsService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/StorageStatsService;

    .line 89
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private static checkCratesEnable()V
    .locals 3

    .line 622
    const-string v0, "fw.storage_crates"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 623
    .local v0, "enable":Z
    if-eqz v0, :cond_0

    .line 626
    return-void

    .line 624
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Storage Crate feature is disabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkEquals(Ljava/lang/String;JJ)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 507
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 508
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

    .line 510
    :cond_0
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/content/pm/PackageStats;
    .param p2, "b"    # Landroid/content/pm/PackageStats;

    .line 498
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

    .line 499
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

    .line 500
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

    .line 501
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

    .line 502
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

    .line 503
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

    .line 504
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;[J[J)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # [J
    .param p2, "b"    # [J

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 493
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

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "noteOp"    # Z

    .line 175
    const/16 v0, 0x2b

    if-eqz p3, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .local v0, "mode":I
    goto :goto_0

    .line 178
    .end local v0    # "mode":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    .line 180
    .restart local v0    # "mode":I
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " blocked by mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 186
    return-object v1

    .line 188
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have android.permission.PACKAGE_USAGE_STATS; callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 182
    :cond_3
    return-object v1
.end method

.method private static convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;
    .locals 7
    .param p0, "crateMetadatas"    # [Landroid/os/storage/CrateMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/storage/CrateMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 644
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 648
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v0, "crateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/CrateInfo;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 650
    .local v3, "crateMetadata":Landroid/os/storage/CrateMetadata;
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    .line 651
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    goto :goto_1

    .line 655
    :cond_1
    iget v4, v3, Landroid/os/storage/CrateMetadata;->uid:I

    iget-object v5, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/os/storage/CrateInfo;->copyFrom(ILjava/lang/String;Ljava/lang/String;)Landroid/os/storage/CrateInfo;

    move-result-object v4

    .line 657
    .local v4, "crateInfo":Landroid/os/storage/CrateInfo;
    if-nez v4, :cond_2

    .line 658
    goto :goto_1

    .line 661
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v3    # "crateMetadata":Landroid/os/storage/CrateMetadata;
    .end local v4    # "crateInfo":Landroid/os/storage/CrateInfo;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    :cond_4
    return-object v0
.end method

.method private enforceCratesPermission(ILjava/lang/String;)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_CRATES"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method private enforceStatsPermission(ILjava/lang/String;)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "errMsg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 171
    return-void

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 673
    .local v0, "crateMetadatas":[Landroid/os/storage/CrateMetadata;
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 674
    .end local v0    # "crateMetadatas":[Landroid/os/storage/CrateMetadata;
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getAppIds(I)[I
    .locals 5
    .param p1, "userId"    # I

    .line 472
    const/4 v0, 0x0

    .line 473
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

    .line 475
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 476
    .local v3, "appId":I
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 477
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 479
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appId":I
    :cond_0
    goto :goto_0

    .line 480
    :cond_1
    return-object v0
.end method

.method private static getDefaultFlags()I
    .locals 2

    .line 484
    const-string v0, "fw.disable_quota"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    return v1

    .line 487
    :cond_0
    const/16 v0, 0x1000

    return v0
.end method

.method private invalidateMounts()V
    .locals 3

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "StorageStatsService"

    const-string v2, "Failed to invalidate mounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    return-void
.end method

.method static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 608
    const-string v0, "enable_cache_quota_calculation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$queryStatsForPackage$0(Landroid/content/pm/PackageStats;Ljava/lang/String;IZLcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;)V
    .locals 0
    .param p0, "stats"    # Landroid/content/pm/PackageStats;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callerHasStatsPermission"    # Z
    .param p4, "storageStatsAugmenter"    # Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;

    .line 339
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;->augmentStatsForPackage(Landroid/content/pm/PackageStats;Ljava/lang/String;IZ)V

    .line 341
    return-void
.end method

.method static synthetic lambda$queryStatsForUid$1(Landroid/content/pm/PackageStats;IZLcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;)V
    .locals 0
    .param p0, "stats"    # Landroid/content/pm/PackageStats;
    .param p1, "uid"    # I
    .param p2, "callerHasStatsPermission"    # Z
    .param p3, "storageStatsAugmenter"    # Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;

    .line 404
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;->augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V

    .line 405
    return-void
.end method

.method private static translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .locals 5
    .param p0, "stats"    # Landroid/content/pm/PackageStats;

    .line 513
    new-instance v0, Landroid/app/usage/StorageStats;

    invoke-direct {v0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 514
    .local v0, "res":Landroid/app/usage/StorageStats;
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 515
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 516
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 517
    return-object v0
.end method


# virtual methods
.method forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 8
    .param p2, "queryTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 772
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 773
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 774
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 775
    .local v3, "augmenterTag":Ljava/lang/String;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;

    .line 777
    .local v4, "storageStatsAugmenter":Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 779
    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 782
    nop

    .line 772
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;>;"
    .end local v3    # "augmenterTag":Ljava/lang/String;
    .end local v4    # "storageStatsAugmenter":Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;>;"
    .restart local v3    # "augmenterTag":Ljava/lang/String;
    .restart local v4    # "storageStatsAugmenter":Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 782
    throw v5

    .line 784
    .end local v0    # "i":I
    .end local v1    # "count":I
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;>;"
    .end local v3    # "augmenterTag":Ljava/lang/String;
    .end local v4    # "storageStatsAugmenter":Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;
    :cond_0
    return-void
.end method

.method public getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 266
    const-wide/16 v0, 0x0

    .line 267
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

    .line 268
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v4

    .line 269
    .local v4, "stats":Landroid/app/usage/StorageStats;
    iget-wide v5, v4, Landroid/app/usage/StorageStats;->cacheBytes:J

    add-long/2addr v0, v5

    .line 270
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "stats":Landroid/app/usage/StorageStats;
    goto :goto_0

    .line 271
    :cond_0
    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 280
    .local v0, "uidMap":Landroid/util/SparseLongArray;
    sget-wide v1, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    return-wide v1

    .line 283
    .end local v0    # "uidMap":Landroid/util/SparseLongArray;
    :cond_0
    sget-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-wide v0
.end method

.method public getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 12
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 236
    const-string v0, "android"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 240
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .local v3, "path":Ljava/io/File;
    nop

    .line 248
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 250
    .local v4, "cacheTotal":J
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v6

    .line 251
    .local v6, "cacheReserved":J
    const-wide/16 v8, 0x0

    sub-long v10, v4, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 253
    .local v8, "cacheClearable":J
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v10, v8

    .line 258
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    return-wide v10

    .line 255
    .end local v4    # "cacheTotal":J
    .end local v6    # "cacheReserved":J
    .end local v8    # "cacheClearable":J
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    return-wide v4

    .line 258
    .end local v3    # "path":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
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

    .line 258
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/StorageStatsService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    throw v0
.end method

.method public getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 220
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 224
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_1

    .line 228
    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-wide v1, v1, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {v1, v2}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v1

    return-wide v1

    .line 225
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

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
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

    .line 208
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 209
    const-string v0, "vold.has_reserved"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_CONTAINER:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 212
    :cond_2
    return v1
.end method

.method notifySignificantDelta()V
    .locals 4

    .line 617
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 618
    const-string v1, "content://com.android.externalstorage.documents/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 617
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 619
    return-void
.end method

.method public queryCratesForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 683
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 684
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 697
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 703
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 704
    .local v1, "packageNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2

    .line 693
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryCratesForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 711
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 712
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 713
    .local v0, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "StorageStatsService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, p2, :cond_1

    goto :goto_0

    .line 721
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 724
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 727
    .local v3, "validatedPackageNames":[Ljava/lang/String;
    array-length v4, v1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v1, v2

    .line 728
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 729
    goto :goto_2

    .line 733
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v7, 0x2000

    invoke-virtual {v6, v5, v7, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 735
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_3

    .line 736
    goto :goto_2

    .line 739
    :cond_3
    const-class v7, Ljava/lang/String;

    invoke-static {v7, v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    .line 743
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 727
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 741
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Landroid/os/ParcelableException;

    invoke-direct {v4, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 746
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2
.end method

.method public queryCratesForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 753
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 754
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Installer;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 764
    .local v0, "crateMetadatas":[Landroid/os/storage/CrateMetadata;
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 765
    .end local v0    # "crateMetadatas":[Landroid/os/storage/CrateMetadata;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 439
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 447
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 450
    .local v0, "appIds":[I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v1

    .line 452
    .local v1, "stats":[J
    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v2

    .line 455
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

    .line 459
    .end local v2    # "manualStats":[J
    :cond_1
    nop

    .line 461
    new-instance v2, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {v2}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 462
    .local v2, "res":Landroid/app/usage/ExternalStorageStats;
    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 463
    const/4 v3, 0x1

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 464
    const/4 v3, 0x2

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 465
    const/4 v3, 0x3

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 466
    const/4 v3, 0x4

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 467
    const/4 v3, 0x5

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 468
    return-object v2

    .line 457
    .end local v1    # "stats":[J
    .end local v2    # "res":Landroid/app/usage/ExternalStorageStats;
    :catch_0
    move-exception v1

    .line 458
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
    .locals 20
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 289
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v2, "StorageStatsService"

    if-eq v13, v0, :cond_0

    .line 290
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v0, v12, v3, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v15, v0

    .line 300
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v3, :cond_2

    .line 306
    nop

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 306
    invoke-direct {v1, v0, v14, v6}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    move v10, v0

    .local v0, "callerHasStatsPermission":Z
    goto :goto_1

    .line 309
    .end local v0    # "callerHasStatsPermission":Z
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v14}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 310
    const/4 v0, 0x1

    move v10, v0

    .line 313
    .local v10, "callerHasStatsPermission":Z
    :goto_1
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v5, :cond_3

    .line 315
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v11, v0, v14}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 318
    :cond_3
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 319
    .local v16, "appId":I
    new-array v4, v5, [Ljava/lang/String;

    aput-object v12, v4, v6

    .line 320
    .local v4, "packageNames":[Ljava/lang/String;
    new-array v9, v5, [J

    .line 321
    .local v9, "ceDataInodes":[J
    new-array v0, v6, [Ljava/lang/String;

    .line 323
    .local v0, "codePaths":[Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v17, v0

    goto :goto_2

    .line 326
    :cond_4
    const-class v3, Ljava/lang/String;

    .line 327
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v5

    .line 326
    invoke-static {v3, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 330
    .end local v0    # "codePaths":[Ljava/lang/String;
    .local v17, "codePaths":[Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 332
    .local v8, "stats":Landroid/content/pm/PackageStats;
    :try_start_1
    iget-object v2, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v7, v16

    move-object/from16 v18, v8

    .end local v8    # "stats":Landroid/content/pm/PackageStats;
    .local v18, "stats":Landroid/content/pm/PackageStats;
    move-object v8, v9

    move-object/from16 v19, v9

    .end local v9    # "ceDataInodes":[J
    .local v19, "ceDataInodes":[J
    move-object/from16 v9, v17

    move v14, v10

    .end local v10    # "callerHasStatsPermission":Z
    .local v14, "callerHasStatsPermission":Z
    move-object/from16 v10, v18

    :try_start_2
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 336
    nop

    .line 337
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne v11, v0, :cond_5

    .line 338
    new-instance v0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;

    move-object/from16 v2, v18

    .end local v18    # "stats":Landroid/content/pm/PackageStats;
    .local v2, "stats":Landroid/content/pm/PackageStats;
    invoke-direct {v0, v2, v12, v13, v14}, Lcom/android/server/usage/-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk;-><init>(Landroid/content/pm/PackageStats;Ljava/lang/String;IZ)V

    const-string v3, "queryStatsForPackage"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto :goto_3

    .line 337
    .end local v2    # "stats":Landroid/content/pm/PackageStats;
    .restart local v18    # "stats":Landroid/content/pm/PackageStats;
    :cond_5
    move-object/from16 v2, v18

    .line 343
    .end local v18    # "stats":Landroid/content/pm/PackageStats;
    .restart local v2    # "stats":Landroid/content/pm/PackageStats;
    :goto_3
    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 334
    .end local v2    # "stats":Landroid/content/pm/PackageStats;
    .restart local v18    # "stats":Landroid/content/pm/PackageStats;
    :catch_0
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "stats":Landroid/content/pm/PackageStats;
    .restart local v2    # "stats":Landroid/content/pm/PackageStats;
    goto :goto_4

    .end local v2    # "stats":Landroid/content/pm/PackageStats;
    .end local v14    # "callerHasStatsPermission":Z
    .end local v19    # "ceDataInodes":[J
    .restart local v8    # "stats":Landroid/content/pm/PackageStats;
    .restart local v9    # "ceDataInodes":[J
    .restart local v10    # "callerHasStatsPermission":Z
    :catch_1
    move-exception v0

    move-object v2, v8

    move-object/from16 v19, v9

    move v14, v10

    .line 335
    .end local v8    # "stats":Landroid/content/pm/PackageStats;
    .end local v9    # "ceDataInodes":[J
    .end local v10    # "callerHasStatsPermission":Z
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v2    # "stats":Landroid/content/pm/PackageStats;
    .restart local v14    # "callerHasStatsPermission":Z
    .restart local v19    # "ceDataInodes":[J
    :goto_4
    new-instance v3, Landroid/os/ParcelableException;

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 298
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v2    # "stats":Landroid/content/pm/PackageStats;
    .end local v4    # "packageNames":[Ljava/lang/String;
    .end local v14    # "callerHasStatsPermission":Z
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "appId":I
    .end local v17    # "codePaths":[Ljava/lang/String;
    .end local v19    # "ceDataInodes":[J
    :catch_2
    move-exception v0

    .line 299
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 20
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 349
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 350
    .local v13, "userId":I
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 352
    .local v14, "appId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v15, "StorageStatsService"

    if-eq v13, v0, :cond_0

    .line 353
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v12, 0x0

    if-ne v0, v2, :cond_2

    .line 361
    nop

    .line 362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 361
    invoke-direct {v1, v0, v3, v12}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v12

    :goto_0
    move v11, v0

    .local v0, "callerHasStatsPermission":Z
    goto :goto_1

    .line 364
    .end local v0    # "callerHasStatsPermission":Z
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 365
    const/4 v0, 0x1

    move v11, v0

    .line 368
    .local v11, "callerHasStatsPermission":Z
    :goto_1
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, "packageNames":[Ljava/lang/String;
    array-length v0, v10

    new-array v9, v0, [J

    .line 370
    .local v9, "ceDataInodes":[J
    new-array v0, v12, [Ljava/lang/String;

    .line 372
    .local v0, "codePaths":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object v8, v0

    .end local v0    # "codePaths":[Ljava/lang/String;
    .local v4, "i":I
    .local v8, "codePaths":[Ljava/lang/String;
    :goto_2
    array-length v0, v10

    if-ge v4, v0, :cond_4

    .line 374
    :try_start_0
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v5, v10, v4

    const/16 v6, 0x2000

    invoke-virtual {v0, v5, v6, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 376
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 379
    :cond_3
    const-class v5, Ljava/lang/String;

    .line 380
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-static {v5, v8, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v5

    .line 384
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3
    nop

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Landroid/os/ParcelableException;

    invoke-direct {v5, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 387
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i":I
    :cond_4
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v15}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 389
    .local v7, "stats":Landroid/content/pm/PackageStats;
    :try_start_1
    iget-object v4, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v0
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v5, p1

    move-object v6, v10

    move-object/from16 v16, v7

    .end local v7    # "stats":Landroid/content/pm/PackageStats;
    .local v16, "stats":Landroid/content/pm/PackageStats;
    move v7, v13

    move-object/from16 v17, v8

    .end local v8    # "codePaths":[Ljava/lang/String;
    .local v17, "codePaths":[Ljava/lang/String;
    move v8, v0

    move-object/from16 v18, v9

    .end local v9    # "ceDataInodes":[J
    .local v18, "ceDataInodes":[J
    move v9, v14

    move-object/from16 v19, v10

    .end local v10    # "packageNames":[Ljava/lang/String;
    .local v19, "packageNames":[Ljava/lang/String;
    move-object/from16 v10, v18

    move v3, v11

    .end local v11    # "callerHasStatsPermission":Z
    .local v3, "callerHasStatsPermission":Z
    move-object/from16 v11, v17

    move v0, v12

    move-object/from16 v12, v16

    :try_start_2
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 392
    const-string v4, "fw.verify_storage"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_5

    .line 393
    :try_start_3
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v15}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v4, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move v7, v13

    move v9, v14

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object v12, v0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v5, v16

    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .local v5, "stats":Landroid/content/pm/PackageStats;
    :try_start_4
    invoke-static {v4, v0, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 398
    .end local v0    # "manualStats":Landroid/content/pm/PackageStats;
    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_6

    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .restart local v16    # "stats":Landroid/content/pm/PackageStats;
    :catch_2
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, p1

    goto :goto_5

    .line 392
    :cond_5
    move-object/from16 v5, v16

    .line 400
    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .restart local v5    # "stats":Landroid/content/pm/PackageStats;
    :goto_4
    nop

    .line 402
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v4, p1

    if-ne v4, v0, :cond_6

    .line 403
    new-instance v0, Lcom/android/server/usage/-$$Lambda$StorageStatsService$tgQ1n6Nzx2HUgCixFqiqtHCcsAo;

    invoke-direct {v0, v5, v2, v3}, Lcom/android/server/usage/-$$Lambda$StorageStatsService$tgQ1n6Nzx2HUgCixFqiqtHCcsAo;-><init>(Landroid/content/pm/PackageStats;IZ)V

    const-string v6, "queryStatsForUid"

    invoke-virtual {v1, v0, v6}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 407
    :cond_6
    invoke-static {v5}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 398
    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .restart local v16    # "stats":Landroid/content/pm/PackageStats;
    :catch_3
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .restart local v5    # "stats":Landroid/content/pm/PackageStats;
    :goto_5
    goto :goto_6

    .end local v3    # "callerHasStatsPermission":Z
    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .end local v17    # "codePaths":[Ljava/lang/String;
    .end local v18    # "ceDataInodes":[J
    .end local v19    # "packageNames":[Ljava/lang/String;
    .restart local v7    # "stats":Landroid/content/pm/PackageStats;
    .restart local v8    # "codePaths":[Ljava/lang/String;
    .restart local v9    # "ceDataInodes":[J
    .restart local v10    # "packageNames":[Ljava/lang/String;
    .restart local v11    # "callerHasStatsPermission":Z
    :catch_4
    move-exception v0

    move-object/from16 v4, p1

    move-object v5, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move v3, v11

    .line 399
    .end local v7    # "stats":Landroid/content/pm/PackageStats;
    .end local v8    # "codePaths":[Ljava/lang/String;
    .end local v9    # "ceDataInodes":[J
    .end local v10    # "packageNames":[Ljava/lang/String;
    .end local v11    # "callerHasStatsPermission":Z
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v3    # "callerHasStatsPermission":Z
    .restart local v5    # "stats":Landroid/content/pm/PackageStats;
    .restart local v17    # "codePaths":[Ljava/lang/String;
    .restart local v18    # "ceDataInodes":[J
    .restart local v19    # "packageNames":[Ljava/lang/String;
    :goto_6
    new-instance v6, Landroid/os/ParcelableException;

    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 412
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "StorageStatsService"

    if-eq p2, v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 420
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 421
    .local v0, "appIds":[I
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    .line 423
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

    .line 425
    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 427
    .local v1, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 428
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

    .line 432
    .end local v1    # "manualStats":Landroid/content/pm/PackageStats;
    :cond_1
    nop

    .line 433
    invoke-static {v8}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v1

    return-object v1

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
