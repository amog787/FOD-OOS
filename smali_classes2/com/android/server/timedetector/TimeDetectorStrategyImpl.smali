.class public final Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Origin;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEEP_SUGGESTION_HISTORY_SIZE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleTimeDetectorStrategy"

.field static final MAX_UTC_TIME_AGE_MILLIS:J = 0x5265c00L

.field private static final ORIGIN_MANUAL:I = 0x2

.field private static final ORIGIN_NETWORK:I = 0x3

.field private static final ORIGIN_TELEPHONY:I = 0x1

.field private static final SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TELEPHONY_BUCKET_COUNT:I = 0x18

.field static final TELEPHONY_BUCKET_SIZE_MILLIS:I = 0x36ee80

.field private static final TELEPHONY_INVALID_SCORE:I = -0x1


# instance fields
.field private mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

.field private mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timedetector/NetworkTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ArrayMapWithHistory<",
            "Ljava/lang/Integer;",
            "Landroid/app/timedetector/TelephonyTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeChangesLog:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    .line 117
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 121
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    return-void
.end method

.method private doAutoTimeDetection(Ljava/lang/String;)V
    .locals 6
    .param p1, "detectionReason"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isAutoTimeDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v0

    .line 308
    .local v0, "bestTelephonySuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    const-string v1, ", detectionReason="

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v2

    .line 310
    .local v2, "newUtcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found good telephony suggestion., bestTelephonySuggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "cause":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)V

    .line 314
    return-void

    .line 318
    .end local v1    # "cause":Ljava/lang/String;
    .end local v2    # "newUtcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v2

    .line 319
    .local v2, "networkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    if-eqz v2, :cond_2

    .line 320
    invoke-virtual {v2}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v3

    .line 321
    .local v3, "newUtcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found good network suggestion., networkSuggestion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .restart local v1    # "cause":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)V

    .line 325
    return-void

    .line 332
    .end local v1    # "cause":Ljava/lang/String;
    .end local v3    # "newUtcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method

