.class public Lcom/android/server/utils/quota/CountQuotaTracker;
.super Lcom/android/server/utils/quota/QuotaTracker;
.source "CountQuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;,
        Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;,
        Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;,
        Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_CLEANUP:Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final MSG_CLEAN_UP_EVENTS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/utils/quota/Category;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateExecutionStats:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Void;",
            "Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateLongArrayQueue:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Void;",
            "Landroid/util/LongArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

.field private final mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

.field private final mEventCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mEventTimes:Lcom/android/server/utils/quota/UptcMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/quota/UptcMap<",
            "Landroid/util/LongArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/quota/UptcMap<",
            "Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mMaxCategoryCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/utils/quota/Category;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPeriodMs:J

.field private mNextCleanupTimeElapsed:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const-class v0, Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cleanup*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categorizer"    # Lcom/android/server/utils/quota/Categorizer;

    .line 165
    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    .line 166
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categorizer"    # Lcom/android/server/utils/quota/Categorizer;
    .param p3, "injector"    # Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    .line 129
    new-instance v0, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {v0}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 133
    new-instance v0, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {v0}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    .line 140
    new-instance v2, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$gcuaahwgCbmI2MO_9858jGPxPGM;

    invoke-direct {v2, p0}, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$gcuaahwgCbmI2MO_9858jGPxPGM;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V

    iput-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 145
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 154
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    .line 158
    iput-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    .line 503
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker$1;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    .line 639
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/CountQuotaTracker$1;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    .line 670
    sget-object v0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$V8_P5m4uQVKMpyfUCyH32qDbyt4;->INSTANCE:Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$V8_P5m4uQVKMpyfUCyH32qDbyt4;

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateLongArrayQueue:Ljava/util/function/Function;

    .line 671
    sget-object v0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$giodBFjkV0qAORwrWZQrMAgSRaY;->INSTANCE:Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$giodBFjkV0qAORwrWZQrMAgSRaY;

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateExecutionStats:Ljava/util/function/Function;

    .line 173
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/utils/quota/CountQuotaTracker;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 65
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "refreshStatsIfOld"    # Z

    .line 386
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateExecutionStats:Ljava/util/function/Function;

    .line 387
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/utils/quota/UptcMap;->getOrCreate(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 388
    .local v0, "stats":Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    if-eqz p4, :cond_1

    .line 389
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategorizer:Lcom/android/server/utils/quota/Categorizer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/utils/quota/Categorizer;->getCategory(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object v1

    .line 390
    .local v1, "category":Lcom/android/server/utils/quota/Category;
    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    const-wide v3, 0x7fffffffffffffffL

    .line 391
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 390
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 392
    .local v2, "countWindowSizeMs":J
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 393
    .local v4, "countLimit":I
    iget-wide v5, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    iget-object v7, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v7}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget-wide v5, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    iget v5, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-eq v5, v4, :cond_1

    .line 397
    :cond_0
    iput-wide v2, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 398
    iput v4, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 399
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->updateExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V

    .line 403
    .end local v1    # "category":Lcom/android/server/utils/quota/Category;
    .end local v2    # "countWindowSizeMs":J
    .end local v4    # "countLimit":I
    :cond_1
    return-object v0
.end method

.method private invalidateAllExecutionStatsLocked()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 455
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    new-instance v3, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$YGSPs4eBXm5g9fUsluToPq543sk;

    invoke-direct {v3, v0, v1}, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$YGSPs4eBXm5g9fUsluToPq543sk;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/android/server/utils/quota/UptcMap;->forEach(Ljava/util/function/Consumer;)V

    .line 460
    return-void
.end method

.method private invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    .line 466
    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 467
    .local v0, "appStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;>;"
    if-eqz v0, :cond_1

    .line 468
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v1

    .line 469
    .local v1, "nowElapsed":J
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 470
    .local v3, "numStats":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 471
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 472
    .local v5, "stats":Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    if-eqz v5, :cond_0

    .line 473
    iput-wide v1, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 470
    .end local v5    # "stats":Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "nowElapsed":J
    .end local v3    # "numStats":I
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private invalidateExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 483
    .local v0, "stats":Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    if-eqz v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 486
    :cond_0
    return-void
.end method

.method private isUnderCountQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z
    .locals 2
    .param p1, "stats"    # Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 369
    iget v0, p1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    iget v1, p1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z
    .locals 1
    .param p1, "stats"    # Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 364
    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isUnderCountQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dump$6(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/util/LongArrayQueue;)V
    .locals 3
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "events"    # Landroid/util/LongArrayQueue;

    .line 696
    invoke-virtual {p4}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 697
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 698
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 700
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 701
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p4}, Landroid/util/LongArrayQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 702
    const-string v1, ", "

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p4, v0}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 706
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 708
    :cond_1
    return-void
