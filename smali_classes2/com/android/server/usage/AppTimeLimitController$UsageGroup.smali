.class abstract Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "UsageGroup"
.end annotation


# instance fields
.field protected mActives:I

.field protected mLastKnownUsageTimeMs:J

.field protected mLastUsageEndTimeMs:J

.field protected mLimitReachedCallback:Landroid/app/PendingIntent;

.field protected mObserved:[Ljava/lang/String;

.field protected mObserverAppRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;",
            ">;"
        }
    .end annotation
.end field

.field protected mObserverId:I

.field protected mTimeLimitMs:J

.field protected mUsageTimeMs:J

.field protected mUserRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p2, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p3, "observerApp"    # Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .param p4, "observerId"    # I
    .param p5, "observed"    # [Ljava/lang/String;
    .param p6, "timeLimitMs"    # J
    .param p8, "limitReachedCallback"    # Landroid/app/PendingIntent;

    .line 259
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    .line 261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    .line 262
    iput p4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    .line 263
    iput-object p5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 264
    iput-wide p6, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    .line 265
    iput-object p8, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    .line 266
    return-void
.end method


# virtual methods
.method checkTimeout(J)V
    .locals 8
    .param p1, "currentTimeMs"    # J

    .line 351
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 352
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v1, v3

    .line 359
    .local v1, "timeRemainingMs":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    return-void

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->isActive([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long v3, p1, v3

    .line 371
    .local v3, "timeUsedMs":J
    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 374
    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 375
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 376
    iget-object v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v5, p0}, Lcom/android/server/usage/AppTimeLimitController;->access$200(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    sub-long v6, v1, v3

    invoke-static {v5, p0, v6, v7}, Lcom/android/server/usage/AppTimeLimitController;->access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 383
    .end local v3    # "timeUsedMs":J
    :cond_3
    :goto_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 397
    const-string v0, "        Group id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    const-string v0, " timeLimit="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 401
    const-string v0, " used="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 403
    const-string v0, " lastKnownUsage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 405
    const-string v0, " mActives="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 407
    const-string v0, " observed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public getTimeLimitMs()J
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    return-wide v0
.end method

.method public getUsageTimeMs()J
    .locals 2

    .line 272
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    return-wide v0
.end method

.method noteUsageStart(J)V
    .locals 0
    .param p1, "startTimeMs"    # J

    .line 286
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    .line 287
    return-void
.end method

.method noteUsageStart(JJ)V
    .locals 4
    .param p1, "startTimeMs"    # J
    .param p3, "currentTimeMs"    # J

    .line 291
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez v0, :cond_2

    .line 297
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    move-wide p1, v0

    .line 298
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 299
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, p3

    add-long/2addr v0, p1

    .line 301
    .local v0, "timeRemaining":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 308
    .end local v0    # "timeRemaining":J
    :cond_1
    goto :goto_1

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v2, v0

    if-le v1, v2, :cond_4

    .line 311
    array-length v0, v0

    iput v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 312
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 313
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_3

    return-void

    .line 314
    :cond_3
    iget-object v1, v0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 315
    .local v1, "array":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many noted usage starts! Observed entities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 316
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   Active Entities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    const-string v3, "AppTimeLimitController"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1    # "array":[Ljava/lang/Object;
    :cond_4
    :goto_1
    return-void
.end method

.method noteUsageStop(J)V
    .locals 7
    .param p1, "stopTimeMs"    # J

    .line 324
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 325
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 326
    .local v0, "limitNotCrossed":Z
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 328
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    .line 329
    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1, p0}, Lcom/android/server/usage/AppTimeLimitController;->access$200(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1, p0}, Lcom/android/server/usage/AppTimeLimitController;->access$300(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 335
    .end local v0    # "limitNotCrossed":Z
    goto :goto_1

    .line 336
    :cond_2
    if-gez v0, :cond_4

    .line 338
    iput v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 339
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 340
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_3

    return-void

    .line 341
    :cond_3
    iget-object v1, v0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 342
    .local v1, "array":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many noted usage stops! Observed entities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 343
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   Active Entities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    const-string v3, "AppTimeLimitController"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1    # "array":[Ljava/lang/Object;
    :cond_4
    :goto_1
    return-void
.end method

.method public onLimitReached()V
    .locals 10

    .line 387
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 388
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v4

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v7, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-object v9, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v9}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;->onLimitReached(IIJJLandroid/app/PendingIntent;)V

    .line 393
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 277
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->removeUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 281
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    .line 282
    return-void
.end method
