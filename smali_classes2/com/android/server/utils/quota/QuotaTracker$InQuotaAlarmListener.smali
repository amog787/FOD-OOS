.class Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;
.super Ljava/lang/Object;
.source "QuotaTracker.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/QuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InQuotaAlarmListener"
.end annotation


# instance fields
.field private final mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

.field private mTriggerTimeElapsed:J

.field final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .locals 2

    .line 473
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance p1, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-direct {p1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    .line 477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;Lcom/android/server/utils/quota/QuotaTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/utils/quota/QuotaTracker;
    .param p2, "x1"    # Lcom/android/server/utils/quota/QuotaTracker$1;

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    return-void
.end method

.method private setNextAlarmLocked()V
    .locals 11

    .line 539
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 546
    .local v9, "nextTriggerTimeElapsed":J
    iget-wide v3, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x2bf20

    sub-long v0, v3, v0

    cmp-long v0, v9, v0

    if-ltz v0, :cond_0

    cmp-long v0, v3, v9

    if-gez v0, :cond_1

    .line 550
    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    const/4 v4, 0x3

    .line 551
    invoke-static {}, Lcom/android/server/utils/quota/QuotaTracker;->access$400()Ljava/lang/String;

    move-result-object v7

    .line 550
    move-wide v5, v9

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleAlarm(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 552
    iput-wide v9, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    .line 554
    .end local v9    # "nextTriggerTimeElapsed":J
    :cond_1
    goto :goto_0

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker;->cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 556
    iput-wide v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    .line 558
    :goto_0
    return-void
.end method


# virtual methods
.method addAlarmLocked(Lcom/android/server/utils/quota/Uptc;J)V
    .locals 3
    .param p1, "uptc"    # Lcom/android/server/utils/quota/Uptc;
    .param p2, "inQuotaTimeElapsed"    # J

    .line 482
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Lcom/android/server/utils/quota/Uptc;)Z

    .line 483
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->offer(Ljava/lang/Object;)Z

    .line 484
    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    .line 485
    return-void
.end method

.method clearLocked()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker;->cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->clear()V

    .line 491
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    .line 492
    return-void
.end method

.method dumpLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 600
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 602
    .local v0, "token":J
    iget-wide v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 605
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v3

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Pair;

    .line 606
    .local v2, "alarms":[Landroid/util/Pair;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 607
    const-wide v4, 0x20b00000002L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 609
    .local v4, "aToken":J
    aget-object v6, v2, v3

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/utils/quota/Uptc;

    .line 610
    .local v6, "uptc":Lcom/android/server/utils/quota/Uptc;
    const-wide v7, 0x10b00000001L

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/utils/quota/Uptc;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 611
    const-wide v7, 0x10300000002L

    aget-object v9, v2, v3

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    .line 612
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 611
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 614
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 606
    .end local v4    # "aToken":J
    .end local v6    # "uptc":Lcom/android/server/utils/quota/Uptc;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 617
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 618
    return-void
.end method

.method dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 579
    const-string v0, "In quota alarms:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 582
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 583
    const-string v0, "NOT WAITING"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    .line 586
    .local v0, "alarms":[Landroid/util/Pair;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 587
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/utils/quota/Uptc;

    .line 588
    .local v2, "uptc":Lcom/android/server/utils/quota/Uptc;
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 589
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 590
    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 591
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 586
    .end local v2    # "uptc":Lcom/android/server/utils/quota/Uptc;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "alarms":[Landroid/util/Pair;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 596
    return-void
.end method

.method public synthetic lambda$onAlarm$0$QuotaTracker$InQuotaAlarmListener(Landroid/util/Pair;)V
    .locals 4
    .param p1, "alarm"    # Landroid/util/Pair;

    .line 566
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/utils/quota/Uptc;

    iget v1, v1, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/utils/quota/Uptc;

    iget-object v2, v2, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/utils/quota/Uptc;

    iget-object v3, v3, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAlarm()V
    .locals 6

    .line 562
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v0, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 565
    .local v1, "alarm":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/utils/quota/Uptc;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v4, v4, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v4}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 566
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$InQuotaAlarmListener$soj539BGmQ3unUf9-_Ugq8KVOxI;

    invoke-direct {v3, p0, v1}, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$InQuotaAlarmListener$soj539BGmQ3unUf9-_Ugq8KVOxI;-><init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;Landroid/util/Pair;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Ljava/lang/Object;)Z

    .line 572
    nop

    .end local v1    # "alarm":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/utils/quota/Uptc;Ljava/lang/Long;>;"
    goto :goto_0

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    .line 574
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeAlarmLocked(Lcom/android/server/utils/quota/Uptc;)V
    .locals 1
    .param p1, "uptc"    # Lcom/android/server/utils/quota/Uptc;

    .line 496
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Lcom/android/server/utils/quota/Uptc;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker;->cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    .line 503
    :cond_1
    :goto_0
    return-void
.end method

.method removeAlarmsLocked(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    .line 509
    .local v1, "alarms":[Landroid/util/Pair;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 510
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/utils/quota/Uptc;

    .line 511
    .local v3, "uptc":Lcom/android/server/utils/quota/Uptc;
    iget v4, v3, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne p1, v4, :cond_0

    .line 512
    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Ljava/lang/Object;)Z

    .line 513
    const/4 v0, 0x1

    .line 509
    .end local v3    # "uptc":Lcom/android/server/utils/quota/Uptc;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 516
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 517
    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    .line 519
    :cond_2
    return-void
.end method

.method removeAlarmsLocked(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    .line 525
    .local v1, "alarms":[Landroid/util/Pair;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 526
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/utils/quota/Uptc;

    .line 527
    .local v3, "uptc":Lcom/android/server/utils/quota/Uptc;
    iget v4, v3, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne p1, v4, :cond_0

    iget-object v4, v3, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Ljava/lang/Object;)Z

    .line 529
    const/4 v0, 0x1

    .line 525
    .end local v3    # "uptc":Lcom/android/server/utils/quota/Uptc;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 532
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 533
    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    .line 535
    :cond_2
    return-void
.end method
