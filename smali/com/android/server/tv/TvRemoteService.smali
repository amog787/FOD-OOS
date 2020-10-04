.class public Lcom/android/server/tv/TvRemoteService;
.super Lcom/android/server/SystemService;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteService$UserProvider;,
        Lcom/android/server/tv/TvRemoteService$UserHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_KEYS:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRemoteService"


# instance fields
.field private mBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/UinputBridge;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

.field private final mLock:Ljava/lang/Object;

.field private mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/android/server/tv/TvRemoteService$UserHandler;

    new-instance v1, Lcom/android/server/tv/TvRemoteService$UserProvider;

    invoke-direct {v1, p0, p0}, Lcom/android/server/tv/TvRemoteService$UserProvider;-><init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/tv/TvRemoteService$UserHandler;-><init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService$UserProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    .line 67
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;

    .line 41
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;

    .line 41
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendPointerUpInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->sendPointerSyncInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;

    .line 41
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/android/server/tv/TvRemoteService;->openInputBridgeInternalLocked(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->closeInputBridgeInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->clearInputBridgeInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # J

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvRemoteService;->sendTimeStampInternalLocked(Landroid/os/IBinder;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendKeyDownInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendKeyUpInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvRemoteService;->sendPointerDownInternalLocked(Landroid/os/IBinder;III)V

    return-void
.end method

.method private clearInputBridgeInternalLocked(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 144
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 145
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V

    .line 148
    :cond_0
    return-void
.end method

.method private closeInputBridgeInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 130
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 131
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private informInputBridgeConnected(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 90
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, v1, p1}, Lcom/android/server/tv/TvRemoteService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
.end method

.method private openInputBridgeInternalLocked(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 7
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxPointers"    # I

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvRemoteService;->informInputBridgeConnected(Landroid/os/IBinder;)V

    .line 108
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/android/server/tv/UinputBridge;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 113
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvRemoteService;->informInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create device for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvRemoteService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private sendKeyDownInternalLocked(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 163
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyDown(Landroid/os/IBinder;I)V

    .line 166
    :cond_0
    return-void
.end method

.method private sendKeyUpInternalLocked(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 174
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyUp(Landroid/os/IBinder;I)V

    .line 177
    :cond_0
    return-void
.end method

.method private sendPointerDownInternalLocked(Landroid/os/IBinder;III)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 185
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 186
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->sendPointerDown(Landroid/os/IBinder;III)V

    .line 189
    :cond_0
    return-void
.end method

.method private sendPointerSyncInternalLocked(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 208
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 209
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->sendPointerSync(Landroid/os/IBinder;)V

    .line 212
    :cond_0
    return-void
.end method

.method private sendPointerUpInternalLocked(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 198
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendPointerUp(Landroid/os/IBinder;I)V

    .line 201
    :cond_0
    return-void
.end method

.method private sendTimeStampInternalLocked(Landroid/os/IBinder;J)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J

    .line 151
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 152
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->sendTimestamp(Landroid/os/IBinder;J)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public monitor()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 82
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/TvRemoteService$UserHandler;->sendEmptyMessage(I)Z

    .line 86
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 73
    return-void
.end method
