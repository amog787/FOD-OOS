.class Lcom/android/server/ConnectivityService$NetworkProviderInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkProviderInfo"
.end annotation


# instance fields
.field private final mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final messenger:Landroid/os/Messenger;

.field public final name:Ljava/lang/String;

.field public final providerId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;ILandroid/os/IBinder$DeathRecipient;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "asyncChannel"    # Lcom/android/internal/util/AsyncChannel;
    .param p4, "providerId"    # I
    .param p5, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 5642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5643
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->name:Ljava/lang/String;

    .line 5644
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    .line 5645
    iput p4, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->providerId:I

    .line 5646
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 5647
    iput-object p5, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 5649
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 5652
    return-void

    .line 5650
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must pass exactly one of asyncChannel or deathRecipient"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method cancelRequest(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 5678
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 5679
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 5681
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0, p1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->sendMessageToNetworkProvider(IIILjava/lang/Object;)V

    .line 5683
    :goto_0
    return-void
.end method

.method completeConnection()V
    .locals 2

    .line 5698
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5699
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 5701
    :cond_0
    return-void
.end method

.method connect(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5686
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5687
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    .line 5690
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5693
    goto :goto_0

    .line 5691
    :catch_0
    move-exception v0

    .line 5692
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    .line 5695
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method isLegacyNetworkFactory()Z
    .locals 1

    .line 5655
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method requestNetwork(Landroid/net/NetworkRequest;II)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I
    .param p3, "servingProviderId"    # I

    .line 5668
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5669
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 5672
    :cond_0
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->sendMessageToNetworkProvider(IIILjava/lang/Object;)V

    .line 5675
    :goto_0
    return-void
.end method

.method sendMessageToNetworkProvider(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 5660
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5664
    goto :goto_0

    .line 5661
    :catch_0
    move-exception v0

    .line 5665
    :goto_0
    return-void
.end method
