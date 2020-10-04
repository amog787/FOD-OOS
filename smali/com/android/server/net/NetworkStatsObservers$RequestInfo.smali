.class abstract Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RequestInfo"
.end annotation


# instance fields
.field protected final mAccessLevel:I

.field private final mBinder:Landroid/os/IBinder;

.field protected final mCallingUid:I

.field protected mCollection:Lcom/android/server/net/NetworkStatsCollection;

.field private final mMessenger:Landroid/os/Messenger;

.field protected mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field protected final mRequest:Landroid/net/DataUsageRequest;

.field private final mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "statsObserver"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "callingUid"    # I
    .param p6, "accessLevel"    # I

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;

    .line 241
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    .line 242
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mMessenger:Landroid/os/Messenger;

    .line 243
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    .line 244
    iput p5, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    .line 245
    iput p6, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mAccessLevel:I

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->binderDied()V

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    .line 227
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->unlinkDeathRecipient()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    .param p1, "x1"    # I

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    .param p1, "x1"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->updateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    return-void
.end method

.method private callCallback(I)V
    .locals 5
    .param p1, "callbackType"    # I

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    const-string v2, "DataUsageRequest"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 295
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 296
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 297
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 303
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkStatsObservers"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private callbackTypeToName(I)Ljava/lang/String;
    .locals 1
    .param p1, "callbackType"    # I

    .line 320
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 326
    const-string v0, "UNKNOWN"

    return-object v0

    .line 324
    :cond_0
    const-string v0, "RELEASED"

    return-object v0

    .line 322
    :cond_1
    const-string v0, "LIMIT_REACHED"

    return-object v0
.end method

.method private resetRecorder()V
    .locals 1

    .line 311
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 312
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    .line 313
    return-void
.end method

.method private unlinkDeathRecipient()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 270
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 272
    :cond_0
    return-void
.end method

.method private updateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 1
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    .line 278
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->resetRecorder()V

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->checkStats()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->resetRecorder()V

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    .line 290
    :cond_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    .line 260
    return-void
.end method

.method protected abstract checkStats()Z
.end method

.method protected abstract recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestInfo from uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accessLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mAccessLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
