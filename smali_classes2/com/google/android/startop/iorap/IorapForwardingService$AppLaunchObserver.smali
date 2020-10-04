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

    .line 263
    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/IorapForwardingService$1;

    .line 263
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityLaunchCancelled$3$IorapForwardingService$AppLaunchObserver([B)V
    .locals 5
    .param p1, "activity"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$300(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v1

    new-instance v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;

    iget-wide v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;-><init>(J[B)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onActivityLaunchFinished$4$IorapForwardingService$AppLaunchObserver([B)V
    .locals 5
    .param p1, "activity"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$300(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v1

    new-instance v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;

    iget-wide v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;-><init>(J[B)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onActivityLaunched$2$IorapForwardingService$AppLaunchObserver([BI)V
    .locals 5
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$300(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v1

    new-instance v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;

    iget-wide v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-direct {v2, v3, v4, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;-><init>(J[BI)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onIntentFailed$1$IorapForwardingService$AppLaunchObserver()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$300(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v1

    new-instance v2, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentFailed;

    iget-wide v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-direct {v2, v3, v4}, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentFailed;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public synthetic lambda$onIntentStarted$0$IorapForwardingService$AppLaunchObserver(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$300(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v1

    new-instance v2, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;

    iget-wide v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$IntentStarted;-><init>(JLandroid/content/Intent;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    return-void
.end method

.method public onActivityLaunchCancelled([B)V
    .locals 4
    .param p1, "activity"    # [B

    .line 314
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 316
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 315
    const-string v1, "AppLaunchObserver#onActivityLaunchCancelled(%d, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    new-instance v0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$RQgRTe7AkW8YeCxIA_z8NLuEhNE;

    invoke-direct {v0, p0, p1}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$RQgRTe7AkW8YeCxIA_z8NLuEhNE;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[B)V

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$200(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    .line 323
    return-void
.end method

.method public onActivityLaunchFinished([B)V
    .locals 4
    .param p1, "activity"    # [B

    .line 327
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 329
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 328
    const-string v1, "AppLaunchObserver#onActivityLaunchFinished(%d, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    new-instance v0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$PpBaZ7ewYnNhOxRNE7FOesPnTOE;

    invoke-direct {v0, p0, p1}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$PpBaZ7ewYnNhOxRNE7FOesPnTOE;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[B)V

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$200(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    .line 336
    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 4
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 301
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 302
    const-string v1, "AppLaunchObserver#onActivityLaunched(%d, %s, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    new-instance v0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$OnievfJDqzAD_wVaScGowAqIDbo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$OnievfJDqzAD_wVaScGowAqIDbo;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[BI)V

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$200(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    .line 310
    return-void
.end method

.method public onIntentFailed()V
    .locals 4

    .line 288
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 289
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

    .line 292
    :cond_0
    new-instance v0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$oJmTSQGqnxFQdlesx2pP7kUlasM;

    invoke-direct {v0, p0}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$oJmTSQGqnxFQdlesx2pP7kUlasM;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;)V

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$200(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    .line 296
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 273
    iget-wide v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 275
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->mSequenceId:J

    .line 277
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 276
    const-string v1, "AppLaunchObserver#onIntentStarted(%d, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    new-instance v0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$u_UKVYknAlZkgsiOa6tZ-3aJvmY;

    invoke-direct {v0, p0, p1}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$u_UKVYknAlZkgsiOa6tZ-3aJvmY;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$200(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    .line 284
    return-void
.end method
