.class Lcom/android/server/blob/BlobStoreConfig;
.super Ljava/lang/Object;
.source "BlobStoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;
    }
.end annotation


# static fields
.field private static final BLOBS_DIR_NAME:Ljava/lang/String; = "blobs"

.field private static final BLOBS_INDEX_FILE_NAME:Ljava/lang/String; = "blobs_index.xml"

.field public static final IDLE_JOB_ID:I = 0xb70b1d7

.field public static final INVALID_BLOB_ID:J = 0x0L

.field public static final INVALID_BLOB_SIZE:J = 0x0L

.field public static final LOGV:Z

.field private static final ROOT_DIR_NAME:Ljava/lang/String; = "blobstore"

.field private static final SESSIONS_INDEX_FILE_NAME:Ljava/lang/String; = "sessions_index.xml"

.field public static final TAG:Ljava/lang/String; = "BlobStore"

.field public static final XML_VERSION_ADD_COMMIT_TIME:I = 0x4

.field public static final XML_VERSION_ADD_DESC_RES_NAME:I = 0x3

.field public static final XML_VERSION_ADD_SESSION_CREATION_TIME:I = 0x5

.field public static final XML_VERSION_ADD_STRING_DESC:I = 0x2

.field public static final XML_VERSION_CURRENT:I = 0x5

.field public static final XML_VERSION_INIT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "BlobStore"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/Context;)V
    .locals 4
    .param p0, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "context"    # Landroid/content/Context;

    .line 467
    const-string v0, "XML current version: 5"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    const-string v0, "Idle job ID: 191934935"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total bytes per app limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getAppDataBytesLimit()J

    move-result-wide v1

    .line 471
    const/16 v3, 0x8

    invoke-static {p1, v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 474
    const-string v0, "Device config properties:"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 476
    invoke-static {p0, p1}, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/Context;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 478
    return-void
.end method

.method public static getAdjustedCommitTimeMs(JJ)J
    .locals 2
    .param p0, "oldCommitTimeMs"    # J
    .param p2, "newCommitTimeMs"    # J

    .line 329
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobStoreConfig;->hasCommitCoolOffPeriodElapsed(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    return-wide p0

    .line 330
    :cond_1
    :goto_0
    return-wide p2
.end method

.method public static getAppDataBytesLimit()J
    .locals 4

    .line 309
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    long-to-float v0, v0

    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 311
    .local v0, "totalBytesLimit":J
    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getBlobFile(J)Ljava/io/File;
    .locals 1
    .param p0, "sessionId"    # J

    .line 405
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobsDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/android/server/blob/BlobStoreConfig;->getBlobFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getBlobFile(Ljava/io/File;J)Ljava/io/File;
    .locals 2
    .param p0, "blobsDir"    # Ljava/io/File;
    .param p1, "sessionId"    # J

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBlobStoreRootDir()Ljava/io/File;
    .locals 3

    .line 463
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "blobstore"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBlobsDir()Ljava/io/File;
    .locals 1

    .line 425
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreConfig;->getBlobsDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getBlobsDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "blobsRootDir"    # Ljava/io/File;

    .line 430
    new-instance v0, Ljava/io/File;

    const-string v1, "blobs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeletionOnLastLeaseDelayMs()J
    .locals 2

    .line 354
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    return-wide v0
.end method

.method public static getIdleJobPeriodMs()J
    .locals 2

    .line 293
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    return-wide v0
.end method

.method public static getMaxActiveSessions()I
    .locals 1

    .line 361
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    return v0
.end method

.method public static getMaxCommittedBlobs()I
    .locals 1

    .line 368
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    return v0
.end method

.method public static getMaxLeasedBlobs()I
    .locals 1

    .line 375
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    return v0
.end method

.method public static getMaxPermittedPackages()I
    .locals 1

    .line 382
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    return v0
.end method

.method public static getTruncatedLeaseDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "description"    # Ljava/lang/CharSequence;

    .line 390
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    return-object p0

    .line 393
    :cond_0
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    invoke-static {p0, v0}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static hasCommitCoolOffPeriodElapsed(J)Z
    .locals 4
    .param p0, "commitTimeMs"    # J

    .line 339
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    add-long/2addr v0, p0

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0
.end method

.method public static hasLeaseWaitTimeElapsed(J)Z
    .locals 4
    .param p0, "commitTimeMs"    # J

    .line 318
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    add-long/2addr v0, p0

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0
.end method

.method public static hasSessionExpired(J)Z
    .locals 4
    .param p0, "sessionLastModifiedMs"    # J

    .line 301
    nop

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    sub-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 283
    nop

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$puwdUOAux6q8DMSxBpGh5jGtgZA;->INSTANCE:Lcom/android/server/blob/-$$Lambda$BlobStoreConfig$puwdUOAux6q8DMSxBpGh5jGtgZA;

    .line 283
    const-string v2, "blobstore"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 286
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->refresh(Landroid/provider/DeviceConfig$Properties;)V

    .line 287
    return-void
.end method

.method static synthetic lambda$initialize$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 285
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->refresh(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static prepareBlobFile(J)Ljava/io/File;
    .locals 2
    .param p0, "sessionId"    # J

    .line 399
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobsDir()Ljava/io/File;

    move-result-object v0

    .line 400
    .local v0, "blobsDir":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, p1}, Lcom/android/server/blob/BlobStoreConfig;->getBlobFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static prepareBlobStoreRootDir()Ljava/io/File;
    .locals 3

    .line 453
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    .line 454
    .local v0, "blobStoreRootDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mkdir(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlobStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v1, 0x0

    return-object v1

    .line 458
    :cond_0
    return-object v0
.end method

.method public static prepareBlobsDir()Ljava/io/File;
    .locals 3

    .line 415
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreConfig;->getBlobsDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 416
    .local v0, "blobsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mkdir(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlobStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, 0x0

    return-object v1

    .line 420
    :cond_0
    return-object v0
.end method

.method public static prepareBlobsIndexFile()Ljava/io/File;
    .locals 3

    .line 444
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    .line 445
    .local v0, "blobsStoreRootDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 446
    const/4 v1, 0x0

    return-object v1

    .line 448
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "blobs_index.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static prepareSessionIndexFile()Ljava/io/File;
    .locals 3

    .line 435
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    .line 436
    .local v0, "blobStoreRootDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 437
    const/4 v1, 0x0

    return-object v1

    .line 439
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "sessions_index.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static shouldUseRevocableFdForReads()Z
    .locals 1

    .line 347
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    return v0
.end method
