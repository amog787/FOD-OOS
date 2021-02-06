.class Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppIdleHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppUsageHistory"
.end annotation


# instance fields
.field bucketActiveTimeoutTime:J

.field bucketWorkingSetTimeoutTime:J

.field bucketingReason:I

.field currentBucket:I

.field lastInformedBucket:I

.field lastJobRunTime:J

.field lastPredictedBucket:I

.field lastPredictedTime:J

.field lastRestrictAttemptElapsedTime:J

.field lastRestrictReason:I

.field lastUsedByUserElapsedTime:J

.field lastUsedElapsedTime:J

.field lastUsedScreenTime:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    return-void
.end method
