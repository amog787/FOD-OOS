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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final DEBUG:Z

.field private static final DEFAULT_CURRENT_VERSION:I = 0x4

.field static final KEEP_BACKUP_DIR:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field static final MAX_FILES_PER_INTERVAL_TYPE:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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

.field final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 336
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    .line 99
    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    .line 103
    nop

    .line 104
    const-string/jumbo v0, "ro.usagestats.chooser.retention"

    const/16 v1, 0xe

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    .line 103
    return-void

    nop

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

    .line 145
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "version"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "daily"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "weekly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "monthly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "yearly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 136
    iput p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 137
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 138
    new-instance v0, Ljava/io/File;

    const-string v1, "backups"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 139
    new-instance v0, Ljava/io/File;

    const-string v1, "breadcrumb"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 140
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 141
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 142
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .locals 9

    .line 324
    const-string v0, "\n"

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "currentFingerprint":Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 327
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 329
    .local v4, "version":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "buildFingerprint":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 331
    iput-boolean v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 333
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    iput-boolean v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    .end local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 327
    .end local v4    # "version":I
    .end local v5    # "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    throw v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_0
    move-exception v3

    .line 337
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 340
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "version":I
    :goto_0
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const-string v5, "UsageStatsDatabase"

    if-eq v4, v3, :cond_3

    .line 341
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

    .line 342
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    :try_start_5
    invoke-direct {p0, v4}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 352
    goto :goto_1

    .line 345
    :catch_1
    move-exception v0

    .line 346
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

    .line 350
    iput v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 351
    return-void

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v3, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 361
    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 363
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 364
    .local v6, "token":J
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 374
    .local v8, "previousVersion":I
    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->continueUpgradeLocked(IJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 375
    :try_start_8
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 377
    .end local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 361
    .end local v6    # "token":J
    .end local v8    # "previousVersion":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "version":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 375
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "version":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catchall_3
    move-exception v7

    :try_start_a
    invoke-static {v6, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v4    # "version":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    throw v7
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v4    # "version":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_2
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "Failed read version upgrade breadcrumb"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-ne v4, v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v3, :cond_6

    .line 382
    :cond_5
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 383
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_c
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 388
    :try_start_d
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 391
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    nop

    .line 394
    :cond_6
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 396
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 399
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 400
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 402
    :cond_8
    return-void

    .line 382
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_4
    move-exception v0

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .end local v4    # "version":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 388
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "version":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catchall_5
    move-exception v2

    :try_start_f
    invoke-static {v0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v4    # "version":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    throw v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v4    # "version":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_3
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to write new version"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private continueUpgradeLocked(IJ)V
    .locals 12
    .param p1, "version"    # I
    .param p2, "token"    # J

    .line 492
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    .local v0, "backupDir":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 497
    new-instance v3, Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 498
    .local v2, "backedUpInterval":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 499
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 500
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 501
    sget-boolean v5, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    const-string v6, "UsageStatsDatabase"

    if-eqz v5, :cond_0

    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgrading "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    .line 503
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to version ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 504
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") for interval "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 502
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    :try_start_0
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 509
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v7, Landroid/util/AtomicFile;

    aget-object v8, v3, v4

    invoke-direct {v7, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v7, v5, p1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 510
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v9, v9, v1

    iget-wide v10, v5, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 511
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 510
    invoke-static {v7, v5, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    goto :goto_2

    .line 512
    :catch_0
    move-exception v5

    .line 514
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to upgrade backup file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 496
    .end local v2    # "backedUpInterval":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .locals 5
    .param p0, "directory"    # Ljava/io/File;

    .line 1149
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1150
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 1151
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1152
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1153
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1155
    :cond_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1151
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1159
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1160
    return-void
.end method

.method private static deleteDirectoryContents(Ljava/io/File;)V
    .locals 4
    .param p0, "directory"    # Ljava/io/File;

    .line 1142
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1143
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1144
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1143
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1146
    :cond_0
    return-void
.end method

.method private deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;
    .locals 6
    .param p1, "data"    # [B
    .param p2, "version"    # I

    .line 1128
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1129
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1130
    .local v1, "in":Ljava/io/DataInputStream;
    new-instance v2, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v2}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1132
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1133
    invoke-static {v1, v2, p2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    goto :goto_0

    .line 1134
    :catch_0
    move-exception v3

    .line 1135
    .local v3, "ioe":Ljava/io/IOException;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "DeSerializing IntervalStats Failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    const/4 v2, 0x0

    .line 1138
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_0
    return-object v2
.end method

.method private doUpgradeLocked(I)V
    .locals 18
    .param p1, "thisVersion"    # I

    .line 411
    move-object/from16 v1, p0

    const-string v0, "\n"

    const/4 v2, 0x0

    const-string v3, "UsageStatsDatabase"

    const/4 v4, 0x2

    move/from16 v5, p1

    if-ge v5, v4, :cond_2

    .line 414
    const-string v0, "Deleting all usage stats files"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 416
    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 417
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 418
    array-length v4, v3

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 419
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 418
    .end local v7    # "f":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 415
    .end local v3    # "files":[Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto/16 :goto_5

    .line 425
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 426
    .local v6, "token":J
    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    .local v4, "backupDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 428
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 433
    :try_start_0
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 434
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/nio/file/CopyOption;

    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v12, v11, v2

    .line 433
    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 439
    nop

    .line 441
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v11, v9

    if-ge v8, v11, :cond_7

    .line 442
    new-instance v11, Ljava/io/File;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v11

    .line 443
    .local v9, "backupIntervalDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 445
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 450
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 451
    .local v11, "files":[Ljava/io/File;
    if-eqz v11, :cond_5

    .line 452
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_4

    .line 453
    new-instance v13, Ljava/io/File;

    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 454
    .local v13, "backupFile":Ljava/io/File;
    sget-boolean v14, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v14, :cond_3

    .line 455
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

    .line 456
    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " stat files for interval "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 455
    invoke-static {v3, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
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

    .line 468
    nop

    .line 452
    .end local v13    # "backupFile":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto :goto_3

    .line 465
    .restart local v13    # "backupFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 466
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

    .line 467
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 452
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "backupFile":Ljava/io/File;
    :cond_4
    move/from16 v16, v2

    goto :goto_4

    .line 451
    .end local v12    # "j":I
    :cond_5
    move/from16 v16, v2

    .line 441
    .end local v9    # "backupIntervalDir":Ljava/io/File;
    .end local v11    # "files":[Ljava/io/File;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    goto/16 :goto_2

    .line 446
    .restart local v9    # "backupIntervalDir":Ljava/io/File;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create interval backup directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    .end local v8    # "i":I
    .end local v9    # "backupIntervalDir":Ljava/io/File;
    :cond_7
    const/4 v2, 0x0

    .line 476
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v8

    .line 477
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 479
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 487
    nop

    .line 489
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .end local v4    # "backupDir":Ljava/io/File;
    .end local v6    # "token":J
    :goto_5
    return-void

    .line 486
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "backupDir":Ljava/io/File;
    .restart local v6    # "token":J
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 482
    :catch_1
    move-exception v0

    .line 483
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "Failed to write new version upgrade breadcrumb"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
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

    .line 486
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "backupDir":Ljava/io/File;
    .restart local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "thisVersion":I
    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 436
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v0

    .line 437
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

    .line 438
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create backup directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
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

    .line 405
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

    .line 1101
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1102
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1103
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 1104
    return-object v1
.end method

.method private indexFilesLocked()V
    .locals 12

    .line 265
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 272
    .local v0, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 273
    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 274
    new-instance v3, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v3}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v3, v2, v1

    goto :goto_1

    .line 276
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 278
    :goto_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 279
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_4

    .line 280
    sget-boolean v3, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    const-string v4, " stat files for interval "

    const-string v5, "UsageStatsDatabase"

    if-eqz v3, :cond_1

    .line 281
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

    .line 283
    :cond_1
    array-length v3, v2

    .line 284
    .local v3, "len":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_2

    .line 285
    aget-object v7, v2, v6

    .line 286
    .local v7, "f":Ljava/io/File;
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 288
    .local v8, "af":Landroid/util/AtomicFile;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v1

    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v8}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_3

    .line 289
    :catch_0
    move-exception v9

    .line 290
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to index file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "af":Landroid/util/AtomicFile;
    .end local v9    # "e":Ljava/io/IOException;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 295
    .end local v6    # "j":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    sget-object v7, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    .line 296
    .local v6, "toDelete":I
    if-lez v6, :cond_4

    .line 297
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, v6, :cond_3

    .line 298
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 299
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, v9}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 297
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 301
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

    .line 272
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "len":I
    .end local v6    # "toDelete":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 305
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .locals 2
    .param p1, "beingRestored"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "onDevice"    # Lcom/android/server/usage/IntervalStats;

    .line 1075
    if-nez p2, :cond_0

    return-object p1

    .line 1076
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1077
    :cond_1
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1078
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1079
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 1080
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v1}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    .line 1081
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

    .line 805
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

    .line 809
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 814
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 812
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .restart local v2    # "c":C
    :cond_1
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 822
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 823
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .locals 12
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "expiryTime"    # J

    .line 772
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 773
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 774
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 777
    .local v3, "f":Ljava/io/File;
    :try_start_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .local v4, "beginTime":J
    goto :goto_1

    .line 778
    .end local v4    # "beginTime":J
    :catch_0
    move-exception v4

    .line 779
    .local v4, "e":Ljava/io/IOException;
    const-wide/16 v4, 0x0

    .line 782
    .local v4, "beginTime":J
    :goto_1
    cmp-long v6, v4, p2

    if-gez v6, :cond_2

    .line 784
    :try_start_1
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 785
    .local v6, "af":Landroid/util/AtomicFile;
    new-instance v7, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v7}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 786
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 787
    iget-object v8, v7, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 788
    .local v8, "pkgCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_1

    .line 789
    iget-object v10, v7, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 790
    .local v10, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v11, :cond_0

    .line 791
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 788
    .end local v10    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 794
    .end local v9    # "i":I
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 797
    .end local v6    # "af":Landroid/util/AtomicFile;
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "pkgCount":I
    goto :goto_3

    .line 795
    :catch_1
    move-exception v6

    .line 796
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to delete chooser counts from usage stats file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "beginTime":J
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 801
    :cond_3
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .line 754
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 755
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 756
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 759
    .local v3, "f":Ljava/io/File;
    :try_start_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .local v4, "beginTime":J
    goto :goto_1

    .line 760
    .end local v4    # "beginTime":J
    :catch_0
    move-exception v4

    .line 761
    .local v4, "e":Ljava/io/IOException;
    const-wide/16 v4, 0x0

    .line 764
    .local v4, "beginTime":J
    :goto_1
    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    .line 765
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V

    .line 756
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "beginTime":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 769
    :cond_1
    return-void
.end method

.method private readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 1
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 869
    return-void
.end method

.method private static readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    .locals 3
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 874
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 876
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 877
    invoke-static {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 878
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 884
    goto :goto_0

    .line 882
    :catch_0
    move-exception v1

    .line 885
    nop

    .line 889
    .end local v0    # "in":Ljava/io/FileInputStream;
    :goto_0
    nop

    .line 890
    return-void

    .line 880
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    .line 881
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 884
    goto :goto_1

    .line 882
    :catch_1
    move-exception v2

    .line 884
    :goto_1
    nop

    .end local p0    # "file":Landroid/util/AtomicFile;
    .end local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    .end local p2    # "version":I
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 886
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Landroid/util/AtomicFile;
    .restart local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    .restart local p2    # "version":I
    :catch_2
    move-exception v0

    .line 887
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 888
    throw v0
.end method

.method private readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 894
    return-void
.end method

.method private static readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 905
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 906
    goto :goto_0

    .line 908
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on read."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 903
    nop

    .line 913
    :goto_0
    return-void
.end method

.method private static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .locals 1
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    .line 1108
    if-nez p0, :cond_0

    return-void

    .line 1109
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1110
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1111
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 1112
    return-void
.end method

.method private serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B
    .locals 5
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I

    .line 1115
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1116
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1118
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1119
    invoke-static {v1, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    goto :goto_0

    .line 1120
    :catch_0
    move-exception v2

    .line 1121
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Serializing IntervalStats Failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1124
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

    .line 1086
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1088
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    nop

    .line 1094
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    .line 1095
    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B

    move-result-object v1

    .line 1096
    .local v1, "data":[B
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1097
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1098
    return-void

    .line 1089
    .end local v1    # "data":[B
    :catch_0
    move-exception v1

    .line 1090
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsDatabase"

    const-string v3, "Failed to read usage stats file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1092
    return-void
.end method

.method private writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 1
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 830
    return-void
.end method

.method private static writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    .locals 2
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 836
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 837
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 842
    nop

    .line 843
    return-void

    .line 841
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v1
.end method

.method private writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V

    .line 847
    return-void
.end method

.method private static writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;I)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 858
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 859
    goto :goto_0

    .line 861
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on write."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 856
    nop

    .line 865
    :goto_0
    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1004
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1005
    :try_start_0
    const-string/jumbo v0, "usage_stats"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1007
    nop

    .line 1008
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    .line 1009
    .local v4, "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1010
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    .line 1011
    .local v6, "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1012
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    .line 1013
    .local v8, "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1014
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1017
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

    .line 1018
    .local v11, "in":Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1021
    .local v12, "backupDataVersion":I
    if-lt v12, v5, :cond_7

    const/4 v14, 0x4

    if-le v12, v14, :cond_0

    goto/16 :goto_5

    .line 1025
    :cond_0
    move v14, v0

    .local v14, "i":I
    :goto_0
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v15, v15

    if-ge v14, v15, :cond_1

    .line 1026
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v15, v15, v14

    invoke-static {v15}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    .line 1025
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1029
    .end local v14    # "i":I
    :cond_1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1030
    .local v14, "fileCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v14, :cond_2

    .line 1031
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v1, v9, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 1033
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v9, v4}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v16

    move-object/from16 v9, v16

    .line 1034
    invoke-virtual {v1, v0, v9}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1030
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x3

    goto :goto_1

    .line 1037
    .end local v15    # "i":I
    :cond_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1038
    .end local v14    # "fileCount":I
    .local v0, "fileCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v0, :cond_3

    .line 1039
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v14

    invoke-direct {v1, v14, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    .line 1041
    .local v14, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v14, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v15

    move-object v14, v15

    .line 1042
    invoke-virtual {v1, v5, v14}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1038
    .end local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1045
    .end local v9    # "i":I
    :cond_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v0, v5

    .line 1046
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_4

    .line 1047
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v1, v9, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 1049
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v9, v8}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    move-object v9, v14

    .line 1050
    invoke-virtual {v1, v7, v9}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1046
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1053
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v0, v5

    .line 1054
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v0, :cond_5

    .line 1055
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v7

    invoke-direct {v1, v7, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 1057
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v7, v10}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    move-object v7, v9

    .line 1058
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1054
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1060
    .end local v5    # "i":I
    :cond_5
    sget-boolean v5, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "UsageStatsDatabase"

    const-string v7, "Completed Restoring UsageStats"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1064
    .end local v0    # "fileCount":I
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local v12    # "backupDataVersion":I
    :cond_6
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    goto :goto_7

    .restart local v11    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "backupDataVersion":I
    :cond_7
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1021
    return-void

    .line 1061
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local v12    # "backupDataVersion":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1064
    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_8

    .line 1061
    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    .line 1062
    .local v0, "ioe":Ljava/io/IOException;
    :goto_6
    :try_start_5
    const-string v5, "UsageStatsDatabase"

    const-string v7, "Failed to read data from input stream"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1064
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1065
    :goto_7
    goto :goto_9

    .line 1064
    :catchall_1
    move-exception v0

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "payload":[B
    throw v0

    .line 1005
    .end local v4    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v6    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v10    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "payload":[B
    :cond_8
    move-object/from16 v13, p2

    .line 1067
    :goto_9
    monitor-exit v2

    .line 1068
    return-void

    .line 1067
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

    .line 199
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 202
    .local v1, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 206
    .local v3, "fileCount":I
    const/4 v4, -0x1

    .line 207
    .local v4, "lastCheckin":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_1

    .line 208
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

    .line 209
    move v4, v5

    .line 207
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 214
    .local v5, "start":I
    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    .line 219
    :cond_2
    :try_start_1
    new-instance v6, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v6}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 220
    .local v6, "stats":Lcom/android/server/usage/IntervalStats;
    move v8, v5

    .local v8, "i":I
    :goto_1
    add-int/lit8 v9, v3, -0x1

    if-ge v8, v9, :cond_4

    .line 221
    invoke-virtual {v1, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-direct {p0, v9, v6}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 222
    invoke-interface {p1, v6}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_3

    .line 223
    :try_start_2
    monitor-exit v0

    return v2

    .line 220
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 232
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "i":I
    :cond_4
    nop

    .line 236
    move v2, v5

    .local v2, "i":I
    :goto_2
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_6

    .line 237
    invoke-virtual {v1, v2}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 238
    .local v6, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
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

    .line 240
    .local v8, "checkedInFile":Ljava/io/File;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 243
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

    .line 245
    monitor-exit v0

    return v7

    .line 250
    :cond_5
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 236
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v8    # "checkedInFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 252
    .end local v1    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v2    # "i":I
    .end local v3    # "fileCount":I
    .end local v4    # "lastCheckin":I
    .end local v5    # "start":I
    :cond_6
    monitor-exit v0

    .line 253
    return v7

    .line 228
    .restart local v1    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v3    # "fileCount":I
    .restart local v4    # "lastCheckin":I
    .restart local v5    # "start":I
    :catch_0
    move-exception v6

    .line 230
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to check-in"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    monitor-exit v0

    return v2

    .line 252
    .end local v1    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v3    # "fileCount":I
    .end local v4    # "lastCheckin":I
    .end local v5    # "start":I
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "compact"    # Z

    .line 1167
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_0
    const-string v1, "UsageStatsDatabase:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1170
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1171
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, v2

    .line 1172
    .local v3, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    .line 1173
    .local v4, "size":I
    invoke-static {v2}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    const-string v5, " stats files: "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1176
    const-string v5, ", sorted list of files:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1178
    const/4 v5, 0x0

    .local v5, "f":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 1179
    invoke-virtual {v3, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1180
    .local v6, "fileName":J
    if-eqz p2, :cond_0

    .line 1181
    invoke-static {v6, v7, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1183
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 1184
    const/4 v9, 0x1

    invoke-static {v6, v7, v9}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 1183
    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1186
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1178
    .end local v6    # "fileName":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1188
    .end local v5    # "f":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1170
    nop

    .end local v3    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v4    # "size":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1190
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1191
    monitor-exit v0

    .line 1192
    return-void

    .line 1191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findBestFitBucket(JJ)I
    .locals 10
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    .line 697
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    const/4 v1, -0x1

    .line 699
    .local v1, "bestBucket":I
    const-wide v2, 0x7fffffffffffffffL

    .line 700
    .local v2, "smallestDiff":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 701
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v5

    .line 702
    .local v5, "index":I
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 703
    .local v6, "size":I
    if-ltz v5, :cond_0

    if-ge v5, v6, :cond_0

    .line 705
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v7

    sub-long/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 706
    .local v7, "diff":J
    cmp-long v9, v7, v2

    if-gez v9, :cond_0

    .line 707
    move-wide v2, v7

    .line 708
    move v1, v4

    .line 700
    .end local v5    # "index":I
    .end local v6    # "size":I
    .end local v7    # "diff":J
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 712
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0

    return v1

    .line 713
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 261
    monitor-exit v0

    .line 262
    return-void

    .line 261
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

    .line 940
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 949
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 950
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v2, "usage_stats"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 952
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 956
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 958
    move v3, v4

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 960
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    .line 961
    invoke-virtual {v5, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    .line 960
    invoke-direct {p0, v2, v5, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 959
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 965
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 966
    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 968
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    .line 969
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 968
    invoke-direct {p0, v2, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 967
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 973
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 974
    move v3, v4

    .restart local v3    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 976
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    .line 977
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 976
    invoke-direct {p0, v2, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 975
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 981
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 982
    move v3, v4

    .restart local v3    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 984
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v5

    .line 985
    invoke-virtual {v4, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;

    .line 984
    invoke-direct {p0, v2, v4, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 983
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 988
    .end local v3    # "i":I
    :cond_3
    sget-boolean v3, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "UsageStatsDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Written "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes of data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    :cond_4
    goto :goto_4

    .line 989
    :catch_0
    move-exception v3

    .line 990
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to write data to output stream"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 994
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_5
    :goto_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 995
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .locals 6
    .param p1, "intervalType"    # I

    .line 572
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    if-ltz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 578
    .local v1, "fileCount":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 583
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 584
    .local v3, "f":Landroid/util/AtomicFile;
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 585
    .local v4, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    :try_start_2
    monitor-exit v0

    return-object v4

    .line 589
    .end local v3    # "f":Landroid/util/AtomicFile;
    .end local v4    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v3

    .line 590
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to read usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    nop

    .end local v1    # "fileCount":I
    .end local v3    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 594
    return-object v2

    .line 574
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

    .line 593
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

    .line 152
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 154
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .restart local v5    # "f":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "currentTimeMillis":J
    throw v1

    .line 161
    .end local v5    # "f":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "currentTimeMillis":J
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 165
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 166
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v5

    .line 167
    .local v5, "startIndex":I
    if-gez v5, :cond_2

    .line 168
    goto :goto_4

    .line 171
    :cond_2
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 172
    .local v6, "fileCount":I
    move v7, v5

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_3

    .line 173
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 172
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 178
    .end local v7    # "i":I
    :cond_3
    move v7, v5

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v6, :cond_4

    .line 179
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 165
    .end local v4    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5    # "startIndex":I
    .end local v6    # "fileCount":I
    .end local v7    # "i":I
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    :cond_5
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isFirstUpdate()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    return v0
.end method

.method isNewUpdate()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return v0
.end method

.method public onTimeChanged(J)V
    .locals 19
    .param p1, "timeDiffMillis"    # J

    .line 522
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 523
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 524
    .local v5, "logBuilder":Ljava/lang/StringBuilder;
    const-string v0, "Time changed by "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 526
    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "filesDeleted":I
    const/4 v6, 0x0

    .line 531
    .local v6, "filesMoved":I
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 532
    .local v10, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v10}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v11

    .line 533
    .local v11, "fileCount":I
    const/4 v12, 0x0

    move v13, v6

    move v6, v0

    .end local v0    # "filesDeleted":I
    .local v6, "filesDeleted":I
    .local v12, "i":I
    .local v13, "filesMoved":I
    :goto_1
    if-ge v12, v11, :cond_2

    .line 534
    invoke-virtual {v10, v12}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move-object v14, v0

    .line 535
    .local v14, "file":Landroid/util/AtomicFile;
    invoke-virtual {v10, v12}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v15

    add-long/2addr v15, v2

    .line 536
    .local v15, "newTime":J
    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-gez v0, :cond_0

    .line 537
    add-int/lit8 v6, v6, 0x1

    .line 538
    invoke-virtual {v14}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 541
    :cond_0
    :try_start_1
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    goto :goto_2

    .line 542
    :catch_0
    move-exception v0

    .line 546
    :goto_2
    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "newName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 551
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 552
    .local v1, "newFile":Ljava/io/File;
    add-int/lit8 v13, v13, 0x1

    .line 553
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 533
    .end local v0    # "newName":Ljava/lang/String;
    .end local v1    # "newFile":Ljava/io/File;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v15    # "newTime":J
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    goto :goto_1

    .line 556
    .end local v12    # "i":I
    :cond_2
    invoke-virtual {v10}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 531
    .end local v10    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v11    # "fileCount":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move v0, v6

    move v6, v13

    goto :goto_0

    .line 559
    .end local v13    # "filesMoved":I
    .local v0, "filesDeleted":I
    .local v6, "filesMoved":I
    :cond_3
    const-string v1, " files deleted: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    const-string v1, " files moved: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, "UsageStatsDatabase"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 565
    .end local v0    # "filesDeleted":I
    .end local v5    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "filesMoved":I
    monitor-exit v4

    .line 566
    return-void

    .line 565
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

    .line 720
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 722
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 723
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 724
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 723
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 726
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 727
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 728
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 729
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 728
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 731
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 732
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 733
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 734
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 733
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 736
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 737
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 738
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 739
    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 738
    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 741
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 742
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    sget v3, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int v3, v3

    invoke-virtual {v1, v3}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 743
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 750
    monitor-exit v0

    .line 751
    return-void

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    .line 919
    if-nez p2, :cond_0

    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    if-ltz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 925
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 926
    .local v1, "f":Landroid/util/AtomicFile;
    if-nez v1, :cond_1

    .line 927
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v4, v4, p1

    iget-wide v5, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 928
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 929
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v2, v2, p1

    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 932
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 933
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 934
    .end local v1    # "f":Landroid/util/AtomicFile;
    monitor-exit v0

    .line 935
    return-void

    .line 922
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

    .line 934
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

    .line 622
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 623
    if-ltz v2, :cond_b

    :try_start_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge v2, v0, :cond_b

    .line 627
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, v2

    move-object v8, v0

    .line 629
    .local v8, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v0, v5, v3

    const/4 v9, 0x0

    if-gtz v0, :cond_1

    .line 630
    sget-boolean v0, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 631
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

    .line 633
    :cond_0
    monitor-exit v7

    return-object v9

    .line 636
    :cond_1
    invoke-virtual {v8, v3, v4}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 637
    .local v0, "startIndex":I
    if-gez v0, :cond_2

    .line 640
    const/4 v0, 0x0

    move v10, v0

    goto :goto_0

    .line 637
    :cond_2
    move v10, v0

    .line 643
    .end local v0    # "startIndex":I
    .local v10, "startIndex":I
    :goto_0
    invoke-virtual {v8, v5, v6}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 644
    .local v0, "endIndex":I
    if-gez v0, :cond_4

    .line 646
    sget-boolean v11, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 647
    const-string v11, "UsageStatsDatabase"

    const-string v12, "No results for this range. All stats start after."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_3
    monitor-exit v7

    return-object v9

    .line 652
    :cond_4
    invoke-virtual {v8, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-nez v11, :cond_7

    .line 654
    add-int/lit8 v0, v0, -0x1

    .line 655
    if-gez v0, :cond_6

    .line 657
    sget-boolean v11, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v11, :cond_5

    .line 658
    const-string v11, "UsageStatsDatabase"

    const-string v12, "No results for this range. All stats start after."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_5
    monitor-exit v7

    return-object v9

    .line 655
    :cond_6
    move v9, v0

    goto :goto_1

    .line 652
    :cond_7
    move v9, v0

    .line 664
    .end local v0    # "endIndex":I
    .local v9, "endIndex":I
    :goto_1
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    move-object v11, v0

    .line 665
    .local v11, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 666
    .local v12, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v0, v10

    move v13, v0

    .local v13, "i":I
    :goto_2
    if-gt v13, v9, :cond_a

    .line 667
    invoke-virtual {v8, v13}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move-object v14, v0

    .line 669
    .local v14, "f":Landroid/util/AtomicFile;
    sget-boolean v0, Lcom/android/server/usage/UsageStatsDatabase;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 670
    const-string v0, "UsageStatsDatabase"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading stat file "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :cond_8
    :try_start_1
    invoke-direct {v1, v14, v11}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 675
    iget-wide v5, v11, Lcom/android/server/usage/IntervalStats;->endTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, v5

    if-gez v0, :cond_9

    .line 676
    const/4 v0, 0x0

    move-object/from16 v5, p6

    :try_start_2
    invoke-interface {v5, v11, v0, v12}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 680
    :catch_0
    move-exception v0

    goto :goto_4

    .line 675
    :cond_9
    move-object/from16 v5, p6

    .line 685
    :goto_3
    goto :goto_5

    .line 680
    :catch_1
    move-exception v0

    move-object/from16 v5, p6

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v6, "UsageStatsDatabase"

    const-string v15, "Failed to read usage stats file"

    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "f":Landroid/util/AtomicFile;
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v5, p4

    goto :goto_2

    :cond_a
    move-object/from16 v5, p6

    .line 687
    .end local v13    # "i":I
    monitor-exit v7

    return-object v12

    .line 688
    .end local v8    # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v9    # "endIndex":I
    .end local v10    # "startIndex":I
    .end local v11    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v12    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v5, p6

    goto :goto_6

    .line 623
    :cond_b
    move-object/from16 v5, p6

    .line 624
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

    .line 688
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

    .line 1195
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1196
    :try_start_0
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
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

    .line 1199
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 1200
    :catch_0
    move-exception v3

    .line 1201
    .local v3, "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v2

    .line 1203
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
