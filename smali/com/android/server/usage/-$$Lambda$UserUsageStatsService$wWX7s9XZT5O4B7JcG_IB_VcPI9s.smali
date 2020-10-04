.class public final synthetic Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:J

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/util/ArraySet;

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$0:J

    iput-wide p3, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$1:J

    iput-object p5, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$2:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$3:Landroid/util/ArraySet;

    iput-boolean p7, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$4:Z

    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 10

    iget-wide v0, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$0:J

    iget-wide v2, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$1:J

    iget-object v4, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$2:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$3:Landroid/util/ArraySet;

    iget-boolean v6, p0, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;->f$4:Z

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->lambda$queryEventsForPackage$0(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    return-void
.end method
