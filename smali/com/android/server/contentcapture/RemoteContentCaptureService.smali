.class final Lcom/android/server/contentcapture/RemoteContentCaptureService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentcapture/RemoteContentCaptureService$ContentCaptureServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/contentcapture/RemoteContentCaptureService;",
        "Landroid/service/contentcapture/IContentCaptureService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIdleUnbindTimeoutMs:I

.field private final mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

.field private final mServerCallback:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/contentcapture/IContentCaptureServiceCallback;ILcom/android/server/contentcapture/ContentCapturePerUserService;ZZI)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInterface"    # Ljava/lang/String;
    .param p3, "serviceComponentName"    # Landroid/content/ComponentName;
    .param p4, "callback"    # Landroid/service/contentcapture/IContentCaptureServiceCallback;
    .param p5, "userId"    # I
    .param p6, "perUserService"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;
    .param p7, "bindInstantServiceAllowed"    # Z
    .param p8, "verbose"    # Z
    .param p9, "idleUnbindTimeoutMs"    # I

    .line 55
    move-object v10, p0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 58
    if-eqz p7, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit16 v7, v0, 0x1000

    const/4 v9, 0x2

    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 61
    move-object/from16 v0, p6

    iput-object v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 62
    invoke-interface {p4}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mServerCallback:Landroid/os/IBinder;

    .line 63
    move/from16 v1, p9

    iput v1, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    .line 66
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->ensureBoundLocked()V

    .line 67
    return-void
.end method

.method static synthetic lambda$onActivityLifecycleEvent$5(Landroid/service/contentcapture/ActivityEvent;Landroid/service/contentcapture/IContentCaptureService;)V
    .locals 0
    .param p0, "event"    # Landroid/service/contentcapture/ActivityEvent;
    .param p1, "s"    # Landroid/service/contentcapture/IContentCaptureService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method static synthetic lambda$onActivitySnapshotRequest$2(ILandroid/service/contentcapture/SnapshotData;Landroid/service/contentcapture/IContentCaptureService;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;
    .param p2, "s"    # Landroid/service/contentcapture/IContentCaptureService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-interface {p2, p0, p1}, Landroid/service/contentcapture/IContentCaptureService;->onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method static synthetic lambda$onDataRemovalRequest$3(Landroid/view/contentcapture/DataRemovalRequest;Landroid/service/contentcapture/IContentCaptureService;)V
    .locals 0
    .param p0, "request"    # Landroid/view/contentcapture/DataRemovalRequest;
    .param p1, "s"    # Landroid/service/contentcapture/IContentCaptureService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method static synthetic lambda$onDataShareRequest$4(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;Landroid/service/contentcapture/IContentCaptureService;)V
    .locals 0
    .param p0, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p1, "dataShareCallback"    # Landroid/service/contentcapture/IDataShareCallback$Stub;
    .param p2, "s"    # Landroid/service/contentcapture/IContentCaptureService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-interface {p2, p0, p1}, Landroid/service/contentcapture/IContentCaptureService;->onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method static synthetic lambda$onSessionFinished$1(ILandroid/service/contentcapture/IContentCaptureService;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "s"    # Landroid/service/contentcapture/IContentCaptureService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onSessionFinished(I)V

    return-void
.end method

.method static synthetic lambda$onSessionStarted$0(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;ILandroid/service/contentcapture/IContentCaptureService;)V
    .locals 6
    .param p0, "context"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .param p3, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p4, "initialState"    # I
    .param p5, "s"    # Landroid/service/contentcapture/IContentCaptureService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method


# virtual methods
.method public ensureBoundLocked()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleBind()V

    .line 109
    return-void
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 71
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    .line 76
    iget v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleUnbind()V

    .line 85
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/contentcapture/IContentCaptureService;

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mServerCallback:Landroid/os/IBinder;

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-interface {v0, v1, v2, v3}, Landroid/service/contentcapture/IContentCaptureService;->onConnected(Landroid/os/IBinder;ZZ)V

    .line 88
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onConnected()V

    .line 95
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onConnected()V

    .line 95
    nop

    .end local p0    # "this":Lcom/android/server/contentcapture/RemoteContentCaptureService;
    .end local p1    # "connected":Z
    throw v0

    .line 97
    .restart local p0    # "this":Lcom/android/server/contentcapture/RemoteContentCaptureService;
    .restart local p1    # "connected":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/contentcapture/IContentCaptureService;

    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureService;->onDisconnected()V

    .line 98
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :goto_0
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling onConnectedStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onActivityLifecycleEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/service/contentcapture/ActivityEvent;

    .line 168
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$12wkbjo54EUwTPFKOuEn42KWKFg;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$12wkbjo54EUwTPFKOuEn42KWKFg;-><init>(Landroid/service/contentcapture/ActivityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 169
    return-void
.end method

.method public onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;

    .line 143
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;-><init>(ILandroid/service/contentcapture/SnapshotData;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 144
    return-void
.end method

.method public onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 150
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$haMfPWsaVUWwKcAPgM3AadAkvOQ;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$haMfPWsaVUWwKcAPgM3AadAkvOQ;-><init>(Landroid/view/contentcapture/DataRemovalRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 154
    return-void
.end method

.method public onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V
    .locals 3
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "dataShareCallback"    # Landroid/service/contentcapture/IDataShareCallback$Stub;

    .line 158
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$_mh-Du6CgOoVdmP9EpDMBTIRjro;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$_mh-Du6CgOoVdmP9EpDMBTIRjro;-><init>(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mComponentName:Landroid/content/ComponentName;

    .line 161
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 159
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onSessionFinished(I)V
    .locals 7
    .param p1, "sessionId"    # I

    .line 131
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$QbbzaxOFnxJI34vQptxzLE9Vvog;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$QbbzaxOFnxJI34vQptxzLE9Vvog;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 133
    nop

    .line 135
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 133
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 137
    return-void
.end method

.method public onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .locals 7
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "sessionId"    # I
    .param p3, "uid"    # I
    .param p4, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p5, "initialState"    # I

    .line 117
    new-instance v6, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$PMsA3CmwChlM0Qy__Uy6Yr5CFzk;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$PMsA3CmwChlM0Qy__Uy6Yr5CFzk;-><init>(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    invoke-virtual {p0, v6}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 120
    nop

    .line 122
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureContext;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 120
    const/4 v1, 0x1

    const/4 v5, 0x0

    move v0, p2

    move v2, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 124
    return-void
.end method
