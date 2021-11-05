.class public Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;,
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;
    }
.end annotation


# static fields
.field public static final BACKUP_VERSION:I = 0x4

.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final DEBUG:Z

.field private static final DEFAULT_CURRENT_VERSION:I = 0x5

.field static final KEEP_BACKUP_DIR:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field static final MAX_FILES_PER_INTERVAL_TYPE:[I

.field private static final RETENTION_LEN_KEY:Ljava/lang/String; = "ro.usagestats.chooser.retention"

.field private static final SELECTION_LOG_RETENTION_LEN:I

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mBackupsDir:Ljava/io/File;

.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private mCurrentVersion:I

.field private mFirstUpdate:Z

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mNewUpdate:Z

.field private final mPackageMappingsFile:Ljava/io/File;

.field final mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

.field final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateBreadcrumb:Ljava/io/File;

.field private mUpgradePerformed:Z

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    .line 104
    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    .line 108
    nop

    .line 109
    const-string v0, "ro.usagestats.chooser.retention"

    const/16 v1, 0xe

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    .line 108
    return-void

    :array_0
    .array-data 4
        0x64
        0x32
        0xc
        0xa
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .line 157
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "version"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/android/server/usage/PackagesTokenData;

    invoke-direct {v0}, Lcom/android/server/usage/PackagesTokenData;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "daily"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string v2, "weekly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string v2, "monthly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string v2, "yearly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 147
    iput p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 148
    new-instance v0, Ljava/io/File;

    const-string v1, "version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 149
    new-instance v0, Ljava/io/File;

    const-string v1, "backups"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 150
    new-instance v0, Ljava/io/File;

    const-string v1, "breadcrumb"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 151
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 152
    new-instance v0, Ljava/io/File;

    const-string v1, "mappings"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    .line 153
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 154
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .locals 10

    .line 340
    const-string v0, "\n"

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "currentFingerprint":Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 342
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 343
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 345
    .local v4, "version":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "buildFingerprint":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 347
    iput-boolean v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 349
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 350
    iput-boolean v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 354
    .end local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 343
    .end local v4    # "version":I
    .end local v5    # "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 352
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_0
    move-exception v3

    .line 353
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 356
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "version":I
    :goto_1
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const-string v5, "UsageStatsDatabase"

    if-eq v4, v3, :cond_3

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading from version "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 360
    :try_start_5
    invoke-direct {p0, v4}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 368
    goto :goto_2

    .line 361
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upgrade from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    iput v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 367
    return-void

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v3, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 377
    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 379
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 380
    .local v6, "token":J
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 381
    .local v8, "previousVersion":I
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 384
    .end local v3    # "reader":Ljava/io/BufferedReader;
    nop

    .line 385
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v9, 0x4

    if-lt v3, v9, :cond_4

    .line 386
    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->continueUpgradeLocked(IJ)V

    goto :goto_4

    .line 388
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempting to upgrade to an unsupported version: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 377
    .end local v6    # "token":J
    .end local v8    # "previousVersion":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v4    # "version":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 381
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v4    # "version":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_2
    move-exception v0

    .line 382
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Failed read version upgrade breadcrumb"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-ne v4, v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v3, :cond_7

    .line 394
    :cond_6
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 395
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_c
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 400
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 403
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    nop

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 408
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 410
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 413
    :cond_8
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 414
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 415
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 417
    :cond_9
    return-void

    .line 394
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_4
    move-exception v0

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v2

    :try_start_f
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v4    # "version":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :goto_5
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 400
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v4    # "version":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_3
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to write new version"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private continueUpgradeLocked(IJ)V
    .locals 15
    .param p1, "version"    # I
    .param p2, "token"    # J

    .line 507
    move-object v1, p0

    move/from16 v2, p1

    const-string v3, "UsageStatsDatabase"

    const/4 v0, 0x3

    if-gt v2, v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading UsageStats as XML; current database version: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 513
    .local v4, "backupDir":Ljava/io/File;
    const/4 v5, 0x5

    if-lt v2, v5, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    .line 519
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge v6, v0, :cond_5

    .line 520
    new-instance v0, Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 521
    .local v7, "backedUpInterval":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 522
    .local v8, "files":[Ljava/io/File;
    if-eqz v8, :cond_4

    .line 523
    const/4 v0, 0x0

    move v9, v0

    .local v9, "j":I
    :goto_1
    array-length v0, v8

    if-ge v9, v0, :cond_4

    .line 524
    sget-boolean v0, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgrading "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v8, v9

    .line 526
    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to version ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 527
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") for interval "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_2
    :try_start_0
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 532
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v10, Landroid/util/AtomicFile;

    aget-object v11, v8, v9

    invoke-direct {v10, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v10, v0, v2, v11}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    .line 535
    iget v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt v10, v5, :cond_3

    .line 537
    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v0, v10}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 539
    :cond_3
    new-instance v10, Landroid/util/AtomicFile;

    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v12, v12, v6

    iget-wide v13, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 540
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 539
    invoke-static {v10, v0, v11, v12}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v0    # "stats":Lcom/android/server/usage/IntervalStats;
    goto :goto_2

    .line 542
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to upgrade backup file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v9

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 519
    .end local v7    # "backedUpInterval":Ljava/io/File;
    .end local v8    # "files":[Ljava/io/File;
    .end local v9    # "j":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 551
    .end local v6    # "i":I
    :cond_5
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt v0, v5, :cond_6

    .line 553
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    goto :goto_3

    .line 554
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 555
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Failed to write the tokens mappings file."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_3
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .locals 5
    .param p0, "directory"    # Ljava/io/File;

    .line 1447
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1448
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 1449
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1450
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1451
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1453
    :cond_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1449
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1457
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1458
    return-void
.end method

.method private static deleteDirectoryContents(Ljava/io/File;)V
    .locals 4
    .param p0, "directory"    # Ljava/io/File;

    .line 1440
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1441
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1442
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1441
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1444
    :cond_0
    return-void
.end method

.method private deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;
    .locals 6
    .param p1, "data"    # [B
    .param p2, "version"    # I

    .line 1426
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1427
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1428
    .local v1, "in":Ljava/io/DataInputStream;
    new-instance v2, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v2}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1430
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1431
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, v2, p2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    goto :goto_0

    .line 1432
    :catch_0
    move-exception v3

    .line 1433
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "DeSerializing IntervalStats Failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1434
    const/4 v2, 0x0

    .line 1436
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method

