.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$HardwareListener;,
        Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;,
        Lcom/android/server/tv/TvInputManagerService$SessionCallback;,
        Lcom/android/server/tv/TvInputManagerService$ServiceCallback;,
        Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;,
        Lcom/android/server/tv/TvInputManagerService$SessionState;,
        Lcom/android/server/tv/TvInputManagerService$TvInputState;,
        Lcom/android/server/tv/TvInputManagerService$ServiceState;,
        Lcom/android/server/tv/TvInputManagerService$ClientState;,
        Lcom/android/server/tv/TvInputManagerService$UserState;,
        Lcom/android/server/tv/TvInputManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DVB_DIRECTORY:Ljava/lang/String; = "/dev/dvb"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final sAdapterDirPattern:Ljava/util/regex/Pattern;

.field private static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;

.field private static final sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mSessionIdToSessionStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/tv/TvInputManagerService$SessionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    nop

    .line 113
    const-string v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    .line 114
    nop

    .line 115
    const-string v0, "^adapter([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 116
    nop

    .line 117
    const-string v0, "^frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 139
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    .line 142
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 144
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .locals 12
    .param p1, "serviceState"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 623
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 624
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v1, "sessionsToAbort":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 626
    .local v3, "sessionToken":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 627
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    .line 628
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 629
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v3    # "sessionToken":Landroid/os/IBinder;
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    goto :goto_0

    .line 632
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 633
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 634
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v7

    .line 635
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v11

    .line 634
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 636
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_1

    .line 637
    :cond_3
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3700(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 638
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvInputManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 104
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "x2"    # Landroid/media/tv/TvInputInfo;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/media/tv/ITvInputClient;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Landroid/view/InputChannel;
    .param p5, "x5"    # I

    .line 104
    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/media/tv/ITvInputService;
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$6000()Ljava/util/regex/Pattern;
    .locals 1

    .line 104
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$6100()Ljava/util/regex/Pattern;
    .locals 1

    .line 104
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$6200()Ljava/util/regex/Pattern;
    .locals 1

    .line 104
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 104
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/media/tv/ITvInputManagerCallback;

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V

    return-void
.end method

.method private buildTvContentRatingSystemListLocked(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 356
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 357
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 359
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 360
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v2, "intent":Landroid/content/Intent;
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 363
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 364
    .local v5, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 365
    .local v6, "metaData":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 366
    goto :goto_0

    .line 369
    :cond_0
    const-string v7, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 370
    .local v7, "xmlResId":I
    if-nez v7, :cond_1

    .line 371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TvInputManagerService"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    goto :goto_0

    .line 376
    :cond_1
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 377
    invoke-static {v7, v9}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object v9

    .line 376
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v7    # "xmlResId":I
    goto :goto_0

    .line 380
    :cond_2
    return-void
.end method

.method private buildTvInputListLocked(I[Ljava/lang/String;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "updatedPackages"    # [Ljava/lang/String;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 270
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 273
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 274
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.TvInputService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 278
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v3, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 280
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 281
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_TV_INPUT"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "TvInputManagerService"

    if-nez v8, :cond_0

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping TV input "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": it does not require the permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    goto :goto_0

    .line 287
    :cond_0
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v8, "component":Landroid/content/ComponentName;
    invoke-static {v1, v8}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 289
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 290
    .local v9, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v9, :cond_1

    .line 293
    new-instance v10, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    invoke-direct {v10, p0, v8, p1, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    move-object v6, v10

    .line 294
    .end local v9    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .local v6, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-direct {p0, v8, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 297
    .end local v6    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v9    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_1
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    .end local v9    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :goto_1
    goto :goto_2

    .line 301
    :cond_2
    :try_start_0
    new-instance v6, Landroid/media/tv/TvInputInfo$Builder;

    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v5}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v6}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v6

    .line 302
    .local v6, "info":Landroid/media/tv/TvInputInfo;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    nop

    .line 308
    .end local v6    # "info":Landroid/media/tv/TvInputInfo;
    :goto_2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v6

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "component":Landroid/content/ComponentName;
    goto/16 :goto_0

    .line 303
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "component":Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    .line 304
    .local v6, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to load TV input "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    goto/16 :goto_0

    .line 311
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "component":Landroid/content/ComponentName;
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v4, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/tv/TvInputInfo;

    .line 316
    .local v7, "info":Landroid/media/tv/TvInputInfo;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 317
    .local v8, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v8, :cond_4

    .line 318
    new-instance v9, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-direct {v9, v6}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService$1;)V

    move-object v8, v9

    .line 320
    :cond_4
    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1402(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    .line 321
    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .end local v7    # "info":Landroid/media/tv/TvInputInfo;
    .end local v8    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    goto :goto_3

    .line 324
    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 325
    .local v6, "inputId":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 326
    invoke-direct {p0, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_6

    .line 327
    :cond_6
    if-eqz p2, :cond_8

    .line 329
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 330
    .local v7, "component":Landroid/content/ComponentName;
    array-length v8, p2

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_8

    aget-object v10, p2, v9

    .line 331
    .local v10, "updatedPackage":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 332
    invoke-direct {p0, v7, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 333
    invoke-direct {p0, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    .line 334
    goto :goto_6

    .line 330
    .end local v10    # "updatedPackage":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 338
    .end local v6    # "inputId":Ljava/lang/String;
    .end local v7    # "component":Landroid/content/ComponentName;
    :cond_8
    :goto_6
    goto :goto_4

    .line 340
    :cond_9
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 341
    .restart local v6    # "inputId":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 342
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    .line 343
    .local v7, "info":Landroid/media/tv/TvInputInfo;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 344
    .local v8, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v8, :cond_a

    .line 345
    invoke-direct {p0, v8, v6, p1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 347
    :cond_a
    invoke-direct {p0, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    .line 349
    .end local v6    # "inputId":Ljava/lang/String;
    .end local v7    # "info":Landroid/media/tv/TvInputInfo;
    .end local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_b
    goto :goto_7

    .line 351
    :cond_c
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 352
    invoke-static {v0, v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1202(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;

    .line 353
    return-void
.end method

.method private clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .locals 8
    .param p1, "state"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 432
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    const-string v1, "error in onSessionReleased"

    const-string v2, "TvInputManagerService"

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 441
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 442
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 443
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V

    .line 445
    :try_start_1
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 448
    goto :goto_2

    .line 446
    :catch_1
    move-exception v5

    .line 447
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    goto :goto_1

    .line 451
    :cond_2
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 452
    return-void
.end method

.method private createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .locals 17
    .param p1, "service"    # Landroid/media/tv/ITvInputService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 642
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct {v7, v9}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v10

    .line 643
    .local v10, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v11, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 648
    .local v12, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v13

    .line 651
    .local v13, "channels":[Landroid/view/InputChannel;
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    invoke-direct {v0, v7, v12, v13}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    move-object v14, v0

    .line 653
    .local v14, "callback":Landroid/media/tv/ITvInputSessionCallback;
    const/4 v15, 0x1

    .line 656
    .local v15, "created":Z
    const/16 v16, 0x1

    :try_start_0
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    nop

    .line 658
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-interface {v8, v14, v0, v1}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_0
    aget-object v0, v13, v16

    .line 661
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-interface {v8, v0, v14, v1, v2}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_0
    goto :goto_1

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in createSession"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 666
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    .line 665
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 667
    const/4 v15, 0x0

    .line 669
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    aget-object v0, v13, v16

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 670
    return v15
.end method

.method private getContentResolverForUser(I)Landroid/content/ContentResolver;
    .locals 4
    .param p1, "userId"    # I

    .line 504
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 507
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 508
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create package context as user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvInputManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    move-object v1, v2

    .line 512
    .local v1, "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    return-object v2
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .locals 4
    .param p1, "userId"    # I

    .line 516
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 517
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_0

    .line 518
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$1;)V

    move-object v0, v1

    .line 519
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 521
    :cond_0
    return-object v0
.end method

.method private getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 525
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 526
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 527
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v1, :cond_0

    .line 531
    return-object v1

    .line 528
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service state not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 549
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method private getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 4
    .param p1, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 553
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    .line 554
    .local v0, "session":Landroid/media/tv/ITvInputSession;
    if-eqz v0, :cond_0

    .line 558
    return-object v0

    .line 555
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session not yet created for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .locals 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 535
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 536
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 537
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-eqz v1, :cond_2

    .line 541
    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_1

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal access to the session with token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_1
    :goto_0
    return-object v1

    .line 538
    :cond_2
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session state not found for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 264
    nop

    .line 265
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 768
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 769
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 771
    :try_start_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_1

    .line 772
    :catch_0
    move-exception v2

    .line 773
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report added input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 777
    return-void
.end method

.method private notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 783
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 784
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 786
    :try_start_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    goto :goto_1

    .line 787
    :catch_0
    move-exception v2

    .line 788
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report removed input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 791
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 792
    return-void
.end method

.method private notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "targetCallback"    # Landroid/media/tv/ITvInputManagerCallback;

    .line 815
    const-string v0, "failed to report state change to callback"

    const-string v1, "TvInputManagerService"

    if-nez p4, :cond_1

    .line 816
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 817
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 819
    :try_start_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    goto :goto_1

    .line 820
    :catch_0
    move-exception v4

    .line 821
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 824
    .end local v3    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 825
    .end local v2    # "n":I
    goto :goto_2

    .line 827
    :cond_1
    :try_start_1
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 830
    goto :goto_2

    .line 828
    :catch_1
    move-exception v2

    .line 829
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 798
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 799
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 801
    :try_start_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    goto :goto_1

    .line 802
    :catch_0
    move-exception v2

    .line 803
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report updated input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 807
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 8

    .line 180
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 245
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 247
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/tv/TvInputManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 261
    return-void
.end method

.method private releaseSessionLocked(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 683
    const/4 v0, 0x0

    .line 685
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v2

    move-object v0, v2

    .line 686
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 687
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 688
    .local v2, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    .line 689
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    .line 691
    :cond_0
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 692
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    .end local v2    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    if-eqz v0, :cond_2

    .line 698
    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    goto :goto_1

    .line 697
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "TvInputManagerService"

    const-string v4, "error in releaseSession"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 698
    goto :goto_0

    .line 701
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 702
    return-void

    .line 697
    :goto_2
    if-eqz v0, :cond_3

    .line 698
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    .line 700
    :cond_3
    throw v2
.end method

.method private removeSessionStateLocked(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 705
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 706
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 710
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 714
    :cond_0
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 716
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v1, :cond_1

    .line 717
    return-void

    .line 722
    :cond_1
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 723
    .local v2, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v2, :cond_2

    .line 724
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3900(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 726
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 731
    :cond_2
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$4000(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 734
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v3, :cond_3

    .line 735
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 737
    :cond_3
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$4000(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 740
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 741
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 743
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 744
    return-void
.end method

.method private removeUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 455
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 457
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v1, :cond_0

    .line 458
    monitor-exit v0

    return-void

    .line 461
    :cond_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 462
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 464
    :try_start_1
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    goto :goto_1

    .line 465
    :catch_0
    move-exception v4

    .line 466
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "TvInputManagerService"

    const-string v6, "error in release"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 470
    :cond_2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 473
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 474
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 475
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    .line 477
    :try_start_3
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 480
    goto :goto_3

    .line 478
    :catch_1
    move-exception v4

    .line 479
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "TvInputManagerService"

    const-string v6, "error in unregisterCallback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 484
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_4
    goto :goto_2

    .line 485
    :cond_5
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 488
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 489
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 490
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 491
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 492
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 493
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 495
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 497
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, v2, :cond_6

    .line 498
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 500
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_6
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private resolveCallingUserId(IIILjava/lang/String;)I
    .locals 7
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "requestedUserId"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    .line 563
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 3
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Landroid/os/IBinder;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "seq"    # I

    .line 676
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onSessionCreated"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setMainLocked(Landroid/os/IBinder;ZII)V
    .locals 3
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "isMain"    # Z
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 748
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    .line 749
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 750
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1

    move-object v0, v1

    .line 753
    :cond_0
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$4000(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v1

    .line 754
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 755
    return-void

    .line 757
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    .line 758
    .local v2, "session":Landroid/media/tv/ITvInputSession;
    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v0    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "session":Landroid/media/tv/ITvInputSession;
    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in setMain"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setStateLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .line 858
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 859
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 860
    .local v1, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v1, :cond_0

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setStateLocked - unknown input id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvInputManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 864
    :cond_0
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 865
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4100(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v3

    .line 866
    .local v3, "oldState":I
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4102(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I

    .line 867
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-nez v4, :cond_2

    .line 868
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 870
    :cond_1
    return-void

    .line 872
    :cond_2
    if-eq v3, p2, :cond_3

    .line 873
    const/4 v4, 0x0

    invoke-direct {p0, v0, p1, p2, v4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    .line 875
    :cond_3
    return-void
.end method

.method private switchUser(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_0

    .line 385
    monitor-exit v0

    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 388
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 389
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v2, "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 391
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 392
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    goto :goto_0

    .line 395
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .restart local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    goto :goto_2

    .line 398
    :catch_0
    move-exception v5

    .line 399
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "TvInputManagerService"

    const-string v7, "error in release"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 402
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_1

    .line 404
    :cond_3
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 405
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 406
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 407
    .local v4, "component":Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 408
    .local v5, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 409
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    .line 411
    :try_start_3
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    goto :goto_4

    .line 412
    :catch_1
    move-exception v6

    .line 413
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "TvInputManagerService"

    const-string v8, "error in unregisterCallback"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 417
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 419
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_5
    goto :goto_3

    .line 422
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2    # "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_6
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 424
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 426
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v2, 0x3

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    move-result-object v3

    .line 426
    invoke-virtual {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 428
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 568
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 569
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 570
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v1, :cond_0

    .line 571
    return-void

    .line 573
    :cond_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 574
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    return-void

    .line 578
    :cond_1
    invoke-static {v1, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 582
    :cond_2
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    if-ne p2, v2, :cond_5

    .line 583
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    move v2, v3

    .local v2, "shouldBind":Z
    goto :goto_0

    .line 589
    .end local v2    # "shouldBind":Z
    :cond_5
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    .line 592
    .restart local v2    # "shouldBind":Z
    :goto_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    .line 595
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3500(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 598
    return-void

    .line 604
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.tv.TvInputService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 605
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 606
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    const v6, 0x2000001

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 605
    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3502(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .end local v3    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 609
    :cond_7
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    .line 615
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 616
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 609
    :cond_8
    :goto_1
    nop

    .line 618
    :goto_2
    return-void
.end method

.method private updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .locals 7
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 838
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "inputId":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 840
    .local v1, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    const-string v2, "TvInputManagerService"

    if-nez v1, :cond_0

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set input info - unknown input id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void

    .line 844
    :cond_0
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1402(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    .line 846
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 847
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 849
    :try_start_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    goto :goto_1

    .line 850
    :catch_0
    move-exception v5

    .line 851
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "failed to report updated input info to callback"

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 854
    .end local v4    # "i":I
    :cond_1
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 855
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 156
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V

    goto :goto_0

    .line 158
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 161
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 162
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 164
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    .line 165
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 151
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V

    const-string v1, "tv_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/TvInputManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 152
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-eq v1, p1, :cond_0

    .line 172
    monitor-exit v0

    return-void

    .line 174
    :cond_0
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 175
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 176
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
