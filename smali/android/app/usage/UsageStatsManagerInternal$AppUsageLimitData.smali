.class public Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStatsManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppUsageLimitData"
.end annotation


# instance fields
.field private final mTotalUsageLimit:J

.field private final mUsageRemaining:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "totalUsageLimit"    # J
    .param p3, "usageRemaining"    # J

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-wide p1, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    .line 299
    iput-wide p3, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    .line 300
    return-void
.end method


# virtual methods
.method public getTotalUsageLimit()J
    .locals 2

    .line 303
    iget-wide v0, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    return-wide v0
.end method

.method public getUsageRemaining()J
    .locals 2

    .line 306
    iget-wide v0, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    return-wide v0
.end method