.method private doUpgradeLocked(I)V
    .locals 18
    .param p1, "thisVersion"    # I

    .line 426
    move-object/from16 v1, p0

    const-string v0, "\n"

    const/4 v2, 0x0

    const-string v3, "UsageStatsDatabase"

    const/4 v4, 0x2

    move/from16 v5, p1

    if-ge v5, v4, :cond_2

    .line 429
    const-string v0, "Deleting all usage stats files"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 431
    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 432
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 433
    array-length v4, v3

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 434
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 433
    .end local v7    # "f":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 430
    .end local v3    # "files":[Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto/16 :goto_5

    .line 440
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 441
    .local v6, "token":J
    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    .local v4, "backupDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 443
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 448
    :try_start_0
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 449
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/nio/file/CopyOption;

    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v12, v11, v2

    .line 448
    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 454
    nop

    .line 456
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v9, v9

    if-ge v8, v9, :cond_7

    .line 457
    new-instance v9, Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 458
    .local v9, "backupIntervalDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 460
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 465
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 466
    .local v11, "files":[Ljava/io/File;
    if-eqz v11, :cond_5

    .line 467
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_4

    .line 468
    new-instance v13, Ljava/io/File;

    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    .local v13, "backupFile":Ljava/io/File;
    sget-boolean v14, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v14, :cond_3

    .line 470
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Creating versioned ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") backup of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v11, v12

    .line 471
    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " stat files for interval "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 470
    invoke-static {v3, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_3
    :try_start_1
    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v15

    new-array v2, v10, [Ljava/nio/file/CopyOption;

    sget-object v17, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/16 v16, 0x0

    aput-object v17, v2, v16

    invoke-static {v14, v15, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 483
    nop

    .line 467
    .end local v13    # "backupFile":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto :goto_3

    .line 480
    .restart local v13    # "backupFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to back up file : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v11, v12

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 467
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "backupFile":Ljava/io/File;
    :cond_4
    move/from16 v16, v2

    goto :goto_4

    .line 466
    .end local v12    # "j":I
    :cond_5
    move/from16 v16, v2

    .line 456
    .end local v9    # "backupIntervalDir":Ljava/io/File;
    .end local v11    # "files":[Ljava/io/File;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    goto/16 :goto_2

    .line 461
    .restart local v9    # "backupIntervalDir":Ljava/io/File;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create interval backup directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    .end local v8    # "i":I
    .end local v9    # "backupIntervalDir":Ljava/io/File;
    :cond_7
    const/4 v2, 0x0

    .line 491
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v8

    .line 492
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 494
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 502
    nop

    .line 504
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .end local v4    # "backupDir":Ljava/io/File;
    .end local v6    # "token":J
    :goto_5
    return-void

    .line 501
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "backupDir":Ljava/io/File;
    .restart local v6    # "token":J
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 497
    :catch_1
    move-exception v0

    .line 498
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "Failed to write new version upgrade breadcrumb"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .end local v4    # "backupDir":Ljava/io/File;
    .end local v6    # "token":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "thisVersion":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "backupDir":Ljava/io/File;
    .restart local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "thisVersion":I
    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 502
    throw v0

    .line 451
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v0

    .line 452
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to back up version file : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 444
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create backup directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .locals 3

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntervalStatsBytes(Ljava/io/DataInputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1399
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1400
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1401
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 1402
    return-object v1
.end method

.method private indexFilesLocked()V
    .locals 12

    .line 274
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 281
    .local v0, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 282
    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 283
    new-instance v3, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v3}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v3, v2, v1

    goto :goto_1

    .line 285
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 287
    :goto_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 288
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_4

    .line 289
    sget-boolean v3, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    const-string v4, " stat files for interval "

    const-string v5, "UsageStatsDatabase"

    if-eqz v3, :cond_1

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    array-length v3, v2

    .line 293
    .local v3, "len":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_2

    .line 294
    aget-object v7, v2, v6

    .line 295
    .local v7, "f":Ljava/io/File;
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 297
    .local v8, "af":Landroid/util/AtomicFile;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v1

    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v8}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_3

    .line 298
    :catch_0
    move-exception v9

    .line 299
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to index file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "af":Landroid/util/AtomicFile;
    .end local v9    # "e":Ljava/io/IOException;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 304
    .end local v6    # "j":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    sget-object v7, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    .line 305
    .local v6, "toDelete":I
    if-lez v6, :cond_4

    .line 306
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, v6, :cond_3

    .line 307
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 308
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, v9}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 306
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 310
    .end local v7    # "j":I
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "len":I
    .end local v6    # "toDelete":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 314
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .locals 2
    .param p1, "beingRestored"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "onDevice"    # Lcom/android/server/usage/IntervalStats;

    .line 1373
    if-nez p2, :cond_0

    return-object p1

    .line 1374
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1375
    :cond_1
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1376
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1377
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 1378
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v1}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    .line 1379
    return-object p1
.end method

.method private static parseBeginTime(Landroid/util/AtomicFile;)J
    .locals 2
    .param p0, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseBeginTime(Ljava/io/File;)J
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 998
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 996
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1000
    .restart local v2    # "c":C
    :cond_1
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1007
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .locals 12
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "expiryTime"    # J

    .line 956
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 957
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 958
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 961
    .local v3, "f":Ljava/io/File;
    :try_start_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    .local v4, "beginTime":J
    goto :goto_1

    .line 962
    .end local v4    # "beginTime":J
    :catch_0
    move-exception v4

    .line 963
    .local v4, "e":Ljava/io/IOException;
    const-wide/16 v5, 0x0

    move-wide v4, v5

    .line 966
    .local v4, "beginTime":J
    :goto_1
    cmp-long v6, v4, p2

    if-gez v6, :cond_2

    .line 968
    :try_start_1
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 969
    .local v6, "af":Landroid/util/AtomicFile;
    new-instance v7, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v7}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 970
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 971
    iget-object v8, v7, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 972
    .local v8, "pkgCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_1

    .line 973
    iget-object v10, v7, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 974
    .local v10, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v11, :cond_0

    .line 975
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 972
    .end local v10    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 978
    .end local v9    # "i":I
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 981
    .end local v6    # "af":Landroid/util/AtomicFile;
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "pkgCount":I
    goto :goto_3

    .line 979
    :catch_1
    move-exception v6

    .line 980
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to delete chooser counts from usage stats file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 958
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "beginTime":J
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 985
    :cond_3
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .line 938
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 939
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 940
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 943
    .local v3, "f":Ljava/io/File;
    :try_start_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    .local v4, "beginTime":J
    goto :goto_1

    .line 944
    .end local v4    # "beginTime":J
    :catch_0
    move-exception v4

    .line 945
    .local v4, "e":Ljava/io/IOException;
    const-wide/16 v5, 0x0

    move-wide v4, v5

    .line 948
    .local v4, "beginTime":J
    :goto_1
    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    .line 949
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V

    .line 940
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "beginTime":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 953
    :cond_1
    return-void
