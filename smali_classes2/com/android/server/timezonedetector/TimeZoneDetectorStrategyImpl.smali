.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;,
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Origin;,
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEEP_SUGGESTION_HISTORY_SIZE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "TimeZoneDetectorStrategy"

.field private static final ORIGIN_MANUAL:I = 0x2

.field private static final ORIGIN_TELEPHONY:I = 0x1

.field public static final TELEPHONY_SCORE_HIGH:I = 0x3

.field public static final TELEPHONY_SCORE_HIGHEST:I = 0x4

.field public static final TELEPHONY_SCORE_LOW:I = 0x1

.field public static final TELEPHONY_SCORE_MEDIUM:I = 0x2

.field public static final TELEPHONY_SCORE_NONE:I = 0x0

.field public static final TELEPHONY_SCORE_USAGE_THRESHOLD:I = 0x2


# instance fields
.field private final mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

.field private mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ArrayMapWithHistory<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeZoneChangesLog:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    .line 184
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    .line 199
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 192
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "timeZoneDetectionServiceHelper":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;)V

    return-object v1
.end method

.method private doAutoTimeZoneDetection(Ljava/lang/String;)V
    .locals 7
    .param p1, "detectionReason"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->isAutoTimeZoneDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    return-void

    .line 266
    :cond_0
    nop

    .line 267
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0

    .line 270
    .local v0, "bestTelephonySuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    if-nez v0, :cond_1

    .line 276
    return-void

    .line 279
    :cond_1
    iget v1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 281
    .local v1, "suggestionGoodEnough":Z
    :goto_0
    if-nez v1, :cond_3

    .line 287
    return-void

    .line 292
    :cond_3
    iget-object v2, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "newZoneId":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty zone suggestion scored higher than expected. This is an error: bestTelephonySuggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " detectionReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimeZoneDetectorStrategy"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 300
    :cond_4
    iget-object v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "zoneId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found good suggestion., bestTelephonySuggestion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", detectionReason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "cause":Ljava/lang/String;
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 5

    .line 371
    const/4 v0, 0x0

    .line 377
    .local v0, "bestSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 378
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 379
    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 380
    .local v2, "candidateSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    if-nez v2, :cond_0

    .line 382
    goto :goto_1

    .line 385
    :cond_0
    if-nez v0, :cond_1

    .line 386
    move-object v0, v2

    goto :goto_1

    .line 387
    :cond_1
    iget v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-le v3, v4, :cond_2

    .line 388
    move-object v0, v2

    goto :goto_1

    .line 389
    :cond_2
    iget v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-ne v3, v4, :cond_3

    .line 391
    iget-object v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v3

    .line 392
    .local v3, "candidateSlotIndex":I
    iget-object v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v4

    .line 393
    .local v4, "bestSlotIndex":I
    if-ge v3, v4, :cond_3

    .line 394
    move-object v0, v2

    .line 377
    .end local v2    # "candidateSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .end local v3    # "candidateSlotIndex":I
    .end local v4    # "bestSlotIndex":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method private static isOriginAutomatic(I)Z
    .locals 1
    .param p0, "origin"    # I

    .line 365
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I
    .locals 2
    .param p0, "suggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 234
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .local v0, "score":I
    goto :goto_1

    .line 236
    .end local v0    # "score":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 237
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 241
    const/4 v0, 0x3

    .restart local v0    # "score":I
    goto :goto_1

    .line 242
    .end local v0    # "score":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 244
    const/4 v0, 0x2

    .restart local v0    # "score":I
    goto :goto_1

    .line 245
    .end local v0    # "score":I
    :cond_3
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 247
    const/4 v0, 0x1

    .restart local v0    # "score":I
    goto :goto_1

    .line 249
    .end local v0    # "score":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :cond_5
    :goto_0
    const/4 v0, 0x4

    .line 251
    .restart local v0    # "score":I
    :goto_1
    return v0
.end method

.method private setDeviceTimeZoneIfRequired(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "origin"    # I
    .param p2, "newZoneId"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/String;

    .line 310
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-static {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v0

    .line 314
    .local v0, "isOriginAutomatic":Z
    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->isAutoTimeZoneDetectionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->isAutoTimeZoneDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    return-void

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "currentZoneId":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    return-void

    .line 352
    :cond_2
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    invoke-interface {v2, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->setDeviceTimeZone(Ljava/lang/String;)V

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set device time zone. origin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentZoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newZoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 362
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 429
    :try_start_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 430
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "TimeZoneDetectorStrategy:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isTimeZoneDetectionEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    .line 434
    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->isAutoTimeZoneDetectionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isDeviceTimeZoneInitialized()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    .line 436
    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->isDeviceTimeZoneInitialized()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.getDeviceTimeZone()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    .line 438
    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 440
    const-string v1, "Time zone change log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 442
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 443
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 445
    const-string v1, "Telephony suggestion history:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 447
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 448
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 449
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 450
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    .line 428
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 1

    monitor-enter p0

    .line 408
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 408
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 2
    .param p1, "slotIndex"    # I

    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 459
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .end local p1    # "slotIndex":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleAutoTimeZoneDetectionChanged()V
    .locals 1

    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCallback:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;->isAutoTimeZoneDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "Auto time zone detection setting enabled."

    .line 420
    .local v0, "reason":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .end local v0    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V
    .locals 3
    .param p1, "suggestion"    # Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {p1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "timeZoneId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manual time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "cause":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 202
    .end local v0    # "timeZoneId":Ljava/lang/String;
    .end local v1    # "cause":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .end local p1    # "suggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .locals 4
    .param p1, "suggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    monitor-enter p0

    .line 216
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I

    move-result v0

    .line 220
    .local v0, "score":I
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    invoke-direct {v1, p1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;I)V

    .line 224
    .local v1, "scoredSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New telephony time suggested. suggestion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "reason":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 215
    .end local v0    # "score":I
    .end local v1    # "scoredSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .end local v2    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .end local p1    # "suggestion":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
