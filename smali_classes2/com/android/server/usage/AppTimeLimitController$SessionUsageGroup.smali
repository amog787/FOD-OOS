.class Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionUsageGroup"
.end annotation


# instance fields
.field private mNewSessionThresholdMs:J

.field private mSessionEndCallback:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p2, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p3, "observerApp"    # Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .param p4, "observerId"    # I
    .param p5, "observed"    # [Ljava/lang/String;
    .param p6, "timeLimitMs"    # J
    .param p8, "limitReachedCallback"    # Landroid/app/PendingIntent;
    .param p9, "newSessionThresholdMs"    # J
    .param p11, "sessionEndCallback"    # Landroid/app/PendingIntent;

    .line 443
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 444
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 445
    iput-wide p9, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    .line 446
    iput-object p11, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    .line 447
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 504
    invoke-super {p0, p1}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->dump(Ljava/io/PrintWriter;)V

    .line 505
    const-string v0, " lastUsageEndTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mLastUsageEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 507
    const-string v0, " newSessionThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 509
    return-void
.end method

.method public noteUsageStart(JJ)V
    .locals 4
    .param p1, "startTimeMs"    # J
    .param p3, "currentTimeMs"    # J

    .line 464
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mActives:I

    if-nez v0, :cond_1

    .line 465
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mLastUsageEndTimeMs:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 467
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mUsageTimeMs:J

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v0, p0}, Lcom/android/server/usage/AppTimeLimitController;->access$600(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V

    .line 471
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    .line 472
    return-void
.end method

.method public noteUsageStop(J)V
    .locals 4
    .param p1, "stopTimeMs"    # J

    .line 477
    invoke-super {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    .line 478
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mActives:I

    if-nez v0, :cond_0

    .line 479
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mUsageTimeMs:J

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mTimeLimitMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    invoke-static {v0, p0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->access$700(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V

    .line 487
    :cond_0
    return-void
.end method

.method public onSessionEnd()V
    .locals 8

    .line 491
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 492
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mObserverId:I

    .line 495
    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v4

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mUsageTimeMs:J

    iget-object v7, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    .line 494
    invoke-interface/range {v2 .. v7}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;->onSessionEnd(IIJLandroid/app/PendingIntent;)V

    .line 499
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 2

    .line 452
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 453
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 454
    .local v0, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    if-eqz v0, :cond_0

    .line 455
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mObserverId:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->removeSessionUsageGroup(I)V

    .line 458
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    .line 459
    return-void
.end method
