.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/connectivity/NetworkAgentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x3e9

.field private static final REMOVE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public avoidUnvalidated:Z

.field public captivePortalData:Landroid/net/CaptivePortalData;

.field public final clatd:Lcom/android/server/connectivity/Nat464Xlat;

.field public created:Z

.field public final creatorUid:I

.field public everCaptivePortalDetected:Z

.field public everConnected:Z

.field public everValidated:Z

.field public final factorySerialNumber:I

.field public lastCaptivePortalDetected:Z

.field public lastValidated:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLingerExpiryMs:J

.field private mLingerMessage:Lcom/android/internal/util/WakeupMessage;

.field private final mLingerTimerForRequest:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLingerTimers:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mLingering:Z

.field private volatile mNetworkMonitor:Landroid/net/NetworkMonitorManager;

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mNumBackgroundNetworkRequests:I

.field private mNumRequestNetworkRequests:I

.field private mScore:I

.field public final messenger:Landroid/os/Messenger;

.field public final network:Landroid/net/Network;

.field public final networkAgentConfig:Landroid/net/NetworkAgentConfig;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public partialConnectivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 267
    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkAgentConfig;Lcom/android/server/ConnectivityService;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;II)V
    .locals 16
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ac"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "net"    # Landroid/net/Network;
    .param p4, "info"    # Landroid/net/NetworkInfo;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "score"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "config"    # Landroid/net/NetworkAgentConfig;
    .param p11, "connService"    # Lcom/android/server/ConnectivityService;
    .param p12, "netd"    # Landroid/net/INetd;
    .param p13, "dnsResolver"    # Landroid/net/IDnsResolver;
    .param p14, "nms"    # Landroid/os/INetworkManagementService;
    .param p15, "factorySerialNumber"    # I
    .param p16, "creatorUid"    # I

    .line 277
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    .line 223
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    .line 244
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    .line 247
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 250
    iput v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    .line 278
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    .line 279
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 280
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 281
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 282
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 283
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 284
    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mScore:I

    .line 285
    new-instance v8, Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct {v8, v0, v9, v10, v11}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;)V

    iput-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    .line 286
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    .line 287
    move-object/from16 v12, p8

    iput-object v12, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    .line 288
    move-object/from16 v13, p9

    iput-object v13, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    .line 289
    move-object/from16 v14, p10

    iput-object v14, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 290
    move/from16 v15, p15

    iput v15, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->factorySerialNumber:I

    .line 291
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->creatorUid:I

    .line 292
    return-void
.end method

.method private getCurrentScore(Z)I
    .locals 2
    .param p1, "pretendValidated"    # Z

    .line 494
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v0, v0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v0, v0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 496
    :cond_0
    const/16 v0, 0x64

    return v0

    .line 499
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mScore:I

    .line 500
    .local v0, "score":I
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->ignoreWifiUnvalidationPenalty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    add-int/lit8 v0, v0, -0x28

    .line 503
    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 504
    :cond_3
    return v0
.end method

.method private ignoreWifiUnvalidationPenalty()Z
    .locals 5

    .line 510
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    .line 511
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 512
    .local v0, "isWifi":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    .line 513
    .local v3, "avoidBadWifi":Z
    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    iget-boolean v4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method public static toShortString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 702
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "[null]"

    :goto_0
    return-object v0
.end method

.method private updateRequestCounts(ZLandroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "add"    # Z
    .param p2, "request"    # Landroid/net/NetworkRequest;

    .line 354
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 355
    .local v1, "delta":I
    :goto_0
    sget-object v2, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    iget-object v3, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    .line 371
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 367
    :cond_1
    goto :goto_1

    .line 361
    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 362
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    .line 363
    goto :goto_1

    .line 357
    :cond_3
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 358
    nop

    .line 374
    :goto_1
    return-void
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)Z
    .locals 7
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 382
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 383
    .local v0, "existing":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 384
    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 387
    sget-object v3, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    const/4 v5, 0x2

    .line 388
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 387
    const-string v5, "Duplicate requestId for %s and %s on %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iget v3, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    invoke-direct {p0, v2, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 393
    return v2
.end method

.method public clearLingerState()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 627
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 628
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 630
    return-void
.end method

.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 2
    .param p1, "other"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 694
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 125
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result p1

    return p1
.end method

