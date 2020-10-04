.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$NsdSettings;,
        Lcom/android/server/NsdService$ClientInfo;,
        Lcom/android/server/NsdService$DaemonConnection;,
        Lcom/android/server/NsdService$DaemonConnectionSupplier;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NsdStateMachine;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_ID:I = 0x0

.field private static final MDNS_TAG:Ljava/lang/String; = "mDnsConnector"

.field private static final TAG:Ljava/lang/String; = "NsdService"


# instance fields
.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDaemon:Lcom/android/server/NsdService$DaemonConnection;

.field private final mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

.field private final mIdToClientInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

.field private final mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

.field private final mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mUniqueId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/NsdService$NsdSettings;Landroid/os/Handler;Lcom/android/server/NsdService$DaemonConnectionSupplier;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/server/NsdService$NsdSettings;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "fn"    # Lcom/android/server/NsdService$DaemonConnectionSupplier;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 543
    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    .line 544
    iput-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    .line 545
    iput-object p2, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    .line 546
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine;

    const-string v1, "NsdService"

    invoke-direct {v0, p0, v1, p3}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    .line 547
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0}, Lcom/android/server/NsdService$NsdStateMachine;->start()V

    .line 548
    new-instance v0, Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    .line 549
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-interface {p4, v0}, Lcom/android/server/NsdService$DaemonConnectionSupplier;->get(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    .line 550
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NsdService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/NsdService;->isNsdEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/NsdService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Z

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->notifyEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .line 61
    iget-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/NsdService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/NsdService;->getUniqueId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/NsdService;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .line 61
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/nsd/NsdServiceInfo;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unregisterService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/nsd/NsdServiceInfo;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopResolveService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .line 61
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .line 61
    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .line 61
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NsdService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .line 61
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NsdService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Z

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NsdService;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 553
    invoke-static {p0}, Lcom/android/server/NsdService$NsdSettings;->makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;

    move-result-object v0

    .line 554
    .local v0, "settings":Lcom/android/server/NsdService$NsdSettings;
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NsdService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 555
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 556
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/server/NsdService;

    sget-object v4, Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;->INSTANCE:Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;

    invoke-direct {v3, p0, v0, v2, v4}, Lcom/android/server/NsdService;-><init>(Landroid/content/Context;Lcom/android/server/NsdService$NsdSettings;Landroid/os/Handler;Lcom/android/server/NsdService$DaemonConnectionSupplier;)V

    .line 558
    .local v3, "service":Lcom/android/server/NsdService;
    iget-object v4, v3, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-virtual {v4}, Lcom/android/server/NsdService$NativeCallbackReceiver;->awaitConnection()V

    .line 559
    return-object v3
.end method

.method private discoverServices(ILjava/lang/String;)Z
    .locals 4
    .param p1, "discoveryId"    # I
    .param p2, "serviceType"    # Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "discover"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getAddrInfo(ILjava/lang/String;)Z
    .locals 4
    .param p1, "resolveId"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getaddrinfo"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getUniqueId()I
    .locals 1

    .line 595
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    return v0

    .line 596
    :cond_0
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    return v0
.end method

.method private isNsdEnabled()Z
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    invoke-interface {v0}, Lcom/android/server/NsdService$NsdSettings;->isEnabled()Z

    move-result v0

    .line 589
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network service discovery is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NsdService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v0
.end method

.method private notifyEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 575
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    if-eqz p1, :cond_0

    const v1, 0x60018

    goto :goto_0

    :cond_0
    const v1, 0x60019

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    .line 576
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .line 779
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 780
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 781
    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 9
    .param p1, "regId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NsdService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v2

    .line 722
    .local v2, "port":I
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    move-result-object v3

    .line 723
    .local v3, "textRecord":[B
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 724
    .local v5, "record":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "register"

    aput-object v8, v7, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v4, 0x2

    aput-object v0, v7, v4

    const/4 v4, 0x3

    aput-object v1, v7, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v7, v8

    const/4 v4, 0x5

    aput-object v5, v7, v4

    invoke-virtual {v6, v7}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .line 785
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 786
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 787
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 788
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 789
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .line 792
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 793
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 795
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 796
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 797
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 800
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 801
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 802
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 803
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 804
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 805
    return-void
.end method

.method private resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 6
    .param p1, "resolveId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .line 747
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "resolve"

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "local."

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 581
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 582
    .local v1, "nsdState":I
    :goto_0
    const-string/jumbo v2, "nsd_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    iget-object v2, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 584
    return-void
.end method

.method private stopGetAddrInfo(I)Z
    .locals 4
    .param p1, "resolveId"    # I

    .line 761
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stop-getaddrinfo"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private stopResolveService(I)Z
    .locals 4
    .param p1, "resolveId"    # I

    .line 753
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stop-resolve"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private stopServiceDiscovery(I)Z
    .locals 4
    .param p1, "discoveryId"    # I

    .line 743
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stop-discover"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 520
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 521
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 522
    .local v2, "c":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 523
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Unexpected end of escape sequence in: "

    const-string v6, "NsdService"

    if-lt v1, v4, :cond_0

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    goto :goto_1

    .line 527
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 528
    const/16 v4, 0x2e

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    .line 529
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    goto :goto_1

    .line 533
    :cond_1
    add-int/lit8 v3, v2, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    int-to-char v2, v3

    .line 534
    add-int/lit8 v1, v1, 0x2

    .line 537
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unregisterService(I)Z
    .locals 4
    .param p1, "regId"    # I

    .line 728
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stop-register"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateService(ILandroid/net/nsd/DnsSdTxtRecord;)Z
    .locals 4
    .param p1, "regId"    # I
    .param p2, "t"    # Landroid/net/nsd/DnsSdTxtRecord;

    .line 732
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 733
    return v0

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "update"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 766
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "NsdService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NsdService$ClientInfo;

    .line 769
    .local v1, "client":Lcom/android/server/NsdService$ClientInfo;
    const-string v2, "Client Info"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 771
    .end local v1    # "client":Lcom/android/server/NsdService$ClientInfo;
    goto :goto_0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v1}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .line 568
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    invoke-interface {v0, p1}, Lcom/android/server/NsdService$NsdSettings;->putEnabledStatus(Z)V

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->notifyEnabled(Z)V

    .line 572
    return-void
.end method
