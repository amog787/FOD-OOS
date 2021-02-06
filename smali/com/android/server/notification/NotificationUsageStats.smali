.class public Lcom/android/server/notification/NotificationUsageStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;,
        Lcom/android/server/notification/NotificationUsageStats$Aggregate;,
        Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;,
        Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;,
        Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_GLOBAL_STATS:Ljava/lang/String; = "__global"

.field private static final EMIT_PERIOD:J = 0xdbba00L

.field private static final EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field private static final ENABLE_AGGREGATED_IN_MEMORY_STATS:Z = true

.field private static final ENABLE_SQLITE_LOG:Z = true

.field public static final FOUR_HOURS:I = 0xdbba00

.field private static final MSG_EMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationUsageStats"

.field public static final TEN_SECONDS:I = 0x2710


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEmitTime:J

.field private final mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

.field private mStatExpiredkeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    sput-object v0, Lcom/android/server/notification/NotificationUsageStats;->EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    .line 86
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    .line 88
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    .line 89
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$1;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$1;-><init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    .line 102
    const/4 v1, 0x1

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    return-void
.end method

.method private getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 279
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    return-object v0
.end method

.method private getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 289
    .local v0, "array":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_0

    .line 290
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 292
    :cond_0
    const/4 v1, 0x0

    const-string v2, "__global"

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    aput-object v2, v0, v1

    .line 293
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    aput-object v2, v0, v1

    .line 294
    return-object v0
.end method

.method private getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 308
    .local v0, "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_0

    .line 309
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    .line 310
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    .line 313
    return-object v0
.end method

.method private releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    .locals 2
    .param p1, "array"    # [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 300
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 353
    .local v1, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p3, :cond_0

    iget-object v2, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    goto :goto_0

    .line 355
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 356
    .end local v1    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    goto :goto_0

    .line 357
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStatsArrays.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStats.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 351
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "indent":Ljava/lang/String;
    .end local p3    # "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    monitor-enter p0

    .line 317
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 321
    .local v1, "aggregatedStats":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 322
    .local v3, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p1, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 323
    goto :goto_0

    .line 324
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dumpJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 325
    nop

    .end local v3    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    goto :goto_0

    .line 326
    :cond_1
    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    nop

    .end local v1    # "aggregatedStats":Lorg/json/JSONArray;
    goto :goto_1

    .line 327
    :catch_0
    move-exception v1

    .line 333
    :goto_1
    :try_start_2
    const-string v1, "historical"

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    goto :goto_2

    .line 334
    :catch_1
    move-exception v1

    .line 338
    :goto_2
    monitor-exit p0

    return-object v0

    .line 316
    .end local v0    # "dump":Lorg/json/JSONObject;
    .end local p1    # "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized emit()V
    .locals 7

    monitor-enter p0

    .line 366
    :try_start_0
    const-string v0, "__global"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 367
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    .line 368
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xdbba00

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 370
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-wide v3, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    goto :goto_0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 376
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    nop

    .end local v2    # "key":Ljava/lang/String;
    goto :goto_1

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 365
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppEnqueueRate(Ljava/lang/String;)F
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 110
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 113
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 108
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAlertRateLimited(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 122
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->isAlertRateLimited()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 125
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 120
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 238
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 239
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 238
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 236
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_click_longevity"

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 209
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onClick()V

    .line 213
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logClicked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 208
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_dismiss_longevity"

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 197
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 199
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onDismiss()V

    .line 201
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 196
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerEnqueuedByApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 134
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 135
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 134
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerImageRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 272
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 273
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    monitor-exit p0

    return-void

    .line 270
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerOverCountQuota(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 260
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 261
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 262
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    monitor-exit p0

    return-void

    .line 259
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerOverRateQuota(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 253
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 254
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 255
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "valid"    # Z
    .param p3, "starred"    # Z
    .param p4, "cached"    # Z

    monitor-enter p0

    .line 219
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 220
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 221
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p2, :cond_0

    .line 222
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 224
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    if-eqz p3, :cond_1

    .line 225
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 227
    :cond_1
    if-eqz p4, :cond_2

    .line 228
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    goto :goto_1

    .line 230
    :cond_2
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 220
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 218
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "valid":Z
    .end local p3    # "starred":Z
    .end local p4    # "cached":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .locals 10
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 145
    .local v0, "now":J
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput-wide v0, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    .line 148
    .local v2, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 149
    .local v6, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 150
    invoke-virtual {v6, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    .line 151
    invoke-virtual {v6, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 152
    iget v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasUndecoratedRemoteView()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    .line 148
    .end local v6    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 154
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 156
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 143
    .end local v0    # "now":J
    .end local v2    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onRemoved()V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 184
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 185
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 184
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 189
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 181
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 245
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 246
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 247
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 246
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 244
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 167
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 168
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    .line 170
    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 167
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 174
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "old":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;
    .locals 1
    .param p1, "startMs"    # J
    .param p3, "aggregate"    # Z

    .line 343
    if-eqz p3, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->remoteViewAggStats(J)Lcom/android/server/notification/PulledStats;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
