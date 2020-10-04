.class Lcom/android/server/location/ContextHubClientManager;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final MAX_CLIENT_ID:I = 0x7fff

.field private static final TAG:Ljava/lang/String; = "ContextHubClientManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Short;",
            "Lcom/android/server/location/ContextHubClientBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mNextHostEndPointId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndPointId:I

    .line 76
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 78
    return-void
.end method

.method private broadcastMessage(ILandroid/hardware/location/NanoAppMessage;)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 253
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;

    invoke-direct {v0, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 254
    return-void
.end method

.method private forEachClientOfHub(ILjava/util/function/Consumer;)V
    .locals 3
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/location/ContextHubClientBroker;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/location/ContextHubClientBroker;>;"
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    .line 264
    .local v1, "broker":Lcom/android/server/location/ContextHubClientBroker;
    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 265
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 267
    .end local v1    # "broker":Lcom/android/server/location/ContextHubClientBroker;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method

.method private getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/ContextHubClientBroker;
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"    # J

    .line 279
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    .line 280
    .local v1, "broker":Lcom/android/server/location/ContextHubClientBroker;
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/location/ContextHubClientBroker;->hasPendingIntent(Landroid/app/PendingIntent;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 282
    return-object v1

    .line 284
    .end local v1    # "broker":Lcom/android/server/location/ContextHubClientBroker;
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHostEndPointId()S
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_4

    .line 233
    iget v0, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndPointId:I

    .line 234
    .local v0, "id":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x7fff

    if-gt v1, v2, :cond_3

    .line 235
    iget-object v3, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-short v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 236
    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, 0x1

    :goto_1
    iput v4, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndPointId:I

    .line 237
    goto :goto_3

    .line 240
    :cond_1
    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, 0x1

    :goto_2
    move v0, v4

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    :cond_3
    :goto_3
    int-to-short v1, v0

    return v1

    .line 230
    .end local v0    # "id":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not register client - max limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$broadcastMessage$4(Landroid/hardware/location/NanoAppMessage;Lcom/android/server/location/ContextHubClientBroker;)V
    .locals 0
    .param p0, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p1, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 253
    invoke-virtual {p1, p0}, Lcom/android/server/location/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method static synthetic lambda$onHubReset$2(Lcom/android/server/location/ContextHubClientBroker;)V
    .locals 0
    .param p0, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 209
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->onHubReset()V

    return-void
.end method

.method static synthetic lambda$onNanoAppAborted$3(JILcom/android/server/location/ContextHubClientBroker;)V
    .locals 0
    .param p0, "nanoAppId"    # J
    .param p2, "abortCode"    # I
    .param p3, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 218
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppAborted(JI)V

    return-void
.end method

.method static synthetic lambda$onNanoAppLoaded$0(JLcom/android/server/location/ContextHubClientBroker;)V
    .locals 0
    .param p0, "nanoAppId"    # J
    .param p2, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 194
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppLoaded(J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppUnloaded$1(JLcom/android/server/location/ContextHubClientBroker;)V
    .locals 0
    .param p0, "nanoAppId"    # J
    .param p2, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 202
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppUnloaded(J)V

    return-void
.end method


# virtual methods
.method onHubReset(I)V
    .locals 1
    .param p1, "contextHubId"    # I

    .line 209
    sget-object v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;->INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 210
    return-void
.end method

.method onMessageFromNanoApp(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 4
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 153
    invoke-static {p2}, Lcom/android/server/location/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    .line 159
    .local v0, "clientMessage":Landroid/hardware/location/NanoAppMessage;
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->broadcastMessage(ILandroid/hardware/location/NanoAppMessage;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-short v2, p2, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    .line 163
    .local v1, "proxy":Lcom/android/server/location/ContextHubClientBroker;
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V

    goto :goto_0

    .line 166
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot send message to unregistered client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p2, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextHubClientManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v1    # "proxy":Lcom/android/server/location/ContextHubClientBroker;
    :goto_0
    return-void
.end method

.method onNanoAppAborted(IJI)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 218
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 219
    return-void
.end method

.method onNanoAppLoaded(IJ)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J

    .line 194
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 195
    return-void
.end method

.method onNanoAppUnloaded(IJ)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J

    .line 202
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 203
    return-void
.end method

.method registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/IContextHubClient;
    .locals 16
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"    # J

    .line 128
    move-object/from16 v10, p0

    const-string v11, "Regenerated"

    .line 129
    .local v11, "registerString":Ljava/lang/String;
    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v12, p2

    move-wide/from16 v13, p3

    :try_start_1
    invoke-direct {v10, v0, v12, v13, v14}, Lcom/android/server/location/ContextHubClientManager;->getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/ContextHubClientBroker;

    move-result-object v0

    .line 132
    .local v0, "broker":Lcom/android/server/location/ContextHubClientBroker;
    if-nez v0, :cond_0

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/ContextHubClientManager;->getHostEndPointId()S

    move-result v6

    .line 134
    .local v6, "hostEndPointId":S
    new-instance v15, Lcom/android/server/location/ContextHubClientBroker;

    iget-object v2, v10, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v3, v10, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    move-object v1, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/ContextHubClientBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;J)V

    move-object v0, v15

    .line 137
    iget-object v1, v10, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "Registered"

    move-object v11, v1

    .line 140
    .end local v6    # "hostEndPointId":S
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " client with host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->getHostEndPointId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubClientManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 140
    .end local v0    # "broker":Lcom/android/server/location/ContextHubClientBroker;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v12, p2

    move-wide/from16 v13, p3

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;
    .locals 8
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "clientCallback"    # Landroid/hardware/location/IContextHubClientCallback;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientManager;->getHostEndPointId()S

    move-result v5

    .line 95
    .local v5, "hostEndPointId":S
    new-instance v7, Lcom/android/server/location/ContextHubClientBroker;

    iget-object v1, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    move-object v0, v7

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/ContextHubClientBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;)V

    move-object v0, v7

    .line 98
    .local v0, "broker":Lcom/android/server/location/ContextHubClientBroker;
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    nop

    .end local v5    # "hostEndPointId":S
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->attachDeathRecipient()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    nop

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered client with host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->getHostEndPointId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubClientManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 103
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ContextHubClientManager"

    const-string v3, "Failed to attach death recipient to client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->close()V

    .line 107
    const/4 v2, 0x0

    return-object v2

    .line 99
    .end local v0    # "broker":Lcom/android/server/location/ContextHubClientBroker;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method unregisterClient(S)V
    .locals 3
    .param p1, "hostEndPointId"    # S

    .line 181
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ContextHubClientManager"

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered client with host endpoint ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unregister non-existing client with host endpoint ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void
.end method
