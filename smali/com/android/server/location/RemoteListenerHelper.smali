.class public abstract Lcom/android/server/location/RemoteListenerHelper;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;,
        Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;,
        Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final RESULT_GPS_LOCATION_DISABLED:I = 0x3

.field protected static final RESULT_INTERNAL_ERROR:I = 0x4

.field protected static final RESULT_NOT_ALLOWED:I = 0x6

.field protected static final RESULT_NOT_AVAILABLE:I = 0x1

.field protected static final RESULT_NOT_SUPPORTED:I = 0x2

.field protected static final RESULT_SUCCESS:I = 0x0

.field protected static final RESULT_UNKNOWN:I = 0x5


# instance fields
.field protected final mAppOps:Landroid/app/AppOpsManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private mHasIsSupported:Z

.field private volatile mIsRegistered:Z

.field private mIsSupported:Z

.field private mLastReportedResult:I

.field protected final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">.Identified",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;

    .line 64
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    .line 65
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 70
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/RemoteListenerHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/location/RemoteListenerHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper;
    .param p1, "x1"    # Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper;

    .line 39
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private calculateCurrentResultUnsafe()I
    .locals 1

    .line 246
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v0, :cond_2

    .line 254
    const/4 v0, 0x2

    return v0

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    const/4 v0, 0x3

    return v0

    .line 259
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 251
    :cond_4
    :goto_0
    const/4 v0, 0x5

    return v0
.end method

.method private foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

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

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 201
    .local v1, "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    invoke-direct {p0, v1, p1}, Lcom/android/server/location/RemoteListenerHelper;->post(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 202
    .end local v1    # "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private post(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">.Identified",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p1, "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    .local p2, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    if-eqz p2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Lcom/android/server/location/RemoteListenerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_0
    return-void
.end method

.method private tryRegister()V
    .locals 2

    .line 213
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/RemoteListenerHelper$1;-><init>(Lcom/android/server/location/RemoteListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method private tryUnregister()V
    .locals 2

    .line 234
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;-><init>(Lcom/android/server/location/RemoteListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 9
    .param p3, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;TT",
            "Listener;",
            "Lcom/android/server/location/CallerIdentity;",
            ")V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p1, "request":Ljava/lang/Object;, "TTRequest;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string v0, "Attempted to register a \'null\' listener."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    monitor-exit v1

    return-void

    .line 90
    :cond_0
    new-instance v2, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;Lcom/android/server/location/RemoteListenerHelper$1;)V

    .line 92
    .local v2, "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    const/4 v3, 0x1

    .local v3, "result":I
    goto :goto_0

    .line 98
    .end local v3    # "result":I
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v3, :cond_2

    .line 99
    const/4 v3, 0x2

    .restart local v3    # "result":I
    goto :goto_0

    .line 100
    .end local v3    # "result":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    const/4 v3, 0x3

    .restart local v3    # "result":I
    goto :goto_0

    .line 104
    .end local v3    # "result":I
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-eqz v3, :cond_4

    .line 105
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V

    .line 107
    const/4 v3, 0x0

    .line 113
    .restart local v3    # "result":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/location/RemoteListenerHelper;->post(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 114
    .end local v2    # "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    .end local v3    # "result":I
    monitor-exit v1

    .line 115
    return-void

    .line 111
    .restart local v2    # "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    :cond_4
    monitor-exit v1

    return-void

    .line 114
    .end local v2    # "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method protected hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 179
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    invoke-static {p1, p2}, Lcom/android/server/location/LocationPermissionUtil;->doesCallerReportToAppOps(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p2, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v4, p2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v4, 0x1

    iget v5, p2, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v6, p2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method public isRegistered()Z
    .locals 1

    .line 74
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method public synthetic lambda$tryUnregister$0$RemoteListenerHelper()V
    .locals 1

    .line 235
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->unregisterFromService()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    .line 240
    return-void
.end method

.method protected logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    .line 193
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location permission disabled. Skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reporting for app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    return-void
.end method

.method protected abstract registerWithService()I
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string v0, "Attempted to remove a \'null\' listener."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 127
    :cond_0
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setSupported(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 148
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 149
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    .line 150
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected tryUpdateRegistrationWithService()V
    .locals 2

    .line 155
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 158
    monitor-exit v0

    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    monitor-exit v0

    return-void

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract unregisterFromService()V
.end method

.method protected updateResult()V
    .locals 3

    .line 168
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->calculateCurrentResultUnsafe()I

    move-result v1

    .line 170
    .local v1, "newResult":I
    iget v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    if-ne v2, v1, :cond_0

    .line 171
    monitor-exit v0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 174
    iput v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mLastReportedResult:I

    .line 175
    .end local v1    # "newResult":I
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
