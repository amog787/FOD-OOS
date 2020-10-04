.class public Lcom/oneplus/houston/common/client/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;,
        Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;
    }
.end annotation


# static fields
.field private static final BINDER_BIND_MSG:I = 0x2

.field private static final BINDER_DIED_MSG:I = 0x1

.field private static final HOUSTON:Ljava/lang/String; = "com.oneplus.houston.Houston"

.field private static final TAG:Ljava/lang/String; = "EventManager"

.field private static sInstance:Lcom/oneplus/houston/common/client/EventManager;


# instance fields
.field private mClient:Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;

.field private final mContext:Landroid/content/Context;

.field private mEventListener:Lcom/oneplus/houston/common/client/IEvent;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private final mObserverCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/houston/common/client/AbsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPid:I

.field private mRetryCount:I

.field private mWaitingCallback:Lcom/oneplus/houston/common/client/AbsEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/houston/common/client/EventManager;->sInstance:Lcom/oneplus/houston/common/client/EventManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mInitialized:Z

    .line 48
    iput v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mRetryCount:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mWaitingCallback:Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 201
    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager;->mContext:Landroid/content/Context;

    .line 202
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/EventManager;->initializeIfNeed()V

    .line 203
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lcom/oneplus/houston/common/client/EventManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/houston/common/client/EventManager$1;-><init>(Lcom/oneplus/houston/common/client/EventManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mHandler:Landroid/os/Handler;

    .line 244
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;

    .line 35
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/AbsEventCallback;Lcom/oneplus/houston/common/client/Event;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;
    .param p1, "x1"    # Lcom/oneplus/houston/common/client/AbsEventCallback;
    .param p2, "x2"    # Lcom/oneplus/houston/common/client/Event;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/oneplus/houston/common/client/EventManager;->isReachThreshold(Lcom/oneplus/houston/common/client/AbsEventCallback;Lcom/oneplus/houston/common/client/Event;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/houston/common/client/EventManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;

    .line 35
    iget-boolean v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mInitialized:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/houston/common/client/EventManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/oneplus/houston/common/client/EventManager;->mInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/houston/common/client/EventManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;

    .line 35
    iget v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mRetryCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/houston/common/client/EventManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/oneplus/houston/common/client/EventManager;->mRetryCount:I

    return p1
.end method

.method static synthetic access$304(Lcom/oneplus/houston/common/client/EventManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;

    .line 35
    iget v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/houston/common/client/EventManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;

    .line 35
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/AbsEventCallback;)Lcom/oneplus/houston/common/client/AbsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;
    .param p1, "x1"    # Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 35
    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager;->mWaitingCallback:Lcom/oneplus/houston/common/client/AbsEventCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oneplus/houston/common/client/EventManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;

    .line 35
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/EventManager;->bindServiceIfNeeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/houston/common/client/EventManager;)Lcom/oneplus/houston/common/client/IEvent;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;

    .line 35
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/IEvent;)Lcom/oneplus/houston/common/client/IEvent;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/common/client/EventManager;
    .param p1, "x1"    # Lcom/oneplus/houston/common/client/IEvent;

    .line 35
    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    return-object p1
.end method

