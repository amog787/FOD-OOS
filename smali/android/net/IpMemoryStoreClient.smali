.class public abstract Landroid/net/IpMemoryStoreClient;
.super Ljava/lang/Object;
.source "IpMemoryStoreClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpMemoryStoreClient$ThrowingRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Landroid/net/IpMemoryStoreClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient;->mContext:Landroid/content/Context;

    .line 48
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 1
    .param p1, "r"    # Landroid/net/IpMemoryStoreClient$ThrowingRunnable;

    .line 59
    const-string v0, "Failed to execute remote procedure call"

    invoke-direct {p0, v0, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    .line 60
    return-void
.end method

.method private ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/net/IpMemoryStoreClient$ThrowingRunnable;

    .line 64
    :try_start_0
    invoke-interface {p2}, Landroid/net/IpMemoryStoreClient$ThrowingRunnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$factoryReset$18(Landroid/net/IIpMemoryStore;)V
    .locals 0
    .param p0, "service"    # Landroid/net/IIpMemoryStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->factoryReset()V

    return-void
.end method

.method static synthetic lambda$findL2Key$6(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 2
    .param p0, "service"    # Landroid/net/IIpMemoryStore;
    .param p1, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributes;
    .param p2, "listener"    # Landroid/net/ipmemorystore/OnL2KeyResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Landroid/net/ipmemorystore/NetworkAttributes;->toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object v0

    .line 142
    invoke-static {p2}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object v1

    .line 141
    invoke-interface {p0, v0, v1}, Landroid/net/IIpMemoryStore;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V

    return-void
.end method

.method static synthetic lambda$findL2Key$8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnL2KeyResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->onL2KeyResponse(Landroid/net/ipmemorystore/Status;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isSameNetwork$11(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/Status;Landroid/net/ipmemorystore/SameL3NetworkResponse;)V

    return-void
.end method

.method static synthetic lambda$isSameNetwork$9(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 1
    .param p0, "service"    # Landroid/net/IIpMemoryStore;
    .param p1, "l2Key1"    # Ljava/lang/String;
    .param p2, "l2Key2"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    nop

    .line 163
    invoke-static {p3}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v0

    .line 162
    invoke-interface {p0, p1, p2, v0}, Landroid/net/IIpMemoryStore;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V

    return-void
.end method

.method static synthetic lambda$retrieveBlob$15(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 1
    .param p0, "service"    # Landroid/net/IIpMemoryStore;
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/net/ipmemorystore/OnBlobRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    nop

    .line 208
    invoke-static {p4}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v0

    .line 207
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/net/IIpMemoryStore;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V

    return-void
.end method

.method static synthetic lambda$retrieveBlob$17(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnBlobRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, v1}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V

    return-void
.end method

.method static synthetic lambda$retrieveNetworkAttributes$12(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 1
    .param p0, "service"    # Landroid/net/IIpMemoryStore;
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    nop

    .line 184
    invoke-static {p2}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object v0

    .line 183
    invoke-interface {p0, p1, v0}, Landroid/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    return-void
.end method

.method static synthetic lambda$retrieveNetworkAttributes$14(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V

    return-void
.end method

.method static synthetic lambda$storeBlob$3(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 6
    .param p0, "service"    # Landroid/net/IIpMemoryStore;
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/ipmemorystore/Blob;
    .param p5, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    nop

    .line 116
    invoke-static {p5}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v5

    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/IIpMemoryStore;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method static synthetic lambda$storeBlob$5(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method

.method static synthetic lambda$storeNetworkAttributes$0(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .param p0, "service"    # Landroid/net/IIpMemoryStore;
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributes;
    .param p3, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p2}, Landroid/net/ipmemorystore/NetworkAttributes;->toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object v0

    .line 92
    invoke-static {p3}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v1

    .line 91
    invoke-interface {p0, p1, v0, v1}, Landroid/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method static synthetic lambda$storeNetworkAttributes$2(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method


# virtual methods
.method public factoryReset()V
    .locals 3

    .line 221
    :try_start_0
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$jkIRcIYXFgUFqiYMobpnQ9tj1vc;

    invoke-direct {v0, p0}, Landroid/net/-$$Lambda$IpMemoryStoreClient$jkIRcIYXFgUFqiYMobpnQ9tj1vc;-><init>(Landroid/net/IpMemoryStoreClient;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "m":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    const-string v2, "Error executing factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v0    # "m":Ljava/util/concurrent/ExecutionException;
    :goto_0
    return-void
.end method

.method public findL2Key(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 3
    .param p1, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributes;
    .param p2, "listener"    # Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    .line 140
    :try_start_0
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;-><init>(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "m":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroid/net/-$$Lambda$IpMemoryStoreClient$xx1upXTRGTVc0003KEhaxwIwwN8;

    invoke-direct {v1, p2}, Landroid/net/-$$Lambda$IpMemoryStoreClient$xx1upXTRGTVc0003KEhaxwIwwN8;-><init>(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    const-string v2, "Error finding L2 Key"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    .line 147
    .end local v0    # "m":Ljava/util/concurrent/ExecutionException;
    :goto_0
    return-void
.end method

.method public isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 3
    .param p1, "l2Key1"    # Ljava/lang/String;
    .param p2, "l2Key2"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    .line 161
    :try_start_0
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$uHUebZ3pZ1jD5N1tZNdyTy8zBCE;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/-$$Lambda$IpMemoryStoreClient$uHUebZ3pZ1jD5N1tZNdyTy8zBCE;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "m":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroid/net/-$$Lambda$IpMemoryStoreClient$V28n1xp79cKTZf0npS-vzf7FUo8;

    invoke-direct {v1, p3}, Landroid/net/-$$Lambda$IpMemoryStoreClient$V28n1xp79cKTZf0npS-vzf7FUo8;-><init>(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    const-string v2, "Error checking for network sameness"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    .line 168
    .end local v0    # "m":Ljava/util/concurrent/ExecutionException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$factoryReset$19$IpMemoryStoreClient(Landroid/net/IIpMemoryStore;)V
    .locals 1
    .param p1, "service"    # Landroid/net/IIpMemoryStore;

    .line 221
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$y9CML5-H8l7LhlZfPXBMWllilSs;

    invoke-direct {v0, p1}, Landroid/net/-$$Lambda$IpMemoryStoreClient$y9CML5-H8l7LhlZfPXBMWllilSs;-><init>(Landroid/net/IIpMemoryStore;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$findL2Key$7$IpMemoryStoreClient(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 1
    .param p1, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributes;
    .param p2, "listener"    # Landroid/net/ipmemorystore/OnL2KeyResponseListener;
    .param p3, "service"    # Landroid/net/IIpMemoryStore;

    .line 140
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;

    invoke-direct {v0, p3, p1, p2}, Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;-><init>(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$isSameNetwork$10$IpMemoryStoreClient(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 1
    .param p1, "l2Key1"    # Ljava/lang/String;
    .param p2, "l2Key2"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;
    .param p4, "service"    # Landroid/net/IIpMemoryStore;

    .line 161
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$retrieveBlob$16$IpMemoryStoreClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 7
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/net/ipmemorystore/OnBlobRetrievedListener;
    .param p5, "service"    # Landroid/net/IIpMemoryStore;

    .line 206
    new-instance v6, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;

    move-object v0, v6

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    invoke-direct {p0, v6}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$retrieveNetworkAttributes$13$IpMemoryStoreClient(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 1
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;
    .param p3, "service"    # Landroid/net/IIpMemoryStore;

    .line 182
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$Uc0QFR5a_MhzwuvUoWpz73NAAEs;

    invoke-direct {v0, p3, p1, p2}, Landroid/net/-$$Lambda$IpMemoryStoreClient$Uc0QFR5a_MhzwuvUoWpz73NAAEs;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$storeBlob$4$IpMemoryStoreClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 8
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/ipmemorystore/Blob;
    .param p5, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;
    .param p6, "service"    # Landroid/net/IIpMemoryStore;

    .line 114
    new-instance v7, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;

    move-object v0, v7

    move-object v1, p6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v7}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$storeNetworkAttributes$1$IpMemoryStoreClient(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 1
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributes;
    .param p3, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;
    .param p4, "service"    # Landroid/net/IIpMemoryStore;

    .line 90
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4LLLcxcDI48Nnc_rkm7mdSQsa2U;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/-$$Lambda$IpMemoryStoreClient$4LLLcxcDI48Nnc_rkm7mdSQsa2U;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 7
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    .line 206
    :try_start_0
    new-instance v6, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    invoke-virtual {p0, v6}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "m":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroid/net/-$$Lambda$IpMemoryStoreClient$hPxh-gsDi3P-N7OFwwZBxGXYZTs;

    invoke-direct {v1, p4}, Landroid/net/-$$Lambda$IpMemoryStoreClient$hPxh-gsDi3P-N7OFwwZBxGXYZTs;-><init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    const-string v2, "Error retrieving blob"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    .line 214
    .end local v0    # "m":Ljava/util/concurrent/ExecutionException;
    :goto_0
    return-void
.end method

.method public retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 3
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    .line 182
    :try_start_0
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "m":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroid/net/-$$Lambda$IpMemoryStoreClient$JTvBo0T3ntOmEDS60qZyBJUlJio;

    invoke-direct {v1, p2}, Landroid/net/-$$Lambda$IpMemoryStoreClient$JTvBo0T3ntOmEDS60qZyBJUlJio;-><init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    const-string v2, "Error retrieving network attributes"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    .line 190
    .end local v0    # "m":Ljava/util/concurrent/ExecutionException;
    :goto_0
    return-void
.end method

.method protected abstract runWhenServiceReady(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/IIpMemoryStore;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 8
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/ipmemorystore/Blob;
    .param p5, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;

    .line 114
    :try_start_0
    new-instance v7, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v7}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "m":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroid/net/-$$Lambda$IpMemoryStoreClient$Rs7okZ0ViR35WkNSGbyhqEXxJxc;

    invoke-direct {v1, p5}, Landroid/net/-$$Lambda$IpMemoryStoreClient$Rs7okZ0ViR35WkNSGbyhqEXxJxc;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    const-string v2, "Error storing blob"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    .line 121
    .end local v0    # "m":Ljava/util/concurrent/ExecutionException;
    :goto_0
    return-void
.end method

.method public storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 3
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributes;
    .param p3, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;

    .line 90
    :try_start_0
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "m":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroid/net/-$$Lambda$IpMemoryStoreClient$FjB7dm6lAwZ6pH1lqvrhxtLFOm8;

    invoke-direct {v1, p3}, Landroid/net/-$$Lambda$IpMemoryStoreClient$FjB7dm6lAwZ6pH1lqvrhxtLFOm8;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    const-string v2, "Error storing network attributes"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    .line 97
    .end local v0    # "m":Ljava/util/concurrent/ExecutionException;
    :goto_0
    return-void
.end method
