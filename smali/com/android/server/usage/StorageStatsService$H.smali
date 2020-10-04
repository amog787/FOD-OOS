.class Lcom/android/server/usage/StorageStatsService$H;
.super Landroid/os/Handler;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/StorageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MINIMUM_CHANGE_DELTA:D = 0.05

.field private static final MSG_CHECK_STORAGE_DELTA:I = 0x64

.field private static final MSG_LOAD_CACHED_QUOTAS_FROM_FILE:I = 0x65

.field private static final UNSET:I = -0x1


# instance fields
.field private mMinimumThresholdBytes:D

.field private mPreviousBytes:J

.field private final mStats:Landroid/os/StatFs;

.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 475
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 476
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 478
    new-instance p1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 479
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 480
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mMinimumThresholdBytes:D

    .line 481
    return-void
.end method

.method private getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;
    .locals 5

    .line 539
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 540
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 541
    .local v0, "usageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v1, Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->access$200(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/StorageStatsService;->access$300(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/storage/CacheQuotaStrategy;-><init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V

    return-object v1
.end method

.method private recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 535
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->recalculateQuotas()V

    .line 536
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 488
    const-string v0, "StorageStatsService"

    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/StorageStatsService;->access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usage/StorageStatsService;->isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    return-void

    .line 492
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x7530

    const/16 v4, 0x64

    if-eq v1, v4, :cond_3

    const/16 v5, 0x65

    if-eq v1, v5, :cond_1

    .line 526
    return-void

    .line 504
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v1

    .line 505
    .local v1, "strategy":Lcom/android/server/storage/CacheQuotaStrategy;
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 507
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/storage/CacheQuotaStrategy;->setupQuotasFromFile()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v5

    .line 511
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string v6, "Cache quota XML file is malformed?"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 508
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    .line 509
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "An error occurred while reading the cache quota file."

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 515
    :goto_1
    iget-wide v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 517
    invoke-direct {p0, v1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 519
    :cond_2
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 520
    goto :goto_2

    .line 494
    .end local v1    # "strategy":Lcom/android/server/storage/CacheQuotaStrategy;
    :cond_3
    iget-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 495
    .local v0, "bytesDelta":J
    long-to-double v5, v0

    iget-wide v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mMinimumThresholdBytes:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    .line 496
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 497
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 498
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {v5}, Lcom/android/server/usage/StorageStatsService;->notifySignificantDelta()V

    .line 500
    :cond_4
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 501
    nop

    .line 528
    .end local v0    # "bytesDelta":J
    :goto_2
    return-void
.end method
