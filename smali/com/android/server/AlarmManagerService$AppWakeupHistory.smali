.class Lcom/android/server/AlarmManagerService$AppWakeupHistory;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppWakeupHistory"
.end annotation


# instance fields
.field private mPackageHistory:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/LongArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowSize:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "windowSize"    # J

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 326
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    .line 327
    return-void
.end method

.method private snapToWindow(Landroid/util/LongArrayQueue;)V
    .locals 4
    .param p1, "history"    # Landroid/util/LongArrayQueue;

    .line 357
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    add-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 358
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "nowElapsed"    # J

    .line 385
    const-string v0, "App Alarm history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 389
    .local v1, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongArrayQueue;

    .line 390
    .local v2, "timestamps":Landroid/util/LongArrayQueue;
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 391
    const-string v3, ", u"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 392
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 393
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 395
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 396
    .local v3, "lastIdx":I
    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-lt v4, v3, :cond_0

    .line 397
    invoke-virtual {v2, v4}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v5

    invoke-static {v5, v6, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 398
    const-string v5, ", "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 396
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 400
    .end local v4    # "j":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 387
    .end local v1    # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "timestamps":Landroid/util/LongArrayQueue;
    .end local v3    # "lastIdx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 403
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowElapsed"    # J

    .line 381
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;J)V

    .line 382
    return-void
.end method

.method getNthLastWakeupForPackage(Ljava/lang/String;II)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "n"    # I

    .line 372
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongArrayQueue;

    .line 373
    .local v0, "history":Landroid/util/LongArrayQueue;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 374
    return-wide v1

    .line 376
    :cond_0
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v3

    sub-int/2addr v3, p3

    .line 377
    .local v3, "i":I
    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method getTotalWakeupsInWindow(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 363
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongArrayQueue;

    .line 364
    .local v0, "history":Landroid/util/LongArrayQueue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method recordAlarmForPackage(Ljava/lang/String;IJ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "nowElapsed"    # J

    .line 330
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 331
    .local v0, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongArrayQueue;

    .line 332
    .local v1, "history":Landroid/util/LongArrayQueue;
    if-nez v1, :cond_0

    .line 333
    new-instance v2, Landroid/util/LongArrayQueue;

    invoke-direct {v2}, Landroid/util/LongArrayQueue;-><init>()V

    move-object v1, v2

    .line 334
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gez v2, :cond_2

    .line 337
    :cond_1
    invoke-virtual {v1, p3, p4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 339
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->snapToWindow(Landroid/util/LongArrayQueue;)V

    .line 340
    return-void
.end method

.method removeForPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 352
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 353
    .local v0, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method removeForUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 343
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 345
    .local v1, "packageUserKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 343
    .end local v1    # "packageUserKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