.end method

.method private pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z
    .locals 8
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/usage/IntervalStats;",
            ")Z"
        }
    .end annotation

    .line 652
    .local p1, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 655
    .local v0, "dataPruned":Z
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 656
    iget-object v2, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 657
    .local v2, "usageStats":Landroid/app/usage/UsageStats;
    iget-object v3, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 658
    .local v3, "timeInstalled":Ljava/lang/Long;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 659
    :cond_0
    iget-object v4, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 660
    const/4 v0, 0x1

    .line 655
    .end local v2    # "usageStats":Landroid/app/usage/UsageStats;
    .end local v3    # "timeInstalled":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 663
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 665
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 669
    :cond_3
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 670
    iget-object v2, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 671
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 672
    .restart local v3    # "timeInstalled":Ljava/lang/Long;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 673
    :cond_4
    iget-object v4, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 674
    const/4 v0, 0x1

    .line 669
    .end local v2    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v3    # "timeInstalled":Ljava/lang/Long;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 678
    .end local v1    # "i":I
    :cond_6
    return v0
.end method

.method private readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 2
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1071
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading UsageStats as XML; current database version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    .line 1076
    return-void
.end method

.method private static readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z
    .locals 4
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .param p3, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1087
    const/4 v0, 0x0

    .line 1089
    .local v0, "dataOmitted":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1091
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1092
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    move-result v2

    move v0, v2

    .line 1093
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1099
    goto :goto_0

    .line 1097
    :catch_0
    move-exception v2

    .line 1100
    nop

    .line 1104
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_0
    nop

    .line 1105
    return v0

    .line 1095
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    .line 1096
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1099
    goto :goto_1

    .line 1097
    :catch_1
    move-exception v3

    .line 1100
    :goto_1
    nop

    .end local v0    # "dataOmitted":Z
    .end local p0    # "file":Landroid/util/AtomicFile;
    .end local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    .end local p2    # "version":I
    .end local p3    # "packagesTokenData":Lcom/android/server/usage/PackagesTokenData;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1101
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "dataOmitted":Z
    .restart local p0    # "file":Landroid/util/AtomicFile;
    .restart local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    .restart local p2    # "version":I
    .restart local p3    # "packagesTokenData":Lcom/android/server/usage/PackagesTokenData;
    :catch_2
    move-exception v1

    .line 1102
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "UsageStatsDatabase"

    invoke-static {v2, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    throw v1
.end method

.method private static readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .param p3, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "dataOmitted":Z
    const/4 v1, 0x1

    const-string v2, "UsageStatsDatabase"

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    const-string v3, "Unable to read interval stats from proto."

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 1138
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    goto :goto_0

    .line 1139
    :catch_0
    move-exception v1

    .line 1140
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->deobfuscateData(Lcom/android/server/usage/PackagesTokenData;)Z

    move-result v0

    .line 1143
    goto :goto_1

    .line 1145
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1131
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1134
    goto :goto_1

    .line 1132
    :catch_1
    move-exception v1

    .line 1133
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1122
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading UsageStats as XML; database version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :try_start_2
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1127
    goto :goto_1

    .line 1125
    :catch_2
    move-exception v1

    .line 1126
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "Unable to read interval stats from XML"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 1149
    :goto_1
    return v0
.end method

.method private static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .locals 1
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    .line 1406
    if-nez p0, :cond_0

    return-void

    .line 1407
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1408
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1409
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 1410
    return-void
.end method

.method private serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B
    .locals 5
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I

    .line 1413
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1414
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1416
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1417
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    goto :goto_0

    .line 1418
    :catch_0
    move-exception v2

    .line 1419
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Serializing IntervalStats Failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1422
    .end local v2    # "ioe":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "statsFile"    # Landroid/util/AtomicFile;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1384
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1386
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    nop

    .line 1392
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    .line 1393
    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B

    move-result-object v1

    .line 1394
    .local v1, "data":[B
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1395
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1396
    return-void

    .line 1387
    .end local v1    # "data":[B
    :catch_0
    move-exception v1

    .line 1388
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsDatabase"

    const-string v3, "Failed to read usage stats file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1389
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1390
    return-void
.end method

.method private writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 2
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1014
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to write UsageStats as XML with version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void

    .line 1018
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    .line 1019
    return-void
.end method

.method private static writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .locals 2
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .param p3, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1023
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1025
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    .line 1026
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    const/4 v0, 0x0

    .line 1030
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1031
    nop

    .line 1032
    return-void

    .line 1030
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1031
    throw v1
.end method

.method private static writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .param p3, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1036
    const/4 v0, 0x1

    const-string v1, "UsageStatsDatabase"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const-string v2, "Unable to write interval stats to proto."

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1050
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 1052
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    goto :goto_0

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1056
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1058
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on write."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1047
    goto :goto_0

    .line 1045
    :catch_1
    move-exception v0

    .line 1046
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1040
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to write UsageStats as XML with version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    nop

    .line 1062
    :goto_0
    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 1302
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1303
    :try_start_0
    const-string v0, "usage_stats"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1305
    nop

    .line 1306
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    .line 1307
    .local v4, "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1308
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    .line 1309
    .local v6, "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1310
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    .line 1311
    .local v8, "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1312
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1315
    .local v10, "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :try_start_2
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v13, p2

    :try_start_3
    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1316
    .local v11, "in":Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1319
    .local v12, "backupDataVersion":I
    if-lt v12, v5, :cond_6

    const/4 v14, 0x4

    if-le v12, v14, :cond_0

    goto/16 :goto_5

    .line 1323
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v15, v15

    if-ge v14, v15, :cond_1

    .line 1324
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v15, v15, v14

    invoke-static {v15}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    .line 1323
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1327
    .end local v14    # "i":I
    :cond_1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1328
    .local v14, "fileCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v14, :cond_2

    .line 1329
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v1, v9, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 1331
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v9, v4}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v16

    move-object/from16 v9, v16

    .line 1332
    invoke-virtual {v1, v0, v9}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1328
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x3

    goto :goto_1

    .line 1335
    .end local v15    # "i":I
    :cond_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1336
    .end local v14    # "fileCount":I
    .local v0, "fileCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v0, :cond_3

    .line 1337
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v14

    invoke-direct {v1, v14, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    .line 1339
    .local v14, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v14, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v15

    move-object v14, v15

    .line 1340
    invoke-virtual {v1, v5, v14}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1336
    .end local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1343
    .end local v9    # "i":I
    :cond_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v0, v5

    .line 1344
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_4

    .line 1345
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v1, v9, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 1347
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v9, v8}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    move-object v9, v14

    .line 1348
    invoke-virtual {v1, v7, v9}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1344
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1351
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v0, v5

    .line 1352
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v0, :cond_5

    .line 1353
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v7

    invoke-direct {v1, v7, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 1355
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v7, v10}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    move-object v7, v9

    .line 1356
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1352
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1358
    .end local v5    # "i":I
    :cond_5
    sget-boolean v5, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "UsageStatsDatabase"

    const-string v7, "Completed Restoring UsageStats"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 1362
    .end local v0    # "fileCount":I
    :cond_6
    :goto_5
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1319
    return-void

    .line 1359
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local v12    # "backupDataVersion":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1362
    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_8

    .line 1359
    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    .line 1360
    .local v0, "ioe":Ljava/io/IOException;
    :goto_6
    :try_start_5
    const-string v5, "UsageStatsDatabase"

    const-string v7, "Failed to read data from input stream"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1362
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_7
    :goto_7
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1363
    goto :goto_9

    .line 1362
    :catchall_1
    move-exception v0

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1363
    nop

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "payload":[B
    throw v0

    .line 1303
    .end local v4    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v6    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v10    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "payload":[B
    :cond_8
    move-object/from16 v13, p2

    .line 1365
    :goto_9
    monitor-exit v2

    .line 1366
    return-void

    .line 1365
    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object/from16 v3, p1

    :goto_a
    move-object/from16 v13, p2

    :goto_b
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_b
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .locals 12
    .param p1, "checkinAction"    # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    .line 211
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 214
    .local v1, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 218
    .local v3, "fileCount":I
    const/4 v4, -0x1

    .line 219
    .local v4, "lastCheckin":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_1

    .line 220
    invoke-virtual {v1, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    move v4, v5

    .line 219
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 226
    .local v5, "start":I
    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    .line 231
    :cond_2
    move v6, v5

    .local v6, "i":I
    :goto_1
    add-int/lit8 v8, v3, -0x1

    if-ge v6, v8, :cond_4

    .line 232
    :try_start_1
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 233
    .local v8, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v1, v6}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-direct {p0, v9, v8}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 234
    invoke-interface {p1, v8}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_3

    .line 235
    :try_start_2
    monitor-exit v0

    return v2

    .line 231
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 238
    .end local v6    # "i":I
    :catch_0
    move-exception v6

    .line 239
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to check-in"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    monitor-exit v0

    return v2

    .line 241
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    nop

    .line 245
    move v2, v5

    .local v2, "i":I
    :goto_2
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_6

    .line 246
    invoke-virtual {v1, v2}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 247
    .local v6, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-c"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v8, "checkedInFile":Ljava/io/File;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 252
    const-string v9, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to mark file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as checked-in"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    monitor-exit v0

    return v7

    .line 259
    :cond_5
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 245
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v8    # "checkedInFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 261
    .end local v1    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v2    # "i":I
    .end local v3    # "fileCount":I
    .end local v4    # "lastCheckin":I
    .end local v5    # "start":I
    :cond_6
    monitor-exit v0

    .line 262
    return v7

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 9
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "compact"    # Z

    .line 1465
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1466
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1467
    const-string v1, "UsageStatsDatabase:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1469
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1470
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1471
    const-string v1, "Database Summary:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1473
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1474
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v2, v2, v1

    .line 1475
    .local v2, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 1476
    .local v3, "size":I
    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1477
    const-string v4, " stats files: "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1479
    const-string v4, ", sorted list of files:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1481
    const/4 v4, 0x0

    .local v4, "f":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 1482
    invoke-virtual {v2, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 1483
    .local v5, "fileName":J
    if-eqz p2, :cond_0

    .line 1484
    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1486
    :cond_0
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 1487
    const/4 v8, 0x1

    invoke-static {v5, v6, v8}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1486
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1489
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1481
    .end local v5    # "fileName":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1491
    .end local v4    # "f":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1473
    nop

    .end local v2    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v3    # "size":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1493
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1494
    monitor-exit v0

    .line 1495
    return-void

    .line 1494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1498
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1499
    :try_start_0
    const-string v1, "Obfuscated Packages Mappings:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget v2, v2, Lcom/android/server/usage/PackagesTokenData;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tokens Map Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1504
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1505
    .local v2, "packageToken":I
    const-string v3, ", "

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 1506
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1505
    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1507
    .local v3, "packageStrings":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    .end local v2    # "packageToken":I
    .end local v3    # "packageStrings":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1509
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1510
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1511
    monitor-exit v0

    .line 1512
    return-void

    .line 1511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method filterStats(Lcom/android/server/usage/IntervalStats;)V
    .locals 9
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;

    .line 759
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    .line 765
    .local v0, "removedPackagesMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 766
    .local v1, "removedPackagesSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 767
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 768
    .local v3, "removedPackage":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 769
    .local v4, "usageStats":Landroid/app/usage/UsageStats;
    if-eqz v4, :cond_1

    iget-wide v5, v4, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 770
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .end local v3    # "removedPackage":Ljava/lang/String;
    .end local v4    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 776
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 777
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 778
    .local v4, "timeRemoved":Ljava/lang/Long;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 779
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v2}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 775
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v4    # "timeRemoved":Ljava/lang/Long;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 782
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public findBestFitBucket(JJ)I
    .locals 10
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    .line 881
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    const/4 v1, -0x1

    .line 883
    .local v1, "bestBucket":I
    const-wide v2, 0x7fffffffffffffffL

    .line 884
    .local v2, "smallestDiff":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 885
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v5

    .line 886
    .local v5, "index":I
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 887
    .local v6, "size":I
    if-ltz v5, :cond_0

    if-ge v5, v6, :cond_0

    .line 889
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v7

    sub-long/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 890
    .local v7, "diff":J
    cmp-long v9, v7, v2

    if-gez v9, :cond_0

    .line 891
    move-wide v2, v7

    .line 892
    move v1, v4

    .line 884
    .end local v5    # "index":I
    .end local v6    # "size":I
    .end local v7    # "diff":J
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 896
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0

    return v1

    .line 897
    .end local v1    # "bestBucket":I
    .end local v2    # "smallestDiff":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method forceIndexFiles()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1234
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 1242
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    if-gt p2, v0, :cond_0

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to backup UsageStats as XML with version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v0, 0x0

    return-object v0

    .line 1246
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1247
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1248
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v4, "usage_stats"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 1250
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1254
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1256
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 1258
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v6

    .line 1259
    invoke-virtual {v7, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/AtomicFile;

    .line 1258
    invoke-direct {p0, v4, v7, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 1257
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1263
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1264
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1266
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v1

    .line 1267
    invoke-virtual {v6, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1266
    invoke-direct {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 1265
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1271
    .end local v5    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1274
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    .line 1275
    invoke-virtual {v6, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1274
    invoke-direct {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 1273
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1279
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1280
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 1282
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v0

    .line 1283
    invoke-virtual {v5, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    .line 1282
    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 1281
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1286
    .end local v1    # "i":I
    :cond_4
    sget-boolean v0, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "UsageStatsDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Written "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes of data"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    :cond_5
    goto :goto_4

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v1, "UsageStatsDatabase"

    const-string v5, "Failed to write data to output stream"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1289
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1292
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 1293
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .locals 6
    .param p1, "intervalType"    # I

    .line 732
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    if-ltz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 738
    .local v1, "fileCount":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 739
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 743
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 744
    .local v3, "f":Landroid/util/AtomicFile;
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 745
    .local v4, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    :try_start_2
    monitor-exit v0

    return-object v4

    .line 747
    .end local v3    # "f":Landroid/util/AtomicFile;
    .end local v4    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v3

    .line 748
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to read usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    nop

    .end local v1    # "fileCount":I
    .end local v3    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 751
    return-object v2

    .line 734
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "intervalType":I
    throw v1

    .line 750
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "intervalType":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public init(J)V
    .locals 9
    .param p1, "currentTimeMillis"    # J

    .line 164
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 166
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 167
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .restart local v5    # "f":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "currentTimeMillis":J
    throw v1

    .line 173
    .end local v5    # "f":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "currentTimeMillis":J
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 174
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 177
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 178
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v5

    .line 179
    .local v5, "startIndex":I
    if-gez v5, :cond_2

    .line 180
    goto :goto_4

    .line 183
    :cond_2
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 184
    .local v6, "fileCount":I
    move v7, v5

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_3

    .line 185
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 190
    .end local v7    # "i":I
    :cond_3
    move v7, v5

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v6, :cond_4

    .line 191
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 190
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 177
    .end local v4    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5    # "startIndex":I
    .end local v6    # "fileCount":I
    .end local v7    # "i":I
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    :cond_5
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isFirstUpdate()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    return v0
.end method

.method isNewUpdate()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return v0
.end method

.method obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V
    .locals 3
    .param p1, "currentStats"    # [Lcom/android/server/usage/IntervalStats;

    .line 1200
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1201
    return-void

    .line 1203
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1204
    aget-object v1, p1, v0

    .line 1205
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 1203
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method onPackageRemoved(Ljava/lang/String;J)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeRemoved"    # J

    .line 565
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    .local v1, "tokenRemoved":I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    goto :goto_0

    .line 569
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "UsageStatsDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to update package mappings on disk after removing token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    return v1

    .line 574
    .end local v1    # "tokenRemoved":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onTimeChanged(J)V
    .locals 19
    .param p1, "timeDiffMillis"    # J

    .line 682
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 683
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 684
    .local v5, "logBuilder":Ljava/lang/StringBuilder;
    const-string v0, "Time changed by "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 686
    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "filesDeleted":I
    const/4 v6, 0x0

    .line 691
    .local v6, "filesMoved":I
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 692
    .local v10, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v10}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v11

    .line 693
    .local v11, "fileCount":I
    const/4 v12, 0x0

    move v13, v12

    move v12, v6

    move v6, v0

    .end local v0    # "filesDeleted":I
    .local v6, "filesDeleted":I
    .local v12, "filesMoved":I
    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_2

    .line 694
    invoke-virtual {v10, v13}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move-object v14, v0

    .line 695
    .local v14, "file":Landroid/util/AtomicFile;
    invoke-virtual {v10, v13}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v15

    add-long/2addr v15, v2

    .line 696
    .local v15, "newTime":J
    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-gez v0, :cond_0

    .line 697
    add-int/lit8 v6, v6, 0x1

    .line 698
    invoke-virtual {v14}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 701
    :cond_0
    :try_start_1
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    goto :goto_2

    .line 702
    :catch_0
    move-exception v0

    .line 706
    :goto_2
    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "newName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 711
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 712
    .local v1, "newFile":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    .line 713
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 693
    .end local v0    # "newName":Ljava/lang/String;
    .end local v1    # "newFile":Ljava/io/File;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v15    # "newTime":J
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    goto :goto_1

    .line 716
    .end local v13    # "i":I
    :cond_2
    invoke-virtual {v10}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 691
    .end local v10    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v11    # "fileCount":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move v0, v6

    move v6, v12

    goto :goto_0

    .line 719
    .end local v12    # "filesMoved":I
    .local v0, "filesDeleted":I
    .local v6, "filesMoved":I
    :cond_3
    const-string v1, " files deleted: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    const-string v1, " files moved: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 721
    const-string v1, "UsageStatsDatabase"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 725
    .end local v0    # "filesDeleted":I
    .end local v5    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "filesMoved":I
    monitor-exit v4

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public prune(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    .line 904
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 905
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 906
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 907
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 908
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 907
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 910
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 911
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 912
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 913
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 912
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 915
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 916
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 917
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 918
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 917
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 920
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 921
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 922
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 923
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 922
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 925
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 926
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    sget v2, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 927
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 934
    monitor-exit v0

    .line 935
    return-void

    .line 934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 625
    .local p1, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 630
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 631
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 632
    goto :goto_3

    .line 634
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v4, :cond_3

    .line 636
    :try_start_1
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 637
    .local v4, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v5, Landroid/util/AtomicFile;

    aget-object v6, v2, v3

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 638
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    .line 639
    invoke-direct {p0, p1, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 640
    goto :goto_2

    .line 642
    :cond_2
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    .end local v4    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_2

    .line 643
    :catch_0
    move-exception v4

    .line 644
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "UsageStatsDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to prune data from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 629
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "j":I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v1    # "i":I
    :cond_4
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method pruneUninstalledPackagesData()Z
    .locals 9

    .line 582
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 584
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 585
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 586
    goto :goto_3

    .line 588
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v4, v5, :cond_2

    .line 590
    :try_start_1
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 591
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v2, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 592
    .local v6, "atomicFile":Landroid/util/AtomicFile;
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 593
    goto :goto_2

    .line 599
    :cond_1
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    .end local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v6    # "atomicFile":Landroid/util/AtomicFile;
    nop

    .line 588
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 600
    :catch_0
    move-exception v5

    .line 601
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "UsageStatsDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to prune data from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    .line 583
    .end local v2    # "files":[Ljava/io/File;
    .end local v4    # "j":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v1    # "i":I
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    nop

    .line 613
    :try_start_4
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 609
    :catch_1
    move-exception v1

    .line 610
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsDatabase"

    const-string v4, "Failed to write package mappings after pruning data."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    monitor-exit v0

    return v3

    .line 614
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .locals 7
    .param p1, "intervalType"    # I
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    if-nez p2, :cond_0

    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1215
    if-ltz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 1219
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 1220
    .local v1, "f":Landroid/util/AtomicFile;
    if-nez v1, :cond_1

    .line 1221
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v4, v4, p1

    iget-wide v5, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1222
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 1223
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v2, v2, p1

    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 1226
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 1227
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 1228
    .end local v1    # "f":Landroid/util/AtomicFile;
    monitor-exit v0

    .line 1229
    return-void

    .line 1216
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "intervalType":I
    .end local p2    # "stats":Lcom/android/server/usage/IntervalStats;
    throw v1

    .line 1228
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "intervalType":I
    .restart local p2    # "stats":Lcom/android/server/usage/IntervalStats;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .locals 16
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 809
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 810
    if-ltz v2, :cond_b

    :try_start_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge v2, v0, :cond_b

    .line 814
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, v2

    move-object v8, v0

    .line 816
    .local v8, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v0, v5, v3

    const/4 v9, 0x0

    if-gtz v0, :cond_1

    .line 817
    sget-boolean v0, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 818
    const-string v0, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "endTime("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") <= beginTime("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    monitor-exit v7

    return-object v9

    .line 823
    :cond_1
    invoke-virtual {v8, v3, v4}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 824
    .local v0, "startIndex":I
    if-gez v0, :cond_2

    .line 827
    const/4 v0, 0x0

    move v10, v0

    goto :goto_0

    .line 824
    :cond_2
    move v10, v0

    .line 830
    .end local v0    # "startIndex":I
    .local v10, "startIndex":I
    :goto_0
    invoke-virtual {v8, v5, v6}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 831
    .local v0, "endIndex":I
    if-gez v0, :cond_4

    .line 833
    sget-boolean v11, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 834
    const-string v11, "UsageStatsDatabase"

    const-string v12, "No results for this range. All stats start after."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_3
    monitor-exit v7

    return-object v9

    .line 839
    :cond_4
    invoke-virtual {v8, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-nez v11, :cond_7

    .line 841
    add-int/lit8 v0, v0, -0x1

    .line 842
    if-gez v0, :cond_6

    .line 844
    sget-boolean v11, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v11, :cond_5

    .line 845
    const-string v11, "UsageStatsDatabase"

    const-string v12, "No results for this range. All stats start after."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_5
    monitor-exit v7

    return-object v9

    .line 842
    :cond_6
    move v9, v0

    goto :goto_1

    .line 839
    :cond_7
    move v9, v0

    .line 851
    .end local v0    # "endIndex":I
    .local v9, "endIndex":I
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 852
    .local v11, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v0, v10

    move v12, v0

    .local v12, "i":I
    :goto_2
    if-gt v12, v9, :cond_a

    .line 853
    invoke-virtual {v8, v12}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move-object v13, v0

    .line 854
    .local v13, "f":Landroid/util/AtomicFile;
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    move-object v14, v0

    .line 856
    .local v14, "stats":Lcom/android/server/usage/IntervalStats;
    sget-boolean v0, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 857
    const-string v0, "UsageStatsDatabase"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading stat file "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    :cond_8
    :try_start_1
    invoke-direct {v1, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 862
    iget-wide v5, v14, Lcom/android/server/usage/IntervalStats;->endTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, v5

    if-gez v0, :cond_9

    .line 863
    const/4 v0, 0x0

    move-object/from16 v5, p6

    :try_start_2
    invoke-interface {v5, v14, v0, v11}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 865
    :catch_0
    move-exception v0

    goto :goto_4

    .line 862
    :cond_9
    move-object/from16 v5, p6

    .line 869
    :goto_3
    goto :goto_5

    .line 865
    :catch_1
    move-exception v0

    move-object/from16 v5, p6

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v6, "UsageStatsDatabase"

    const-string v15, "Failed to read usage stats file"

    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "f":Landroid/util/AtomicFile;
    .end local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v5, p4

    goto :goto_2

    :cond_a
    move-object/from16 v5, p6

    .line 871
    .end local v12    # "i":I
    monitor-exit v7

    return-object v11

    .line 872
    .end local v8    # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v9    # "endIndex":I
    .end local v10    # "startIndex":I
    .end local v11    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v5, p6

    goto :goto_6

    .line 810
    :cond_b
    move-object/from16 v5, p6

    .line 811
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad interval type "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "intervalType":I
    .end local p2    # "beginTime":J
    .end local p4    # "endTime":J
    .end local p6    # "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    throw v0

    .line 872
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "intervalType":I
    .restart local p2    # "beginTime":J
    .restart local p4    # "endTime":J
    .restart local p6    # "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    :catchall_1
    move-exception v0

    :goto_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;
    .locals 4
    .param p1, "interval"    # I
    .param p2, "fileName"    # J

    .line 1515
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_0
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p1

    invoke-virtual {v3, p2, p3, v2}, Landroid/app/usage/TimeSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    invoke-direct {p0, v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1519
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 1520
    :catch_0
    move-exception v3

    .line 1521
    .local v3, "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v2

    .line 1523
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public readMappingsLocked()V
    .locals 11

    .line 1157
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    return-void

    .line 1161
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v0, v1}, Lcom/android/server/usage/UsageStatsProtoV2;->readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1166
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_1
    nop

    .line 1168
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 1170
    .local v0, "tokensToPackagesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1171
    .local v1, "tokensToPackagesMapSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1172
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1173
    .local v3, "packageToken":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1174
    .local v4, "tokensMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1175
    .local v5, "packageStringsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1177
    .local v6, "tokensMapSize":I
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 1179
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1181
    .end local v8    # "j":I
    :cond_2
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v8, v8, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    .end local v3    # "packageToken":I
    .end local v4    # "tokensMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "packageStringsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "tokensMapSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1183
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 1161
    .end local v1    # "tokensToPackagesMapSize":I
    .local v0, "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :cond_4
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1163
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UsageStatsDatabase"

    const-string v2, "Failed to read the obfuscated packages mapping file."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    return-void
.end method

.method wasUpgradePerformed()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    return v0
.end method

.method writeMappingsLocked()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1186
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1187
    .local v0, "file":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1189
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, v2}, Lcom/android/server/usage/UsageStatsProtoV2;->writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V

    .line 1190
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    const/4 v1, 0x0

    .line 1195
    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1196
    goto :goto_1

    .line 1195
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1192
    :catch_0
    move-exception v2

    .line 1193
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Unable to write obfuscated data to proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1197
    :goto_1
    return-void

    .line 1195
    :goto_2
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1196
    throw v2
.end method
