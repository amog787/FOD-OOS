.class Lcom/android/server/usage/UserUsageStatsService$6;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V
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

.field final synthetic val$pkgs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UserUsageStatsService;

    .line 921
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$6;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$beginTime:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$endTime:J

    iput-object p6, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$pkgs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 7
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

    .line 925
    .local p3, "accumulatedResult":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-wide v1, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$beginTime:J

    invoke-virtual {v0, v1, v2}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 926
    .local v0, "startIndex":I
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 927
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 928
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$endTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 929
    return-void

    .line 932
    :cond_0
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 933
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$pkgs:Ljava/util/List;

    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$pkgs:Ljava/util/List;

    iget-object v5, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 934
    goto :goto_1

    .line 936
    :cond_1
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 938
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