.method private addAppCallback(Lcom/oneplus/houston/common/client/AbsEventCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 313
    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/oneplus/houston/common/client/AbsEventCallback;->mIndex:I

    .line 315
    invoke-static {v0}, Lcom/oneplus/houston/common/client/AbsEventCallback;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    .line 316
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 320
    :cond_0
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event index or has registered before! size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bindServiceIfNeeded()V
    .locals 3

    .line 142
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/EventManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.houston.bind"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.houston"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "EventManager"

    const-string v2, "begin bind houston event server!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getAppCallback(I)Lcom/oneplus/houston/common/client/AbsEventCallback;
    .locals 1
    .param p1, "index"    # I

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/common/client/AbsEventCallback;

    monitor-exit p0

    return-object v0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/houston/common/client/EventManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    const-class v0, Lcom/oneplus/houston/common/client/EventManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/oneplus/houston/common/client/EventManager;->sInstance:Lcom/oneplus/houston/common/client/EventManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/oneplus/houston/common/client/EventManager;

    invoke-direct {v1, p0}, Lcom/oneplus/houston/common/client/EventManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/houston/common/client/EventManager;->sInstance:Lcom/oneplus/houston/common/client/EventManager;

    .line 57
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-object v0, Lcom/oneplus/houston/common/client/EventManager;->sInstance:Lcom/oneplus/houston/common/client/EventManager;

    return-object v0

    .line 57
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initializeIfNeed()V
    .locals 2

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/EventManager;->bindServiceIfNeeded()V

    .line 132
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/EventManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string v0, "EventManager"

    const-string v1, "can\'t find houston_server!, return"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    monitor-exit p0

    return-void

    .line 138
    :cond_1
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isBinded()Z
    .locals 1

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    invoke-interface {v0}, Lcom/oneplus/houston/common/client/IEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isConnected()Z
    .locals 1

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mPid:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isReachThreshold(Lcom/oneplus/houston/common/client/AbsEventCallback;Lcom/oneplus/houston/common/client/Event;)Z
    .locals 5
    .param p1, "callback"    # Lcom/oneplus/houston/common/client/AbsEventCallback;
    .param p2, "event"    # Lcom/oneplus/houston/common/client/Event;

    .line 100
    const-string v0, "EventManager"

    const-string v1, "isReachThreshold"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "ret":Z
    invoke-virtual {p2}, Lcom/oneplus/houston/common/client/Event;->getType()I

    move-result v2

    .line 103
    .local v2, "type":I
    iget v3, p1, Lcom/oneplus/houston/common/client/AbsEventCallback;->mIndex:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 104
    const-string v3, "Callback and event don\'t match!"

    invoke-static {v0, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return v4

    .line 108
    :cond_0
    invoke-static {v2}, Lcom/oneplus/houston/common/client/AbsEventCallback;->isValidIndex(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 109
    const-string v3, "Invalid event type!"

    invoke-static {v0, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v4

    .line 112
    :cond_1
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    goto :goto_0

    .line 114
    :cond_3
    nop

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;

    invoke-virtual {v0, p2}, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->isReachThreshold(Lcom/oneplus/houston/common/client/Event;)Z

    move-result v1

    .line 125
    :goto_0
    return v1
.end method

.method private registerEventObserverDelayed(Lcom/oneplus/houston/common/client/AbsEventCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerEventObserverDelayed callback :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-boolean v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    invoke-interface {v0}, Lcom/oneplus/houston/common/client/IEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;-><init>(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/EventManager$1;)V

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 279
    new-instance v0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;

    invoke-direct {v0, p0, v3}, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;-><init>(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/EventManager$1;)V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mClient:Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;

    .line 280
    const-string v0, "EventManager"

    const-string v2, " real add addClient "

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager;->mClient:Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;

    invoke-virtual {v2}, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oneplus/houston/common/client/IEvent;->addClient(Landroid/os/IBinder;)V

    .line 282
    iput-boolean v1, p0, Lcom/oneplus/houston/common/client/EventManager;->mInitialized:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EventManager"

    invoke-static {v3, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    monitor-enter v0

    .line 290
    :try_start_1
    invoke-direct {p0, p1}, Lcom/oneplus/houston/common/client/EventManager;->addAppCallback(Lcom/oneplus/houston/common/client/AbsEventCallback;)Z

    .line 291
    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 297
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/oneplus/houston/common/client/EventManager;->addAppCallback(Lcom/oneplus/houston/common/client/AbsEventCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p1, p1}, Lcom/oneplus/houston/common/client/AbsEventCallback;->builder(Lcom/oneplus/houston/common/client/AbsEventCallback;)Landroid/content/Intent;

    move-result-object v0

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 301
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "real registerEventObserverDelayed callback :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager;->mClient:Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;

    invoke-virtual {v2}, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/oneplus/houston/common/client/IEvent;->registerEventObserver(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    goto :goto_1

    .line 305
    :catch_1
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventManager"

    invoke-static {v2, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/oneplus/houston/common/client/EventManager;->removeAppCallback(Lcom/oneplus/houston/common/client/AbsEventCallback;)V

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private removeAppCallback(Lcom/oneplus/houston/common/client/AbsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mObserverCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 329
    monitor-exit p0

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/os/IBinder;

    .line 169
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-static {p2}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/houston/common/client/IEvent;

    move-result-object v0

    .line 172
    .local v0, "l":Lcom/oneplus/houston/common/client/IEvent;
    iput-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    .line 173
    invoke-interface {v0}, Lcom/oneplus/houston/common/client/IEvent;->myPid()I

    move-result v1

    iput v1, p0, Lcom/oneplus/houston/common/client/EventManager;->mPid:I

    .line 174
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/houston/common/client/EventManager;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager;->mWaitingCallback:Lcom/oneplus/houston/common/client/AbsEventCallback;

    invoke-direct {p0, v1}, Lcom/oneplus/houston/common/client/EventManager;->registerEventObserverDelayed(Lcom/oneplus/houston/common/client/AbsEventCallback;)V

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/houston/common/client/EventManager;->mWaitingCallback:Lcom/oneplus/houston/common/client/AbsEventCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v0    # "l":Lcom/oneplus/houston/common/client/IEvent;
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 181
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 182
    return-void

    .line 181
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/EventManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/houston/common/client/EventManager;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mPid:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mEventListener:Lcom/oneplus/houston/common/client/IEvent;

    .line 191
    iput-object v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mWaitingCallback:Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 193
    const-string v0, "EventManager"

    const-string v1, "Houston server force died as Houston app has exited!"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerEventObserver(Lcom/oneplus/houston/common/client/AbsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callback.isValidIndex(callback.mIndex) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oneplus/houston/common/client/AbsEventCallback;->mIndex:I

    invoke-static {v2}, Lcom/oneplus/houston/common/client/AbsEventCallback;->isValidIndex(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget v0, p1, Lcom/oneplus/houston/common/client/AbsEventCallback;->mIndex:I

    invoke-static {v0}, Lcom/oneplus/houston/common/client/AbsEventCallback;->isValidIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 262
    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager;->mWaitingCallback:Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 263
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/EventManager;->initializeIfNeed()V

    .line 264
    monitor-exit p0

    return-void

    .line 266
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/houston/common/client/EventManager;->mInitialized:Z

    if-eqz v0, :cond_2

    .line 267
    invoke-direct {p0, p1}, Lcom/oneplus/houston/common/client/EventManager;->registerEventObserverDelayed(Lcom/oneplus/houston/common/client/AbsEventCallback;)V

    .line 269
    :cond_2
    monitor-exit p0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerObserver(Lcom/oneplus/houston/common/client/observer/EventCallback;Landroid/content/Intent;)V
    .locals 2
    .param p1, "client"    # Lcom/oneplus/houston/common/client/observer/EventCallback;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 248
    new-instance v0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;-><init>()V

    .line 249
    .local v0, "callback":Lcom/oneplus/houston/common/client/observer/CpuEventCallback;
    invoke-virtual {v0, p2}, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->builder(Landroid/content/Intent;)Lcom/oneplus/houston/common/client/AbsEventCallback;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;

    .line 250
    iput-object p1, v0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mObserver:Lcom/oneplus/houston/common/client/observer/EventCallback;

    .line 251
    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/EventManager;->registerEventObserver(Lcom/oneplus/houston/common/client/AbsEventCallback;)V

    .line 252
    return-void
.end method
