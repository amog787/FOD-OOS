.class public Lcom/android/server/appprediction/RemoteAppPredictionService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteAppPredictionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/appprediction/RemoteAppPredictionService;",
        "Landroid/service/appprediction/IPredictionService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteAppPredictionService"

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x7d0L


# instance fields
.field private final mCallback:Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;ZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInterface"    # Ljava/lang/String;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;
    .param p6, "bindInstantServiceAllowed"    # Z
    .param p7, "verbose"    # Z

    .line 51
    nop

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 53
    if-eqz p6, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    const/4 v9, 0x1

    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 55
    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/appprediction/RemoteAppPredictionService;->mCallback:Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;

    .line 56
    return-void
.end method

.method static synthetic lambda$notifyAppTargetEvent$1(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;
    .param p2, "s"    # Landroid/service/appprediction/IPredictionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method static synthetic lambda$notifyLaunchLocationShown$2(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "launchLocation"    # Ljava/lang/String;
    .param p2, "targetIds"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "s"    # Landroid/service/appprediction/IPredictionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-interface {p3, p0, p1, p2}, Landroid/service/appprediction/IPredictionService;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static synthetic lambda$onCreatePredictionSession$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .param p0, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "s"    # Landroid/service/appprediction/IPredictionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "s"    # Landroid/service/appprediction/IPredictionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-interface {p1, p0}, Landroid/service/appprediction/IPredictionService;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$registerPredictionUpdates$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p2, "s"    # Landroid/service/appprediction/IPredictionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$requestPredictionUpdate$6(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "s"    # Landroid/service/appprediction/IPredictionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-interface {p1, p0}, Landroid/service/appprediction/IPredictionService;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$sortAppTargets$3(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p3, "s"    # Landroid/service/appprediction/IPredictionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-interface {p3, p0, p1, p2}, Landroid/service/appprediction/IPredictionService;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .param p2, "s"    # Landroid/service/appprediction/IPredictionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method


# virtual methods
.method protected getRemoteRequestMillis()J
    .locals 2

    .line 70
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/appprediction/IPredictionService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/appprediction/IPredictionService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 60
    invoke-static {p1}, Landroid/service/appprediction/IPredictionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/appprediction/IPredictionService;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .line 156
    iget-object v0, p0, Lcom/android/server/appprediction/RemoteAppPredictionService;->mCallback:Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;->onConnectedStateChanged(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 86
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$qroIh2ewx0BLP-J9XIAX2CaX8J4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$qroIh2ewx0BLP-J9XIAX2CaX8J4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 87
    return-void
.end method

.method public notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "launchLocation"    # Ljava/lang/String;
    .param p3, "targetIds"    # Landroid/content/pm/ParceledListSlice;

    .line 94
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$2EyTj40DnIRaUJU1GBU3r9jPAJg;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$2EyTj40DnIRaUJU1GBU3r9jPAJg;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 96
    return-void
.end method

.method public onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1
    .param p1, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 78
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$Ikwq62LQ8mos7hCBmykUhqvUq2Y;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$Ikwq62LQ8mos7hCBmykUhqvUq2Y;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 79
    return-void
.end method

.method public onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 134
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$dsYLGE9YRnrxNNkC1jG8ymCUr5Q;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$dsYLGE9YRnrxNNkC1jG8ymCUr5Q;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 135
    return-void
.end method

.method public registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 112
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$UaZoW5Y9AD8L3ktnyw-25jtnxhA;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$UaZoW5Y9AD8L3ktnyw-25jtnxhA;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 113
    return-void
.end method

.method public requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 127
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$9DCowUTEF8fYuBlWGxOmP5hTAWA;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$9DCowUTEF8fYuBlWGxOmP5hTAWA;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 128
    return-void
.end method

.method public sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 103
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$V2_zSuJJPrke_XrPl6iB-Ekw1Z4;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$V2_zSuJJPrke_XrPl6iB-Ekw1Z4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 104
    return-void
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 120
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$sQgYVaCXRIosCYaNa7w5ZuNn7u8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$sQgYVaCXRIosCYaNa7w5ZuNn7u8;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 121
    return-void
.end method
