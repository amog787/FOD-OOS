.class public Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageStatistics"
.end annotation


# instance fields
.field private mFastestIntervalMs:J

.field private mForegroundDurationMs:J

.field private final mInitialElapsedTimeMs:J

.field private mLastActivitationElapsedTimeMs:J

.field private mLastForegroundElapsedTimeMs:J

.field private mLastStopElapsedTimeMs:J

.field private mNumActiveRequests:I

.field private mSlowestIntervalMs:J

.field private mTotalDurationMs:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 332
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    .line 333
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    .line 334
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 335
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    .line 336
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastStopElapsedTimeMs:J

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationRequestStatistics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/LocationRequestStatistics$1;

    .line 303
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    .param p1, "x1"    # J

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->startRequesting(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    .param p1, "x1"    # Z

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->updateForeground(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 303
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->stopRequesting()V

    return-void
.end method

.method private startRequesting(J)V
    .locals 2
    .param p1, "intervalMs"    # J

    .line 340
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    .line 344
    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 345
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    .line 348
    :cond_1
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 349
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    .line 352
    :cond_2
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 353
    return-void
.end method

.method private stopRequesting()V
    .locals 4

    .line 365
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-gtz v0, :cond_0

    .line 367
    const-string v0, "LocationStats"

    const-string v1, "Reference counting corrupted in usage statistics."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 371
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 372
    if-nez v0, :cond_1

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastStopElapsedTimeMs:J

    .line 374
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    sub-long/2addr v0, v2

    .line 375
    .local v0, "lastDurationMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 376
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->updateForeground(Z)V

    .line 378
    .end local v0    # "lastDurationMs":J
    :cond_1
    return-void
.end method

.method private updateForeground(Z)V
    .locals 8
    .param p1, "isForeground"    # Z

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 358
    .local v0, "nowElapsedTimeMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 359
    iget-wide v6, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    sub-long v2, v0, v2

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 361
    :cond_0
    if-eqz p1, :cond_1

    move-wide v4, v0

    :cond_1
    iput-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    .line 362
    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 6

    .line 384
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 385
    .local v0, "currentDurationMs":J
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v2, :cond_0

    .line 386
    nop

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 389
    :cond_0
    return-wide v0
.end method

.method public getFastestIntervalMs()J
    .locals 2

    .line 422
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    return-wide v0
.end method

.method public getForegroundDurationMs()J
    .locals 6

    .line 396
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 397
    .local v0, "currentDurationMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 398
    nop

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 401
    :cond_0
    return-wide v0
.end method

.method public getSlowestIntervalMs()J
    .locals 2

    .line 429
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    return-wide v0
.end method

.method public getTimeSinceFirstRequestMs()J
    .locals 4

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeSinceLastRequestStoppedMs()J
    .locals 4

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastStopElapsedTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 436
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    iget-wide v3, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    cmp-long v1, v1, v3

    const-string v2, " seconds"

    const-wide/16 v3, 0x3e8

    if-nez v1, :cond_0

    .line 443
    const-string v1, "Interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    div-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    :cond_0
    const-string v1, "Min interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    div-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, ": Max interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    div-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :goto_0
    const-string v1, ": Duration requested "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getDurationMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, " total, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getForegroundDurationMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 452
    const-string v1, " foreground, out of the last "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getTimeSinceFirstRequestMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    const-string v1, ": Currently active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 458
    :cond_1
    const-string v1, ": Last active "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getTimeSinceLastRequestStoppedMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, " minutes ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
