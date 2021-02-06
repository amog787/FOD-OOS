.class final Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "MediaRoute2ProviderServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;,
        Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MR2ProviderSvcProxy"


# instance fields
.field private mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

.field private mBound:Z

.field private mConnectionReady:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field final mReleasingSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-string v0, "MR2ProviderSvcProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 74
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 75
    const-string v0, "Context must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    .line 76
    iput p3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 52
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .param p1, "x1"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onRequestFailed(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .param p1, "x1"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "x2"    # Landroid/media/RoutingSessionInfo;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onSessionReleased(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .param p1, "x1"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "x2"    # Landroid/media/RoutingSessionInfo;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onSessionUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .param p1, "x1"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/media/RoutingSessionInfo;

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onSessionCreated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .param p1, "x1"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "x2"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onProviderStateUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/MediaRoute2ProviderInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .param p1, "x1"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onConnectionDied(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .param p1, "x1"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onConnectionReady(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    return-void
.end method

.method private assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .locals 2
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 426
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mComponentName:Landroid/content/ComponentName;

    .line 427
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RoutingSessionInfo$Builder;->setOwnerPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 426
    return-object v0
.end method

.method private bind()V
    .locals 7

    .line 216
    const-string v0, ": Bind failed"

    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    if-nez v1, :cond_2

    .line 217
    sget-boolean v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    const-string v2, "MR2ProviderSvcProxy"

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Binding"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.MediaRoute2ProviderService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, "service":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    const v4, 0x4000001

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, p0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 227
    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_1
    goto :goto_0

    .line 230
    :catch_0
    move-exception v3

    .line 231
    .local v3, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v1    # "service":Landroid/content/Intent;
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :cond_2
    :goto_0
    return-void
.end method

.method private disconnect()V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eqz v0, :cond_1

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 448
    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->dispose()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 450
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setAndNotifyProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 453
    .local v2, "sessionInfo":Landroid/media/RoutingSessionInfo;
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v3, p0, v2}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    .line 454
    .end local v2    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    goto :goto_0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 456
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 457
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 459
    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic lambda$onSessionCreated$0(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z
    .locals 1
    .param p0, "newSessionId"    # Ljava/lang/String;
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 339
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onSessionCreated$1(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z
    .locals 1
    .param p0, "newSessionId"    # Ljava/lang/String;
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 341
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private onConnectionDied(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 304
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-ne v0, p1, :cond_1

    .line 305
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Service connection died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 310
    :cond_1
    return-void
.end method

.method private onConnectionReady(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 295
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-ne v0, p1, :cond_0

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 297
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 301
    :cond_0
    return-void
.end method

.method private onProviderStateUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "providerInfo"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 314
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": State changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setAndNotifyProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 321
    return-void
.end method

.method private onRequestFailed(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "requestId"    # J
    .param p4, "reason"    # I

    .line 433
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_0

    .line 434
    return-void

    .line 437
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 438
    const-string v0, "MR2ProviderSvcProxy"

    const-string/jumbo v1, "onRequestFailed: Ignoring requestId REQUEST_ID_NONE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    .line 443
    return-void
.end method

.method private onSessionCreated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V
    .locals 4
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "requestId"    # J
    .param p4, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 325
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_0

    .line 326
    return-void

    .line 329
    :cond_0
    if-nez p4, :cond_1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionCreated: Ignoring null session sent from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 334
    :cond_1
    invoke-direct {p0, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p4

    .line 335
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "newSessionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$WA3Fu7tOFsQNw6OAd-ZxtqiCFhg;

    invoke-direct {v3, v0}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$WA3Fu7tOFsQNw6OAd-ZxtqiCFhg;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 340
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$MYTnvIMc8LhawnA0G27isTUVHis;

    invoke-direct {v3, v0}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$MYTnvIMc8LhawnA0G27isTUVHis;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v1, p0, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 349
    return-void

    .line 342
    :cond_3
    :goto_0
    :try_start_1
    const-string v2, "MR2ProviderSvcProxy"

    const-string/jumbo v3, "onSessionCreated: Duplicate session already exists. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    monitor-exit v1

    return-void

    .line 346
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onSessionReleased(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .locals 6
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "releaedSession"    # Landroid/media/RoutingSessionInfo;

    .line 388
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    if-nez p2, :cond_1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionReleased: Ignoring null session sent from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void

    .line 396
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p2

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "found":Z
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 401
    .local v3, "session":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 403
    const/4 v0, 0x1

    .line 404
    goto :goto_1

    .line 406
    .end local v3    # "session":Landroid/media/RoutingSessionInfo;
    :cond_2
    goto :goto_0

    .line 407
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 408
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 409
    .restart local v3    # "session":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 410
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 411
    monitor-exit v1

    return-void

    .line 413
    .end local v3    # "session":Landroid/media/RoutingSessionInfo;
    :cond_4
    goto :goto_2

    .line 415
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    if-nez v0, :cond_6

    .line 418
    const-string v1, "MR2ProviderSvcProxy"

    const-string/jumbo v2, "onSessionReleased: Matching session info not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 422
    :cond_6
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v1, p0, p2}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    .line 423
    return-void

    .line 415
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onSessionUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .locals 6
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    .param p2, "updatedSession"    # Landroid/media/RoutingSessionInfo;

    .line 352
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    if-nez p2, :cond_1

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionUpdated: Ignoring null session sent from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 361
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p2

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "found":Z
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 366
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v3, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 368
    const/4 v0, 0x1

    .line 369
    goto :goto_1

    .line 365
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "i":I
    :cond_3
    :goto_1
    if-nez v0, :cond_6

    .line 374
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 375
    .local v3, "releasingSession":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 376
    monitor-exit v1

    return-void

    .line 378
    .end local v3    # "releasingSession":Landroid/media/RoutingSessionInfo;
    :cond_4
    goto :goto_2

    .line 379
    :cond_5
    const-string v2, "MR2ProviderSvcProxy"

    const-string/jumbo v3, "onSessionUpdated: Matching session info not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    monitor-exit v1

    return-void

    .line 382
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v1, p0, p2}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    .line 385
    return-void

    .line 382
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private shouldBind()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private unbind()V
    .locals 2

    .line 239
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    if-eqz v0, :cond_1

    .line 240
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Unbinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 245
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 246
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 248
    :cond_1
    return-void
.end method

.method private updateBinding()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    .line 205
    :goto_0
    return-void
.end method


# virtual methods
.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 124
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActiveConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mConnectionReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mComponentName:Landroid/content/ComponentName;

    .line 167
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 285
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Service binding died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    .line 290
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    .line 292
    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 252
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    const-string v1, "MR2ProviderSvcProxy"

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Connected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    if-eqz v0, :cond_4

    .line 257
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 258
    nop

    .line 259
    invoke-static {p2}, Landroid/media/IMediaRoute2ProviderService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderService;

    move-result-object v0

    .line 260
    .local v0, "serviceBinder":Landroid/media/IMediaRoute2ProviderService;
    if-eqz v0, :cond_3

    .line 261
    new-instance v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-direct {v2, p0, v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/media/IMediaRoute2ProviderService;)V

    .line 262
    .local v2, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    invoke-virtual {v2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->register()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    iput-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    goto :goto_0

    .line 265
    :cond_1
    sget-boolean v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Registration failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v2    # "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    :cond_2
    :goto_0
    goto :goto_1

    .line 270
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Service returned invalid binder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "serviceBinder":Landroid/media/IMediaRoute2ProviderService;
    :cond_4
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 277
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Service disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 281
    return-void
.end method

.method public prepareReleaseSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 156
    .local v2, "session":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_1

    .line 161
    .end local v2    # "session":Landroid/media/RoutingSessionInfo;
    :cond_0
    goto :goto_0

    .line 162
    :cond_1
    :goto_1
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rebindIfDisconnected()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    .line 195
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    .line 197
    :cond_0
    return-void
.end method

.method public releaseSession(JLjava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->releaseSession(JLjava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 104
    :cond_0
    return-void
.end method

.method public requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "requestId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .param p5, "sessionHints"    # Landroid/os/Bundle;

    .line 92
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 96
    :cond_0
    return-void
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "routeId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 138
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->setRouteVolume(JLjava/lang/String;I)V

    .line 140
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 142
    :cond_0
    return-void
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 146
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->setSessionVolume(JLjava/lang/String;I)V

    .line 148
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 150
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    if-nez v0, :cond_1

    .line 172
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 176
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 178
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    if-eqz v0, :cond_1

    .line 182
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 186
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 188
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 131
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .locals 1
    .param p1, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 108
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 109
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 111
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 113
    :cond_0
    return-void
.end method
