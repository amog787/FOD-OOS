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

    .line 46
    nop

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 48
    if-eqz p6, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    const/4 v9, 0x1

    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 50
    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/appprediction/RemoteAppPredictionService;->mCallback:Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;

    .line 51
    return-void
.end method


# virtual methods
.method public executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/appprediction/IPredictionService;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<Landroid/service/appprediction/IPredictionService;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 87
    return-void
.end method

.method protected getRemoteRequestMillis()J
    .locals 2

    .line 65
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/appprediction/IPredictionService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/appprediction/IPredictionService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 55
    invoke-static {p1}, Landroid/service/appprediction/IPredictionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/appprediction/IPredictionService;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/server/appprediction/RemoteAppPredictionService;->mCallback:Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;->onConnectedStateChanged(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public reconnect()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    .line 73
    return-void
.end method

.method public scheduleOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/appprediction/IPredictionService;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<Landroid/service/appprediction/IPredictionService;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 80
    return-void
.end method