.end method

.method static synthetic lambda$dump$7(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 1
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "stats"    # Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 715
    if-eqz p4, :cond_0

    .line 716
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 717
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 719
    invoke-virtual {p0, p4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 722
    :cond_0
    return-void
.end method

.method static synthetic lambda$invalidateAllExecutionStatsLocked$2(JLcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 0
    .param p0, "nowElapsed"    # J
    .param p2, "appStats"    # Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 456
    if-eqz p2, :cond_0

    .line 457
    iput-wide p0, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 459
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$4(Ljava/lang/Void;)Landroid/util/LongArrayQueue;
    .locals 1
    .param p0, "aVoid"    # Ljava/lang/Void;

    .line 670
    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$5(Ljava/lang/Void;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    .locals 1
    .param p0, "aVoid"    # Ljava/lang/Void;

    .line 671
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    invoke-direct {v0}, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;-><init>()V

    return-object v0
.end method

.method private maybeUpdateStatusForPkgLocked(ILjava/lang/String;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 552
    new-instance v2, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {v2}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    .line 554
    .local v2, "done":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/quota/UptcMap;->contains(ILjava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 555
    return v6

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v7

    .line 558
    .local v7, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongArrayQueue;>;"
    if-nez v7, :cond_1

    .line 559
    sget-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Events map was null even though mEventTimes said it contained "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 561
    invoke-static {p1, p2, v3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v6

    .line 566
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v6, v0, v6

    move-object v8, v0

    .line 567
    .local v8, "changed":[Z
    new-instance v9, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;

    move-object v0, v9

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/UptcMap;ILjava/lang/String;[Z)V

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 574
    aget-boolean v0, v8, v6

    return v0
.end method

.method private maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 586
    nop

    .line 587
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v1

    .line 586
    invoke-direct {p0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result v1

    .line 590
    .local v1, "oldInQuota":Z
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->isEnabledLocked()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/CountQuotaTracker;->isQuotaFreeLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    nop

    .line 594
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v2

    .line 593
    invoke-direct {p0, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result v2

    .local v2, "newInQuota":Z
    goto :goto_1

    .line 591
    .end local v2    # "newInQuota":Z
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 597
    .restart local v2    # "newInQuota":Z
    :goto_1
    if-nez v2, :cond_2

    .line 598
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeScheduleStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 600
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->cancelScheduledStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    :goto_2
    if-eq v1, v2, :cond_3

    .line 609
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->postQuotaStatusChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 610
    return v3

    .line 613
    :cond_3
    return v0
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/android/server/utils/quota/QuotaTracker;->clear()V

    return-void
.end method

.method deleteObsoleteEventsLocked()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/UptcMap;->forEach(Ljava/util/function/Consumer;)V

    .line 646
    return-void
.end method

.method dropEverythingLocked()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/UptcMap;->clear()V

    .line 278
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/UptcMap;->clear()V

    .line 279
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 749
    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 751
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/utils/quota/CountQuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 752
    const-wide v6, 0x10b00000001L

    :try_start_0
    invoke-super {p0, v2, v6, v7}, Lcom/android/server/utils/quota/QuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, v1, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 755
    iget-object v8, v1, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/quota/Category;

    .line 756
    .local v8, "category":Lcom/android/server/utils/quota/Category;
    const-wide v9, 0x20b00000002L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 757
    .local v9, "clToken":J
    invoke-virtual {v8, v2, v6, v7}, Lcom/android/server/utils/quota/Category;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 758
    const-wide v11, 0x10500000002L

    iget-object v13, v1, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    .line 759
    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 758
    invoke-virtual {v2, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 760
    const-wide v11, 0x10300000003L

    iget-object v13, v1, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 761
    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 760
    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 762
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 754
    .end local v8    # "category":Lcom/android/server/utils/quota/Category;
    .end local v9    # "clToken":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    .end local v0    # "i":I
    :cond_0
    iget-object v0, v1, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    new-instance v6, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$cN0cbPv_XamMCffwzXBT1y5wiSs;

    invoke-direct {v6, p0, v2}, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$cN0cbPv_XamMCffwzXBT1y5wiSs;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v0, v6}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 804
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 805
    monitor-exit v5

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 685
    sget-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 686
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 689
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 691
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 693
    const-string v1, "Instantaneous events:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 695
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$txEUpjjjfBHHIwaoIrBUanoDtpI;

    invoke-direct {v2, p1}, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$txEUpjjjfBHHIwaoIrBUanoDtpI;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 709
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 711
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 712
    const-string v1, "Cached execution stats:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 714
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$JPiaaEfenxacor9EsTZts7yjmfo;

    invoke-direct {v2, p1}, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$JPiaaEfenxacor9EsTZts7yjmfo;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 723
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 725
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 726
    const-string v1, "Limits:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 728
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 729
    .local v1, "numCategories":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 730
    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/quota/Category;

    .line 731
    .local v3, "category":Lcom/android/server/utils/quota/Category;
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 732
    const-string v4, ": "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 733
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 734
    const-string v4, " events in "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 735
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 729
    .end local v3    # "category":Lcom/android/server/utils/quota/Category;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 738
    nop

    .end local v1    # "numCategories":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 740
    return-void

    .line 738
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getEvents(ILjava/lang/String;Ljava/lang/String;)Landroid/util/LongArrayQueue;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongArrayQueue;

    return-object v0
.end method

.method getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 378
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v0

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getInQuotaTimeElapsedLocked(ILjava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 292
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    return-wide v0
.end method

.method public getLimit(Lcom/android/server/utils/quota/Category;)I
    .locals 5
    .param p1, "category"    # Lcom/android/server/utils/quota/Category;

    .line 250
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 252
    .local v1, "limit":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 253
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not defined"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/utils/quota/CountQuotaTracker;
    .end local p1    # "category":Lcom/android/server/utils/quota/Category;
    throw v2

    .line 256
    .end local v1    # "limit":Ljava/lang/Integer;
    .restart local p0    # "this":Lcom/android/server/utils/quota/CountQuotaTracker;
    .restart local p1    # "category":Lcom/android/server/utils/quota/Category;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowSizeMs(Lcom/android/server/utils/quota/Category;)J
    .locals 5
    .param p1, "category"    # Lcom/android/server/utils/quota/Category;

    .line 263
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 265
    .local v1, "limitMs":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 266
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not defined"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/utils/quota/CountQuotaTracker;
    .end local p1    # "category":Lcom/android/server/utils/quota/Category;
    throw v2

    .line 269
    .end local v1    # "limitMs":Ljava/lang/Long;
    .restart local p0    # "this":Lcom/android/server/utils/quota/CountQuotaTracker;
    .restart local p1    # "category":Lcom/android/server/utils/quota/Category;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleRemovedAppLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 298
    if-nez p1, :cond_0

    .line 299
    sget-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 302
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 304
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/utils/quota/UptcMap;->delete(ILjava/lang/String;)Landroid/util/ArrayMap;

    .line 305
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/utils/quota/UptcMap;->delete(ILjava/lang/String;)Landroid/util/ArrayMap;

    .line 306
    return-void
.end method

.method handleRemovedUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 311
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/UptcMap;->delete(I)V

    .line 312
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/UptcMap;->delete(I)V

    .line 313
    return-void
.end method

.method public bridge synthetic isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->isEnabledLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 322
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/CountQuotaTracker;->isQuotaFreeLocked(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    return v1

    .line 326
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$dump$8$CountQuotaTracker(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "userId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "stats"    # Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 766
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->isIndividualQuotaFreeLocked(ILjava/lang/String;)Z

    move-result v6

    .line 768
    .local v6, "isQuotaFree":Z
    const-wide v7, 0x20b00000003L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 770
    .local v9, "usToken":J
    new-instance v11, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v11, v2, v3, v4}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 771
    const-wide v12, 0x10b00000001L

    invoke-virtual {v11, v1, v12, v13}, Lcom/android/server/utils/quota/Uptc;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 773
    const-wide v11, 0x10800000002L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 775
    iget-object v11, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v11, v2, v3, v4}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/LongArrayQueue;

    .line 776
    .local v11, "events":Landroid/util/LongArrayQueue;
    if-eqz v11, :cond_0

    .line 777
    invoke-virtual {v11}, Landroid/util/LongArrayQueue;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .local v14, "j":I
    :goto_0
    if-ltz v14, :cond_0

    .line 778
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 779
    .local v12, "eToken":J
    invoke-virtual {v11, v14}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v7

    const-wide v2, 0x10300000001L

    invoke-virtual {v1, v2, v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 780
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 777
    .end local v12    # "eToken":J
    add-int/lit8 v14, v14, -0x1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-wide v7, 0x20b00000003L

    goto :goto_0

    .line 784
    .end local v14    # "j":I
    :cond_0
    const-wide v2, 0x20b00000004L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 786
    .local v2, "statsToken":J
    iget-wide v7, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    const-wide v12, 0x10300000001L

    invoke-virtual {v1, v12, v13, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 789
    const-wide v7, 0x10300000002L

    iget-wide v12, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 792
    const-wide v7, 0x10500000003L

    iget v12, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 793
    const-wide v7, 0x10500000004L

    iget v12, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 796
    const-wide v7, 0x10300000005L

    iget-wide v12, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 799
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 801
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 802
    return-void
.end method

.method public synthetic lambda$maybeUpdateAllQuotaStatusLocked$1$CountQuotaTracker(Lcom/android/server/utils/quota/UptcMap;ILjava/lang/String;Ljava/lang/String;Landroid/util/LongArrayQueue;)V
    .locals 1
    .param p1, "doneMap"    # Lcom/android/server/utils/quota/UptcMap;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "events"    # Landroid/util/LongArrayQueue;

    .line 334
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/utils/quota/UptcMap;->contains(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)Z

    .line 336
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/android/server/utils/quota/UptcMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    :cond_0
    return-void
.end method

.method public synthetic lambda$maybeUpdateStatusForPkgLocked$3$CountQuotaTracker(Lcom/android/server/utils/quota/UptcMap;ILjava/lang/String;[ZLjava/lang/String;Landroid/util/LongArrayQueue;)V
    .locals 3
    .param p1, "done"    # Lcom/android/server/utils/quota/UptcMap;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "changed"    # [Z
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "eventList"    # Landroid/util/LongArrayQueue;

    .line 568
    invoke-virtual {p1, p2, p3, p5}, Lcom/android/server/utils/quota/UptcMap;->contains(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    const/4 v0, 0x0

    aget-boolean v1, p4, v0

    invoke-direct {p0, p2, p3, p5}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p4, v0

    .line 570
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3, p5, v0}, Lcom/android/server/utils/quota/UptcMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$CountQuotaTracker()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method maybeScheduleCleanupAlarmLocked()V
    .locals 10

    .line 510
    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->reset()V

    .line 522
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/UptcMap;->forEach(Ljava/util/function/Consumer;)V

    .line 523
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    iget-wide v0, v0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    .line 524
    .local v0, "earliestEndElapsed":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 530
    return-void

    .line 535
    :cond_1
    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    add-long/2addr v2, v0

    .line 536
    .local v2, "nextCleanupElapsed":J
    iget-wide v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x927c0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 539
    add-long/2addr v2, v6

    .line 541
    :cond_2
    iput-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    .line 542
    const/4 v5, 0x3

    sget-object v8, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    move-object v4, p0

    move-wide v6, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/utils/quota/CountQuotaTracker;->scheduleAlarm(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 547
    return-void
.end method

.method maybeUpdateAllQuotaStatusLocked()V
    .locals 3

    .line 332
    new-instance v0, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {v0}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    .line 333
    .local v0, "doneMap":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$KhSu52UVcmIwsRTTPJOPkxx5QBg;

    invoke-direct {v2, p0, v0}, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$KhSu52UVcmIwsRTTPJOPkxx5QBg;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/UptcMap;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 340
    return-void
.end method

.method maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)Z

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteEvent(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->isEnabledLocked()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/CountQuotaTracker;->isQuotaFreeLocked(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v3

    .line 190
    .local v3, "nowElapsed":J
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    iget-object v5, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateLongArrayQueue:Ljava/util/function/Function;

    .line 191
    invoke-virtual {v1, p1, p2, p3, v5}, Lcom/android/server/utils/quota/UptcMap;->getOrCreate(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongArrayQueue;

    .line 192
    .local v1, "times":Landroid/util/LongArrayQueue;
    invoke-virtual {v1, v3, v4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 193
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v5

    .line 194
    .local v5, "stats":Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    iget v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    add-int/2addr v6, v2

    iput v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 195
    iget-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    iget-wide v8, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    add-long/2addr v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 197
    iget v2, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    iget v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-ne v2, v6, :cond_2

    .line 198
    iget-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    sub-long v6, v3, v6

    .line 199
    .local v6, "windowEdgeElapsed":J
    :goto_0
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-gez v2, :cond_1

    .line 200
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v8

    iget-wide v10, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 203
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->postQuotaStatusChanged(ILjava/lang/String;Ljava/lang/String;)V

    .end local v6    # "windowEdgeElapsed":J
    goto :goto_1

    .line 204
    :cond_2
    iget v2, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    const/16 v6, 0x9

    if-le v2, v6, :cond_3

    iget v2, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    iget v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x5

    if-ne v2, v6, :cond_3

    .line 207
    sget-object v2, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has reached 80% of it\'s count limit of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 204
    :cond_3
    :goto_1
    nop

    .line 210
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeScheduleCleanupAlarmLocked()V

    .line 211
    invoke-direct {p0, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 186
    .end local v1    # "times":Landroid/util/LongArrayQueue;
    .end local v3    # "nowElapsed":J
    .end local v5    # "stats":Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    :cond_4
    :goto_3
    monitor-exit v0

    return v2

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onQuotaFreeChangedLocked(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isFree"    # Z

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForPkgLocked(ILjava/lang/String;)Z

    .line 360
    return-void
.end method

.method onQuotaFreeChangedLocked(Z)V
    .locals 0
    .param p1, "isFree"    # Z

    .line 354
    return-void
.end method

.method public bridge synthetic registerQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->registerQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V

    return-void
.end method

.method public setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V
    .locals 7
    .param p1, "category"    # Lcom/android/server/utils/quota/Category;
    .param p2, "limit"    # I
    .param p3, "timeWindowMs"    # J

    .line 226
    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    .local v1, "oldLimit":Ljava/lang/Integer;
    const-wide/16 v2, 0x7530

    const-wide v4, 0x9a7ec800L

    .line 232
    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 231
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 233
    .local v2, "newWindowSizeMs":J
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 234
    .local v4, "oldWindowSizeMs":Ljava/lang/Long;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    .line 237
    monitor-exit v0

    return-void

    .line 239
    :cond_0
    iget-object v5, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-static {v5}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->access$000(Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;)V

    .line 240
    iget-object v5, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-static {v5}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->access$100(Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    .line 241
    invoke-direct {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->invalidateAllExecutionStatsLocked()V

    .line 242
    .end local v1    # "oldLimit":Ljava/lang/Integer;
    .end local v2    # "newWindowSizeMs":J
    .end local v4    # "oldWindowSizeMs":Ljava/lang/Long;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->scheduleQuotaCheck()V

    .line 244
    return-void

    .line 242
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit and window size must be nonnegative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setQuotaFree(ILjava/lang/String;Z)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->setQuotaFree(ILjava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic setQuotaFree(Z)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->setQuotaFree(Z)V

    return-void
.end method

.method public bridge synthetic unregisterQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->unregisterQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V

    return-void
.end method

.method updateExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "stats"    # Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 411
    iget v2, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    const-wide v3, 0x7fffffffffffffffL

    if-nez v2, :cond_0

    .line 413
    iput-wide v3, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_0

    .line 415
    :cond_0
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 420
    :goto_0
    iget-object v2, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v5

    .line 421
    .local v5, "nowElapsed":J
    iget-wide v7, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    add-long/2addr v7, v5

    iput-wide v7, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 423
    iget-object v2, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongArrayQueue;

    .line 424
    .local v2, "events":Landroid/util/LongArrayQueue;
    if-nez v2, :cond_1

    .line 425
    return-void

    .line 430
    :cond_1
    sub-long/2addr v3, v5

    .line 432
    .local v3, "emptyTimeMs":J
    iget-wide v10, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    sub-long v10, v5, v10

    .line 433
    .local v10, "eventStartWindowElapsed":J
    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_4

    .line 434
    invoke-virtual {v2, v12}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v13

    .line 435
    .local v13, "eventTimeElapsed":J
    cmp-long v15, v13, v10

    if-gez v15, :cond_2

    .line 437
    move-object v15, v2

    goto :goto_3

    .line 439
    :cond_2
    iget v15, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 440
    sub-long v7, v13, v10

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 442
    iget v7, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    iget v8, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-lt v7, v8, :cond_3

    .line 443
    iget-wide v7, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    move-object v15, v2

    move-wide/from16 v16, v3

    .end local v2    # "events":Landroid/util/LongArrayQueue;
    .end local v3    # "emptyTimeMs":J
    .local v15, "events":Landroid/util/LongArrayQueue;
    .local v16, "emptyTimeMs":J
    iget-wide v2, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    add-long/2addr v2, v13

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_2

    .line 442
    .end local v15    # "events":Landroid/util/LongArrayQueue;
    .end local v16    # "emptyTimeMs":J
    .restart local v2    # "events":Landroid/util/LongArrayQueue;
    .restart local v3    # "emptyTimeMs":J
    :cond_3
    move-object v15, v2

    move-wide/from16 v16, v3

    .line 433
    .end local v2    # "events":Landroid/util/LongArrayQueue;
    .end local v3    # "emptyTimeMs":J
    .end local v13    # "eventTimeElapsed":J
    .restart local v15    # "events":Landroid/util/LongArrayQueue;
    .restart local v16    # "emptyTimeMs":J
    :goto_2
    add-int/lit8 v12, v12, -0x1

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object v2, v15

    move-wide/from16 v3, v16

    goto :goto_1

    .end local v15    # "events":Landroid/util/LongArrayQueue;
    .end local v16    # "emptyTimeMs":J
    .restart local v2    # "events":Landroid/util/LongArrayQueue;
    .restart local v3    # "emptyTimeMs":J
    :cond_4
    move-object v15, v2

    .line 448
    .end local v2    # "events":Landroid/util/LongArrayQueue;
    .end local v12    # "i":I
    .restart local v15    # "events":Landroid/util/LongArrayQueue;
    :goto_3
    add-long v7, v5, v3

    iput-wide v7, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 449
    return-void
.end method
