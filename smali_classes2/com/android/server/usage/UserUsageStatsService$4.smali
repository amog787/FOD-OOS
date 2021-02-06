.class Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI)Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
        "Landroid/app/usage/UsageEvents$Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$beginTime:J

.field final synthetic val$endTime:J

.field final synthetic val$flags:I

.field final synthetic val$names:Landroid/util/ArraySet;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJILandroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UserUsageStatsService;

    .line 506
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    iput p6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    iput-object p7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 8
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "mutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p3, "accumulatedResult":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-wide v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    invoke-virtual {v0, v1, v2}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 511
    .local v0, "startIndex":I
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 512
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_a

    .line 513
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 518
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    iget v4, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 519
    .local v4, "eventType":I
    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    iget v6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1

    .line 521
    goto :goto_1

    .line 523
    :cond_1
    const/16 v6, 0x1e

    if-ne v4, v6, :cond_2

    iget v6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_2

    .line 525
    goto :goto_1

    .line 527
    :cond_2
    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    :cond_3
    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    .line 531
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 533
    :cond_4
    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_5

    .line 534
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 536
    :cond_5
    iget-object v5, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 537
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_6
    iget-object v5, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 540
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_7
    iget-object v5, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 543
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_8
    iget-object v5, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 546
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_9
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v4    # "eventType":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v2    # "i":I
    :cond_a
    return-void
.end method
