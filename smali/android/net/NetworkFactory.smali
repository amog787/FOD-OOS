.class public Landroid/net/NetworkFactory;
.super Landroid/os/Handler;
.source "NetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkFactory$NetworkRequestInfo;
    }
.end annotation


# static fields
.field public static final CMD_CANCEL_REQUEST:I = 0x2

.field public static final CMD_REQUEST_NETWORK:I = 0x1

.field private static final CMD_SET_FILTER:I = 0x4

.field private static final CMD_SET_SCORE:I = 0x3

.field private static final DBG:Z = true

.field private static final VDBG:Z = false


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCapabilityFilter:Landroid/net/NetworkCapabilities;

.field private final mContext:Landroid/content/Context;

.field private final mNetworkRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/NetworkFactory$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Landroid/net/NetworkProvider;

.field private mRefCount:I

.field private mScore:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "filter"    # Landroid/net/NetworkCapabilities;

    .line 110
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    .line 111
    iput-object p3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    .line 113
    iput-object p4, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 114
    return-void
.end method

.method private evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 279
    invoke-direct {p0, p1}, Landroid/net/NetworkFactory;->shouldNeedNetworkFor(Landroid/net/NetworkFactory$NetworkRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    goto :goto_0

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkFactory;->shouldReleaseNetworkFor(Landroid/net/NetworkFactory$NetworkRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    .line 290
    :cond_1
    :goto_0
    return-void
.end method

.method private evalRequests()V
    .locals 2

    .line 322
    iget-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 323
    .local v1, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    invoke-direct {p0, v1}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V

    .line 324
    .end local v1    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method private handleSetFilter(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 243
    iput-object p1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 244
    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    .line 245
    return-void
.end method

.method private handleSetScore(I)V
    .locals 0
    .param p1, "score"    # I

    .line 238
    iput p1, p0, Landroid/net/NetworkFactory;->mScore:I

    .line 239
    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    .line 240
    return-void
.end method

.method public static synthetic lambda$BOTGlmxddm-dxfTs0rdTPrhrIk4(Landroid/net/NetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    return-void
.end method

.method private shouldNeedNetworkFor(Landroid/net/NetworkFactory$NetworkRequestInfo;)Z
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 294
    iget-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-nez v0, :cond_1

    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->providerId:I

    iget-object v1, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    .line 298
    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 301
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    .line 304
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0
.end method

.method private shouldReleaseNetworkFor(Landroid/net/NetworkFactory$NetworkRequestInfo;)Z
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 309
    iget-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->providerId:I

    iget-object v1, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    .line 316
    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 317
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    .line 318
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Landroid/net/NetworkFactory;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 398
    .local v1, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    .end local v1    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    goto :goto_0

    .line 400
    :cond_0
    return-void
.end method

.method public getProvider()Landroid/net/NetworkProvider;
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    return-object v0
.end method

.method protected getRequestCount()I
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()I
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v0}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v0

    return v0
.end method

.method protected handleAddRequest(Landroid/net/NetworkRequest;II)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I
    .param p3, "servingProviderId"    # I

    .line 207
    iget-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 208
    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-nez v0, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and providerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 213
    new-instance v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    invoke-direct {v1, p1, p2, p3}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkRequest;II)V

    move-object v0, v1

    .line 214
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    iget-object v2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_0
    iput p2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    .line 221
    iput p3, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->providerId:I

    .line 225
    :goto_0
    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V

    .line 226
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetFilter(Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 167
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetScore(I)V

    .line 168
    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    .line 164
    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/NetworkFactory;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    .line 160
    nop

    .line 175
    :goto_0
    return-void
.end method

.method protected handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 230
    iget-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 231
    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-boolean v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 235
    :cond_0
    return-void
.end method

.method public synthetic lambda$releaseRequestAsUnfulfillableByAnyFactory$0$NetworkFactory(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "r"    # Landroid/net/NetworkRequest;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseRequestAsUnfulfillableByAnyFactory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    .line 348
    .local v0, "provider":Landroid/net/NetworkProvider;
    if-nez v0, :cond_0

    .line 349
    iget-object v1, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Ignoring attempt to release unregistered request as unfulfillable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/NetworkProvider;->declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V

    .line 353
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .line 362
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->startNetwork()V

    .line 363
    :cond_0
    return-void
.end method

.method protected reevaluateAllRequests()V
    .locals 1

    .line 332
    new-instance v0, Landroid/net/-$$Lambda$NetworkFactory$BOTGlmxddm-dxfTs0rdTPrhrIk4;

    invoke-direct {v0, p0}, Landroid/net/-$$Lambda$NetworkFactory$BOTGlmxddm-dxfTs0rdTPrhrIk4;-><init>(Landroid/net/NetworkFactory;)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method

.method public register()V
    .locals 4

    .line 118
    iget-object v0, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "Registering NetworkFactory"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/net/NetworkFactory$1;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/net/NetworkFactory$1;-><init>(Landroid/net/NetworkFactory;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    .line 136
    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    .line 137
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 138
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A NetworkFactory must only be registered once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 366
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->stopNetwork()V

    .line 367
    :cond_0
    return-void
.end method

.method protected releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "r"    # Landroid/net/NetworkRequest;

    .line 345
    new-instance v0, Landroid/net/-$$Lambda$NetworkFactory$6X9egP3VUFw6n6aZoN0JJN7Lxgc;

    invoke-direct {v0, p0, p1}, Landroid/net/-$$Lambda$NetworkFactory$6X9egP3VUFw6n6aZoN0JJN7Lxgc;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 374
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 375
    return-void
.end method

.method public setScoreFilter(I)V
    .locals 2
    .param p1, "score"    # I

    .line 370
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/NetworkFactory;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 371
    return-void
.end method

.method protected startNetwork()V
    .locals 0

    .line 357
    return-void
.end method

.method protected stopNetwork()V
    .locals 0

    .line 358
    return-void
.end method

.method public terminate()V
    .locals 2

    .line 142
    iget-object v0, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "Unregistering NetworkFactory"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    .line 148
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This NetworkFactory was never registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - providerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mProvider:Landroid/net/NetworkProvider;

    .line 405
    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ScoreFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Ljava/util/Map;

    .line 407
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    return-object v0
.end method
