.class final Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;
.super Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;
.source "MediaRoute2ProviderServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCallbackStub"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 587
    invoke-direct {p0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;-><init>()V

    .line 588
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 589
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 593
    return-void
.end method

.method public notifyRequestFailed(JI)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 629
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 630
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postRequestFailed(JI)V

    .line 633
    :cond_0
    return-void
.end method

.method public notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 605
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 606
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionCreated(JLandroid/media/RoutingSessionInfo;)V

    .line 609
    :cond_0
    return-void
.end method

.method public notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 621
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 622
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 625
    :cond_0
    return-void
.end method

.method public notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 613
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 614
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionUpdated(Landroid/media/RoutingSessionInfo;)V

    .line 617
    :cond_0
    return-void
.end method

.method public updateState(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 1
    .param p1, "providerInfo"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 597
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 598
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postProviderStateUpdated(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 601
    :cond_0
    return-void
.end method
