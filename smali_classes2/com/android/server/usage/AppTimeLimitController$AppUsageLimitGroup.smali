.class Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppUsageLimitGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p2, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p3, "observerApp"    # Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .param p4, "observerId"    # I
    .param p5, "observed"    # [Ljava/lang/String;
    .param p6, "timeLimitMs"    # J
    .param p8, "timeUsedMs"    # J
    .param p10, "limitReachedCallback"    # Landroid/app/PendingIntent;

    .line 515
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 516
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 517
    move-wide/from16 v0, p8

    iput-wide v0, v9, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mUsageTimeMs:J

    .line 518
    return-void
.end method


# virtual methods
.method getTotaUsageLimit()J
    .locals 2

    .line 532
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mTimeLimitMs:J

    return-wide v0
.end method

.method getUsageRemaining()J
    .locals 6

    .line 538
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mActives:I

    if-lez v0, :cond_0

    .line 539
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mTimeLimitMs:J

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mUsageTimeMs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mLastKnownUsageTimeMs:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    .line 541
    :cond_0
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mTimeLimitMs:J

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mUsageTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public remove()V
    .locals 2

    .line 523
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 524
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 525
    .local v0, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    if-eqz v0, :cond_0

    .line 526
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserverId:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->removeAppUsageLimitGroup(I)V

    .line 528
    :cond_0
    return-void
.end method