.method private findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 10

    .line 337
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v0

    .line 369
    .local v0, "elapsedRealtimeMillis":J
    const/4 v2, 0x0

    .line 370
    .local v2, "bestSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    const/4 v3, -0x1

    .line 371
    .local v3, "bestScore":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 372
    iget-object v5, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v5, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 373
    .local v5, "slotIndex":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v6, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 374
    .local v6, "candidateSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    const-string v7, "SimpleTimeDetectorStrategy"

    if-nez v6, :cond_0

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly null for slotIndex. slotIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    goto :goto_2

    .line 379
    :cond_0
    invoke-virtual {v6}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v8

    if-nez v8, :cond_1

    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly empty.  candidateSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    goto :goto_2

    .line 386
    :cond_1
    nop

    .line 387
    invoke-static {v0, v1, v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I

    move-result v7

    .line 388
    .local v7, "candidateScore":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 390
    goto :goto_2

    .line 394
    :cond_2
    if-eqz v2, :cond_4

    if-ge v3, v7, :cond_3

    goto :goto_1

    .line 397
    :cond_3
    if-ne v3, v7, :cond_5

    .line 399
    invoke-virtual {v6}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v8

    .line 400
    .local v8, "candidateSlotIndex":I
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v9

    .line 401
    .local v9, "bestSlotIndex":I
    if-ge v8, v9, :cond_5

    .line 402
    move-object v2, v6

    goto :goto_2

    .line 395
    .end local v8    # "candidateSlotIndex":I
    .end local v9    # "bestSlotIndex":I
    :cond_4
    :goto_1
    move-object v2, v6

    .line 396
    move v3, v7

    .line 371
    .end local v5    # "slotIndex":Ljava/lang/Integer;
    .end local v6    # "candidateSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    .end local v7    # "candidateScore":I
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 406
    .end local v4    # "i":I
    :cond_6
    return-object v2
.end method

.method private findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;
    .locals 6

    .line 439
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    .line 440
    .local v0, "networkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 442
    return-object v1

    .line 445
    :cond_0
    invoke-virtual {v0}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v2

    .line 446
    .local v2, "utcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 447
    .local v3, "elapsedRealTimeMillis":J
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUtcTime(JLandroid/os/TimestampedValue;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 449
    return-object v1

    .line 452
    :cond_1
    return-object v0
.end method

.method private static isOriginAutomatic(I)Z
    .locals 1
    .param p0, "origin"    # I

    .line 491
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I
    .locals 7
    .param p0, "elapsedRealtimeMillis"    # J
    .param p2, "timeSuggestion"    # Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 413
    invoke-virtual {p2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 414
    .local v0, "utcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-static {p0, p1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUtcTime(JLandroid/os/TimestampedValue;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing suggestion found to be invalid  elapsedRealtimeMillis="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", timeSuggestion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SimpleTimeDetectorStrategy"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v2

    .line 423
    :cond_0
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v3

    sub-long v3, p0, v3

    .line 426
    .local v3, "ageMillis":J
    const-wide/32 v5, 0x36ee80

    div-long v5, v3, v5

    long-to-int v1, v5

    .line 427
    .local v1, "bucketIndex":I
    const/16 v5, 0x18

    if-lt v1, v5, :cond_1

    .line 428
    return v2

    .line 432
    :cond_1
    rsub-int/lit8 v2, v1, 0x18

    return v2
.end method

.method private setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)V
    .locals 3
    .param p1, "origin"    # I
    .param p3, "cause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 459
    .local p2, "time":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v0

    .line 460
    .local v0, "isOriginAutomatic":Z
    if-eqz v0, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isAutoTimeDetectionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isAutoTimeDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    return-void

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->acquireWakeLock()V

    .line 484
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockUnderWakeLock(ILandroid/os/TimestampedValue;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    .line 487
    nop

    .line 488
    return-void

    .line 486
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    .line 487
    throw v1
.end method

.method private setSystemClockUnderWakeLock(ILandroid/os/TimestampedValue;Ljava/lang/Object;)V
    .locals 17
    .param p1, "origin"    # I
    .param p3, "cause"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 498
    .local p2, "newTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 499
    .local v3, "elapsedRealtimeMillis":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v5

    .line 500
    .local v5, "isOriginAutomatic":Z
    iget-object v6, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v6}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockMillis()J

    move-result-wide v6

    .line 501
    .local v6, "actualSystemClockMillis":J
    const-string v8, " cause="

    if-eqz v5, :cond_0

    .line 504
    iget-object v9, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    if-eqz v9, :cond_0

    .line 505
    invoke-static {v9, v3, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/os/TimestampedValue;J)J

    move-result-wide v9

    .line 507
    .local v9, "expectedTimeMillis":J
    sub-long v11, v9, v6

    .line 508
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 509
    .local v11, "absSystemClockDifference":J
    const-wide/16 v13, 0x7d0

    cmp-long v13, v11, v13

    if-lez v13, :cond_0

    .line 510
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. elapsedRealtimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " expectedTimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " actualTimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "SimpleTimeDetectorStrategy"

    invoke-static {v14, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v9    # "expectedTimeMillis":J
    .end local v11    # "absSystemClockDifference":J
    :cond_0
    invoke-static {v1, v3, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/os/TimestampedValue;J)J

    move-result-wide v9

    .line 527
    .local v9, "newSystemClockMillis":J
    sub-long v11, v9, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 528
    .local v11, "absTimeDifference":J
    iget-object v13, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v13}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockUpdateThresholdMillis()I

    move-result v13

    int-to-long v13, v13

    .line 529
    .local v13, "systemClockUpdateThreshold":J
    cmp-long v15, v11, v13

    if-gez v15, :cond_1

    .line 539
    return-void

    .line 542
    :cond_1
    iget-object v15, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v15, v9, v10}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->setSystemClock(J)V

    .line 543
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v5

    .end local v5    # "isOriginAutomatic":Z
    .local v16, "isOriginAutomatic":Z
    const-string v5, "Set system clock using time="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " elapsedRealtimeMillis="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " newSystemClockMillis="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, "logMsg":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v8, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 554
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 555
    iput-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    goto :goto_0

    .line 557
    :cond_2
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    .line 559
    :goto_0
    return-void
.end method

.method private validateAndStoreTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z
    .locals 10
    .param p1, "suggestion"    # Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 241
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 242
    .local v0, "newUtcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 245
    return v2

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v1

    .line 249
    .local v1, "slotIndex":I
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 250
    .local v3, "previousSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    if-eqz v3, :cond_3

    .line 252
    invoke-virtual {v3}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v4

    const-string v5, "SimpleTimeDetectorStrategy"

    if-eqz v4, :cond_2

    .line 253
    invoke-virtual {v3}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    nop

    .line 262
    invoke-virtual {v3}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v4

    .line 261
    invoke-static {v0, v4}, Landroid/os/TimestampedValue;->referenceTimeDifference(Landroid/os/TimestampedValue;Landroid/os/TimestampedValue;)J

    move-result-wide v6

    .line 263
    .local v6, "referenceTimeDifference":J
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_3

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Out of order telephony suggestion received. referenceTimeDifference="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " previousSuggestion="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " suggestion="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v2

    .line 255
    .end local v6    # "referenceTimeDifference":J
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Previous suggestion is null or has a null time. previousSuggestion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", suggestion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v2

    .line 274
    :cond_3
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const/4 v2, 0x1

    return v2
.end method

.method private validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .locals 7
    .param p2, "suggestion"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 280
    .local p1, "newUtcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SimpleTimeDetectorStrategy"

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suggested time value is null. suggestion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 287
    .local v3, "elapsedRealtimeMillis":J
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New reference time is in the future? Ignoring. elapsedRealtimeMillis="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", suggestion="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v1

    .line 294
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static validateSuggestionUtcTime(JLandroid/os/TimestampedValue;)Z
    .locals 8
    .param p0, "elapsedRealtimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 601
    .local p2, "utcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    .line 602
    .local v0, "referenceTimeMillis":J
    cmp-long v2, v0, p0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 606
    return v3

    .line 614
    :cond_0
    sub-long v4, p0, v0

    .line 615
    .local v4, "ageMillis":J
    const-wide/32 v6, 0x5265c00

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 207
    :try_start_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 208
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "TimeDetectorStrategy:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastAutoSystemClockTimeSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isAutoTimeDetectionEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 213
    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isAutoTimeDetectionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.elapsedRealtimeMillis()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.systemClockMillis()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.systemClockUpdateThresholdMillis()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 217
    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockUpdateThresholdMillis()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string v1, "Time change log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 221
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 222
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 224
    const-string v1, "Telephony suggestion history:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 226
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 227
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 229
    const-string v1, "Network suggestion history:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 231
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 234
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 235
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 206
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 1

    monitor-enter p0

    .line 568
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 568
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findLatestValidNetworkSuggestionForTests()Landroid/app/timedetector/NetworkTimeSuggestion;
    .locals 1

    .line 578
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public getLatestNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    return-object v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 2
    .param p1, "slotIndex"    # I

    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TelephonyTimeSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 587
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "slotIndex":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleAutoTimeDetectionChanged()V
    .locals 2

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isAutoTimeDetectionEnabled()Z

    move-result v0

    .line 195
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 196
    const-string v1, "Auto time zone detection setting enabled."

    .line 197
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V

    .line 198
    .end local v1    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "enabled":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 127
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 128
    return-void
.end method

.method public declared-synchronized suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)V
    .locals 3
    .param p1, "suggestion"    # Landroid/app/timedetector/ManualTimeSuggestion;

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p1}, Landroid/app/timedetector/ManualTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 134
    .local v0, "newUtcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 135
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manual time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "cause":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 131
    .end local v0    # "newUtcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    .end local v1    # "cause":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "suggestion":Landroid/app/timedetector/ManualTimeSuggestion;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .locals 3
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/NetworkTimeSuggestion;

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 145
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    .line 156
    .local v0, "lastNetworkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New network time suggested. timeSuggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 143
    .end local v0    # "lastNetworkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    .end local v1    # "reason":Ljava/lang/String;
    .end local p1    # "timeSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 2
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/TelephonyTimeSuggestion;

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAndStoreTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 181
    monitor-exit p0

    return-void

    .line 186
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New telephony time suggested. timeSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "reason":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 173
    .end local v0    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "timeSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
