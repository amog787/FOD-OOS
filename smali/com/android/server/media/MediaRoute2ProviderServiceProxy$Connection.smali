.class final Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderServiceProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mCallbackStub:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;

.field private final mService:Landroid/media/IMediaRoute2ProviderService;

.field final synthetic this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/media/IMediaRoute2ProviderService;)V
    .locals 0
    .param p2, "serviceBinder"    # Landroid/media/IMediaRoute2ProviderService;

    .line 470
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 472
    new-instance p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mCallbackStub:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;

    .line 473
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$000(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$U61JErYWTeaZ_zKSRsXmZ_kFwNU;

    invoke-direct {v1, p0}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$U61JErYWTeaZ_zKSRsXmZ_kFwNU;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 560
    return-void
.end method

.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IMediaRoute2ProviderService;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderSvcProxy"

    const-string v2, "deselectRoute: Failed to deliver request."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v0}, Landroid/media/IMediaRoute2ProviderService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 489
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mCallbackStub:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->dispose()V

    .line 490
    return-void
.end method

.method public synthetic lambda$binderDied$1$MediaRoute2ProviderServiceProxy$Connection()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$600(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    return-void
.end method

.method public synthetic lambda$postProviderStateUpdated$2$MediaRoute2ProviderServiceProxy$Connection(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 1
    .param p1, "providerInfo"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 563
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$500(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/MediaRoute2ProviderInfo;)V

    return-void
.end method

.method public synthetic lambda$postRequestFailed$6$MediaRoute2ProviderServiceProxy$Connection(JI)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 579
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$100(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V

    return-void
.end method

.method public synthetic lambda$postSessionCreated$3$MediaRoute2ProviderServiceProxy$Connection(JLandroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 567
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$400(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public synthetic lambda$postSessionReleased$5$MediaRoute2ProviderServiceProxy$Connection(Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 575
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$200(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public synthetic lambda$postSessionUpdated$4$MediaRoute2ProviderServiceProxy$Connection(Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 571
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$300(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public synthetic lambda$register$0$MediaRoute2ProviderServiceProxy$Connection()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$700(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    return-void
.end method

.method postProviderStateUpdated(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 2
    .param p1, "providerInfo"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 563
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$000(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$4_JlOl9xCAQ7elq_idYiT3dcHwg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$4_JlOl9xCAQ7elq_idYiT3dcHwg;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/MediaRoute2ProviderInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-void
.end method

.method postRequestFailed(JI)V
    .locals 2
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 579
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$000(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$tRx21HPm8BaIoW_iVfI6U-uQVIg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$tRx21HPm8BaIoW_iVfI6U-uQVIg;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 580
    return-void
.end method

.method postSessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .locals 2
    .param p1, "requestId"    # J
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 567
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$000(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method postSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 2
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 575
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$000(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$3AZx8oJiLPPGuHI21EnXlAmPHvg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$3AZx8oJiLPPGuHI21EnXlAmPHvg;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method

.method postSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 2
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 571
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$000(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$BuWKuzKTzGHQPfifsBDel9cAWro;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$BuWKuzKTzGHQPfifsBDel9cAWro;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    return-void
.end method

.method public register()Z
    .locals 3

    .line 477
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v1}, Landroid/media/IMediaRoute2ProviderService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 478
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mCallbackStub:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;

    invoke-interface {v1, v2}, Landroid/media/IMediaRoute2ProviderService;->setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V

    .line 479
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->access$000(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$U_BTIe58rmHBpviZrzm_tzuAjPo;

    invoke-direct {v2, p0}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$U_BTIe58rmHBpviZrzm_tzuAjPo;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    const/4 v0, 0x1

    return v0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->binderDied()V

    .line 484
    .end local v1    # "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public releaseSession(JLjava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderService;->releaseSession(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderSvcProxy"

    const-string/jumbo v2, "releaseSession: Failed to deliver request."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "requestId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .param p5, "sessionHints"    # Landroid/os/Bundle;

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/IMediaRoute2ProviderService;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderSvcProxy"

    const-string/jumbo v2, "requestCreateSession: Failed to deliver request."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IMediaRoute2ProviderService;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderSvcProxy"

    const-string/jumbo v2, "selectRoute: Failed to deliver request."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "routeId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IMediaRoute2ProviderService;->setRouteVolume(JLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderSvcProxy"

    const-string/jumbo v2, "setRouteVolume: Failed to deliver request."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IMediaRoute2ProviderService;->setSessionVolume(JLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderSvcProxy"

    const-string/jumbo v2, "setSessionVolume: Failed to deliver request."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IMediaRoute2ProviderService;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderSvcProxy"

    const-string/jumbo v2, "transferToRoute: Failed to deliver request."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .locals 3
    .param p1, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    invoke-interface {v0, p1}, Landroid/media/IMediaRoute2ProviderService;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderSvcProxy"

    const-string/jumbo v2, "updateDiscoveryPreference: Failed to deliver request."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
