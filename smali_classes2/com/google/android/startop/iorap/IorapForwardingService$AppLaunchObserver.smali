.class Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;
.super Ljava/lang/Object;
.source "IorapForwardingService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IorapForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLaunchObserver"
.end annotation


# instance fields
.field private mSequenceId:J

.field final synthetic this$0:Lcom/google/android/startop/iorap/IorapForwardingService;


# direct methods
.method private constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V
    .locals 2

    .line 336
    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/IorapForwardingService$1;

    .line 336
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityLaunchCancelled$3$IorapForwardingService$AppLaunchObserver([BLcom/google/android/startop/iorap/IIorap;)V
    .locals 4
    .param p1, "activity"    # [B
    .param p2, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;-><init>(J[B)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onActivityLaunchFinished$4$IorapForwardingService$AppLaunchObserver([BJLcom/google/android/startop/iorap/IIorap;)V
    .locals 8
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J
    .param p4, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v0

    new-instance v7, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    move-object v1, v7

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;-><init>(J[BJ)V

    invoke-interface {p4, v0, v7}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onActivityLaunched$2$IorapForwardingService$AppLaunchObserver([BILcom/google/android/startop/iorap/IIorap;)V
    .locals 4
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I
    .param p3, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;-><init>(J[BI)V

    invoke-interface {p3, v0, v1}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onIntentFailed$1$IorapForwardingService$AppLaunchObserver(Lcom/google/android/startop/iorap/IIorap;)V
    .locals 4
    .param p1, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentFailed;

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentFailed;-><init>(J)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onIntentStarted$0$IorapForwardingService$AppLaunchObserver(Landroid/content/Intent;JLcom/google/android/startop/iorap/IIorap;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J
    .param p4, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v0

    new-instance v7, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    move-object v1, v7

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;-><init>(JLandroid/content/Intent;J)V

    invoke-interface {p4, v0, v7}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onReportFullyDrawn$5$IorapForwardingService$AppLaunchObserver([BJLcom/google/android/startop/iorap/IIorap;)V
    .locals 8
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J
    .param p4, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v0

    new-instance v7, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    move-object v1, v7

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/startop/iorap/AppLaunchEvent$ReportFullyDrawn;-><init>(J[BJ)V

    invoke-interface {p4, v0, v7}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public onActivityLaunchCancelled([B)V
    .locals 4
    .param p1, "activity"    # [B

    .line 390
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 392
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 391
    const-string v1, "AppLaunchObserver#onActivityLaunchCancelled(%d, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$elqG7IabJdUOCjFWiPV8vgrXnVI;

    invoke-direct {v1, p0, p1}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$elqG7IabJdUOCjFWiPV8vgrXnVI;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[B)V

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    .line 400
    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .locals 4
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 405
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 407
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 406
    const-string v1, "AppLaunchObserver#onActivityLaunchFinished(%d, %s, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[BJ)V

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    .line 417
    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 4
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 376
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 378
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    const-string v1, "AppLaunchObserver#onActivityLaunched(%d, %s, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[BI)V

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    .line 386
    return-void
.end method

.method public onIntentFailed()V
    .locals 4

    .line 362
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AppLaunchObserver#onIntentFailed(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$qed0q0aplGsIh0O7dSm6JWk8wZI;

    invoke-direct {v1, p0}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$qed0q0aplGsIh0O7dSm6JWk8wZI;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;)V

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    .line 371
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 346
    iget-wide v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 348
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 350
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 349
    const-string v1, "AppLaunchObserver#onIntentStarted(%d, %s, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$6ikxM-3KospNGDidAY7yA-rECHw;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$6ikxM-3KospNGDidAY7yA-rECHw;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;Landroid/content/Intent;J)V

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    .line 358
    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .locals 4
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 422
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 424
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 423
    const-string v1, "AppLaunchObserver#onReportFullyDrawn(%d, %s, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    new-instance v1, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$bprgjb2FWBxwWDJr-Q4ViVP0aJc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$bprgjb2FWBxwWDJr-Q4ViVP0aJc;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[BJ)V

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    .line 432
    return-void
.end method