.method public connService()Lcom/android/server/ConnectivityService;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method public dumpLingerTimers(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 633
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .local v1, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .end local v1    # "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    goto :goto_0

    .line 634
    :cond_0
    return-void
.end method

.method public declared-synchronized getAndSetNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 313
    .local v0, "oldNc":Landroid/net/NetworkCapabilities;
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 314
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkMonitor:Landroid/net/NetworkMonitorManager;

    .line 315
    .local v1, "nm":Landroid/net/NetworkMonitorManager;
    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v1, p1}, Landroid/net/NetworkMonitorManager;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local p0    # "this":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 311
    .end local v0    # "oldNc":Landroid/net/NetworkCapabilities;
    .end local v1    # "nm":Landroid/net/NetworkMonitorManager;
    .end local p1    # "nc":Landroid/net/NetworkCapabilities;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConnectivityReport()Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    return-object v0
.end method

.method public getCurrentScore()I
    .locals 1

    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getCurrentScoreAsValidated()I
    .locals 1

    .line 525
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getLingerExpiry()J
    .locals 2

    .line 578
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    return-wide v0
.end method

.method public getNetworkState()Landroid/net/NetworkState;
    .locals 8

    .line 533
    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-object v0, v0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 538
    .local v6, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkState;

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    .line 541
    .end local v6    # "subscriberId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isBackgroundNetwork()Z
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    if-lez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0
.end method

.method public isLingering()Z
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    return v0
.end method

.method public isSatisfyingRequest(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVPN()Z
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public linger()V
    .locals 1

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 611
    return-void
.end method

.method public lingerRequest(Landroid/net/NetworkRequest;JJ)V
    .locals 5
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "now"    # J
    .param p4, "duration"    # J

    .line 549
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already lingered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    add-long v0, p2, p4

    .line 556
    .local v0, "expiryMs":J
    new-instance v2, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;-><init>(Landroid/net/NetworkRequest;J)V

    .line 558
    .local v2, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v3, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 560
    return-void
.end method

.method public netAgentConfig()Landroid/net/NetworkAgentConfig;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    return-object v0
.end method

.method public network()Landroid/net/Network;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v0
.end method

.method public networkMonitor()Landroid/net/NetworkMonitorManager;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkMonitor:Landroid/net/NetworkMonitorManager;

    return-object v0
.end method

.method public numBackgroundNetworkRequests()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    return v0
.end method

.method public numForegroundNetworkRequests()I
    .locals 2

    .line 444
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public numNetworkRequests()I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public numRequestNetworkRequests()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    return v0
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .locals 1
    .param p1, "networkMonitor"    # Landroid/net/INetworkMonitor;

    .line 298
    new-instance v0, Landroid/net/NetworkMonitorManager;

    invoke-direct {v0, p1}, Landroid/net/NetworkMonitorManager;-><init>(Landroid/net/INetworkMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkMonitor:Landroid/net/NetworkMonitorManager;

    .line 299
    return-void
.end method

.method public removeRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 400
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 401
    .local v0, "existing":Landroid/net/NetworkRequest;
    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 403
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 404
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    .line 407
    :cond_1
    return-void
.end method

.method public requestAt(I)Landroid/net/NetworkRequest;
    .locals 1
    .param p1, "index"    # I

    .line 421
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public satisfies(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 469
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 470
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 469
    :goto_0
    return v0
.end method

.method public satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 474
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 475
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 474
    :goto_0
    return v0
.end method

.method public setConnectivityReport(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .locals 0
    .param p1, "connectivityReport"    # Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 644
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 645
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .line 529
    iput p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mScore:I

    .line 530
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 688
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo{ ni{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  network{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  nethandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 664
    invoke-virtual {v1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  lp{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  nc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  Score{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  everValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  lastValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  created{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} lingering{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} explicitlySelected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v1, v1, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} acceptUnvalidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v1, v1, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} everCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} lastCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} partialConnectivity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} acceptPartialConnectivity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v1, v1, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} clat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    return-object v0
.end method

.method public unlinger()V
    .locals 1

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 615
    return-void
.end method

.method public unlingerRequest(Landroid/net/NetworkRequest;)Z
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 567
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .line 568
    .local v0, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    if-eqz v0, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 571
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 572
    const/4 v1, 0x1

    return v1

    .line 574
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateLingerTimer()V
    .locals 13

    .line 582
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    iget-wide v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    .line 583
    .local v3, "newExpiry":J
    :goto_0
    iget-wide v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_2

    .line 592
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 596
    :cond_2
    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 597
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NETWORK_LINGER_COMPLETE."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    move-object v12, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 603
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 606
    :cond_3
    iput-wide v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    .line 607
    return-void
.end method
