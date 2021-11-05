.class final Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouter2ServiceImpl.java"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;
.implements Lcom/android/server/media/MediaRoute2Provider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouter2ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserHandler"
.end annotation


# instance fields
.field private final mLastProviderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRoute2Provider;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionToRouterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

.field private final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field private final mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/media/MediaRouter2ServiceImpl;
    .param p2, "userRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1176
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 1167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 1168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1170
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 1177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 1178
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1179
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->access$400(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1180
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->access$400(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/android/server/media/MediaRoute2ProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 1183
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1155
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "x2"    # I

    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/media/MediaRoute2Info;

    .line 1155
    invoke-direct/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->deselectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/media/MediaRoute2Info;

    .line 1155
    invoke-direct/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->selectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x3"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .param p5, "x4"    # Landroid/media/RoutingSessionInfo;
    .param p6, "x5"    # Landroid/media/MediaRoute2Info;

    .line 1155
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->requestRouterCreateSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/media/MediaRoute2Info;
    .param p4, "x3"    # I

    .line 1155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->setRouteVolumeOnHandler(JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "x2"    # Landroid/media/IMediaRouter2Manager;

    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyPreferredFeaturesChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # Landroid/media/IMediaRouter2Manager;

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesToManager(Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p6, "x4"    # Landroid/media/RoutingSessionInfo;
    .param p7, "x5"    # Landroid/media/MediaRoute2Info;
    .param p8, "x6"    # Landroid/os/Bundle;

    .line 1155
    invoke-direct/range {p0 .. p8}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->requestCreateSessionWithRouter2OnHandler(JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1155
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateDiscoveryPreferenceOnHandler()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyPreferredFeaturesChangedToManagers(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1155
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1155
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->stop()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 1155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1155
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->start()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x3"    # Ljava/lang/String;

    .line 1155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I

    .line 1155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->setSessionVolumeOnHandler(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/media/MediaRoute2Info;

    .line 1155
    invoke-direct/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->transferToRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method private checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z
    .locals 8
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "description"    # Ljava/lang/String;

    .line 1457
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "providerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v1

    .line 1459
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    const-string v2, "Ignoring "

    const/4 v3, 0x0

    const-string v4, "MR2ServiceImpl"

    if-nez v1, :cond_0

    .line 1460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " route since no provider found for given route="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    return v3

    .line 1466
    :cond_0
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v6}, Lcom/android/server/media/SystemMediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 1467
    return v6

    .line 1470
    :cond_1
    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1471
    .local v5, "matchingRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-eq v5, p1, :cond_2

    .line 1472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " route from non-matching router. packageName="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " route="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return v3

    .line 1477
    :cond_2
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1478
    .local v2, "sessionId":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 1479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get original session id from unique session id. uniqueSessionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return v3

    .line 1484
    :cond_3
    return v6
.end method

.method private deselectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "uniqueSessionId"    # Ljava/lang/String;
    .param p5, "route"    # Landroid/media/MediaRoute2Info;

    .line 1419
    const-string v0, "deselecting"

    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    return-void

    .line 1424
    :cond_0
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "providerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v1

    .line 1426
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v1, :cond_1

    .line 1427
    return-void

    .line 1430
    :cond_1
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1431
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v3

    .line 1430
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/media/MediaRoute2Provider;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 1432
    return-void
.end method

.method private findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;
    .locals 3
    .param p1, "providerId"    # Ljava/lang/String;

    .line 2017
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRoute2Provider;

    .line 2018
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2019
    return-object v1

    .line 2021
    .end local v1    # "provider":Lcom/android/server/media/MediaRoute2Provider;
    :cond_0
    goto :goto_0

    .line 2022
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAllRouters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;"
        }
    .end annotation

    .line 1725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1726
    .local v0, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1727
    .local v1, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v1, :cond_0

    .line 1728
    return-object v0

    .line 1730
    :cond_0
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->access$500(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1731
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1732
    .local v4, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1733
    nop

    .end local v4    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    goto :goto_0

    .line 1734
    :cond_1
    monitor-exit v2

    .line 1735
    return-object v0

    .line 1734
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getLastProviderInfoIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "providerId"    # Ljava/lang/String;

    .line 1347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1348
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2ProviderInfo;

    .line 1349
    .local v1, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1350
    return v0

    .line 1347
    .end local v1    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1353
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getManagerRecords()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;",
            ">;"
        }
    .end annotation

    .line 1770
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1771
    .local v0, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v0, :cond_0

    .line 1772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1774
    :cond_0
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->access$500(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1775
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 1776
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getManagers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;"
        }
    .end annotation

    .line 1756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1757
    .local v0, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1758
    .local v1, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v1, :cond_0

    .line 1759
    return-object v0

    .line 1761
    :cond_0
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->access$500(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1762
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1763
    .local v4, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1764
    nop

    .end local v4    # "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    goto :goto_0

    .line 1765
    :cond_1
    monitor-exit v2

    .line 1766
    return-object v0

    .line 1765
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getRouters(Z)Ljava/util/List;
    .locals 6
    .param p1, "hasModifyAudioRoutingPermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;"
        }
    .end annotation

    .line 1739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    .local v0, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1741
    .local v1, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v1, :cond_0

    .line 1742
    return-object v0

    .line 1744
    :cond_0
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->access$500(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1745
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1746
    .local v4, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget-boolean v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-ne p1, v5, :cond_1

    .line 1748
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    .end local v4    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    :cond_1
    goto :goto_0

    .line 1751
    :cond_2
    monitor-exit v2

    .line 1752
    return-object v0

    .line 1751
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleSessionCreationRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)Z
    .locals 6
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "reason"    # I

    .line 1651
    const/4 v0, 0x0

    .line 1652
    .local v0, "matchingRequest":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1653
    .local v2, "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-wide v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 1654
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1653
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1655
    move-object v0, v2

    .line 1656
    goto :goto_1

    .line 1658
    .end local v2    # "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    :cond_0
    goto :goto_0

    .line 1660
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1662
    const/4 v1, 0x0

    return v1

    .line 1665
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1669
    iget-wide v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1670
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1671
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v2

    .line 1670
    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    goto :goto_2

    .line 1673
    :cond_3
    iget-wide v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    invoke-static {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v1

    .line 1674
    .local v1, "requesterId":I
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object v2

    .line 1675
    .local v2, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-eqz v2, :cond_4

    .line 1676
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    iget-wide v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 1677
    invoke-static {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v4

    .line 1676
    invoke-direct {p0, v3, v4, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 1680
    .end local v1    # "requesterId":I
    .end local v2    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    :cond_4
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic lambda$11csKqp8tuwz43YmexCNG_6stD4(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreatedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic lambda$9sVKwFHJaVOpWt-fwbOrQeBJC6Y(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionInfoChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic lambda$W3Rmm5OwbtGhVGMXqEKmL8Wo39k(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionReleasedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic lambda$pb5SX6gBlgZXLZp0t4uVjgjp3EE(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onProviderStateChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;)V

    return-void
.end method

.method public static synthetic lambda$txvDtxZFlT0LcCTHtzUh7e7hY2w(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JI)V

    return-void
.end method

.method private notifyPreferredFeaturesChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .locals 3
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 1957
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1958
    invoke-virtual {v1}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v1

    .line 1957
    invoke-interface {p2, v0, v1}, Landroid/media/IMediaRouter2Manager;->notifyPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    goto :goto_0

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify preferred features changed. Manager probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1963
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifyPreferredFeaturesChangedToManagers(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "routerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1967
    .local p2, "preferredFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1968
    .local v0, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v0, :cond_0

    .line 1969
    return-void

    .line 1971
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .local v1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->access$500(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1973
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1974
    .local v4, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1975
    nop

    .end local v4    # "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    goto :goto_0

    .line 1976
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/IMediaRouter2Manager;

    .line 1979
    .local v3, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_1
    invoke-interface {v3, p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1983
    goto :goto_2

    .line 1980
    :catch_0
    move-exception v4

    .line 1981
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "MR2ServiceImpl"

    const-string v6, "Failed to notify preferred features changed. Manager probably died."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1984
    .end local v3    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 1985
    :cond_2
    return-void

    .line 1976
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V
    .locals 3
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "reason"    # I

    .line 1990
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/media/IMediaRouter2Manager;->notifyRequestFailed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    goto :goto_0

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify manager of the request failure. Manager probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1995
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .locals 6
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v0, "currentRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    const/4 v1, 0x0

    .line 1783
    .local v1, "systemProviderInfo":Landroid/media/MediaRoute2ProviderInfo;
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2ProviderInfo;

    .line 1785
    .local v3, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {v3}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v5}, Lcom/android/server/media/SystemMediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1787
    move-object v1, v3

    .line 1788
    goto :goto_0

    .line 1790
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1791
    .end local v3    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    goto :goto_0

    .line 1794
    :cond_1
    iget-boolean v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    const-string v3, "MR2ServiceImpl"

    if-eqz v2, :cond_3

    .line 1795
    if-eqz v1, :cond_2

    .line 1796
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1799
    :cond_2
    const-string v2, "System route provider not found."

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :goto_1
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .local v2, "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    goto :goto_2

    .line 1803
    .end local v2    # "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1804
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 1807
    .restart local v2    # "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1808
    return-void

    .line 1812
    :cond_4
    :try_start_0
    iget-object v4, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v4, v0, v2}, Landroid/media/IMediaRouter2;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1816
    goto :goto_3

    .line 1814
    :catch_0
    move-exception v4

    .line 1815
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "Failed to notify router registered. Router probably died."

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1817
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method private notifyRoutesAddedToManagers(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1880
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 1882
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1885
    goto :goto_1

    .line 1883
    :catch_0
    move-exception v2

    .line 1884
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes added. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1887
    :cond_0
    return-void
.end method

.method private notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1821
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2;

    .line 1823
    .local v1, "router":Landroid/media/IMediaRouter2;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    goto :goto_1

    .line 1824
    :catch_0
    move-exception v2

    .line 1825
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes added. Router probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1827
    .end local v1    # "router":Landroid/media/IMediaRouter2;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1828
    :cond_0
    return-void
.end method

.method private notifyRoutesChangedToManagers(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1902
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 1904
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    goto :goto_1

    .line 1905
    :catch_0
    move-exception v2

    .line 1906
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes changed. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1909
    :cond_0
    return-void
.end method

.method private notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1843
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2;

    .line 1845
    .local v1, "router":Landroid/media/IMediaRouter2;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    goto :goto_1

    .line 1846
    :catch_0
    move-exception v2

    .line 1847
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes changed. Router probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1849
    .end local v1    # "router":Landroid/media/IMediaRouter2;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1850
    :cond_0
    return-void
.end method

.method private notifyRoutesRemovedToManagers(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1891
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 1893
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesRemoved(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    goto :goto_1

    .line 1894
    :catch_0
    move-exception v2

    .line 1895
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes removed. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1897
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1898
    :cond_0
    return-void
.end method

.method private notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1832
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2;

    .line 1834
    .local v1, "router":Landroid/media/IMediaRouter2;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesRemoved(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    goto :goto_1

    .line 1835
    :catch_0
    move-exception v2

    .line 1836
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes removed. Router probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1838
    .end local v1    # "router":Landroid/media/IMediaRouter2;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1839
    :cond_0
    return-void
.end method

.method private notifyRoutesToManager(Landroid/media/IMediaRouter2Manager;)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 1864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderInfo;

    .line 1866
    .local v2, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1867
    .end local v2    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    goto :goto_0

    .line 1868
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1869
    return-void

    .line 1872
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Landroid/media/IMediaRouter2Manager;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1875
    goto :goto_1

    .line 1873
    :catch_0
    move-exception v1

    .line 1874
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2ServiceImpl"

    const-string v3, "Failed to notify all routes. Manager probably died."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private notifySessionCreatedToManagers(JLandroid/media/RoutingSessionInfo;)V
    .locals 7
    .param p1, "managerRequestId"    # J
    .param p3, "session"    # Landroid/media/RoutingSessionInfo;

    .line 1913
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v0

    .line 1914
    .local v0, "requesterId":I
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v1

    .line 1916
    .local v1, "originalRequestId":I
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1918
    .local v3, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    :try_start_0
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 1919
    iget v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne v5, v0, :cond_0

    move v5, v1

    goto :goto_1

    .line 1920
    :cond_0
    const/4 v5, 0x0

    .line 1918
    :goto_1
    invoke-interface {v4, v5, p3}, Landroid/media/IMediaRouter2Manager;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    goto :goto_2

    .line 1921
    :catch_0
    move-exception v4

    .line 1922
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "MR2ServiceImpl"

    const-string/jumbo v6, "notifySessionCreatedToManagers: Failed to notify. Manager probably died."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1925
    .end local v3    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_2
    goto :goto_0

    .line 1926
    :cond_1
    return-void
.end method

.method private notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "requestId"    # I
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1686
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, p2, p3}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    goto :goto_0

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify router of the session creation. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1691
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .locals 3
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "requestId"    # I

    .line 1696
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    goto :goto_0

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify router of the session creation failure. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1702
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifySessionInfoChangedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1707
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, p2}, Landroid/media/IMediaRouter2;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1711
    goto :goto_0

    .line 1708
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify router of the session info change. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1712
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 1854
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2;

    .line 1856
    .local v1, "router":Landroid/media/IMediaRouter2;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    goto :goto_1

    .line 1857
    :catch_0
    move-exception v2

    .line 1858
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify session info changed. Router probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1860
    .end local v1    # "router":Landroid/media/IMediaRouter2;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1861
    :cond_0
    return-void
.end method

.method private notifySessionReleasedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 1944
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 1946
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1950
    goto :goto_1

    .line 1947
    :catch_0
    move-exception v2

    .line 1948
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string/jumbo v4, "notifySessionReleasedToManagers: Failed to notify. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1951
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1952
    :cond_0
    return-void
.end method

.method private notifySessionReleasedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1717
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, p2}, Landroid/media/IMediaRouter2;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    goto :goto_0

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify router of the session release. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1722
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifySessionUpdatedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 1931
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 1933
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    goto :goto_1

    .line 1934
    :catch_0
    move-exception v2

    .line 1935
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string/jumbo v4, "notifySessionUpdatedToManagers: Failed to notify. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1938
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1939
    :cond_0
    return-void
.end method

.method private onProviderStateChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;)V
    .locals 12
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;

    .line 1265
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getLastProviderInfoIndex(Ljava/lang/String;)I

    move-result v0

    .line 1266
    .local v0, "providerInfoIndex":I
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v1

    .line 1268
    .local v1, "currentInfo":Landroid/media/MediaRoute2ProviderInfo;
    if-gez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderInfo;

    .line 1269
    .local v2, "prevInfo":Landroid/media/MediaRoute2ProviderInfo;
    :goto_0
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 1271
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    .local v3, "addedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .local v4, "removedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v5, "changedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    if-nez v2, :cond_2

    .line 1275
    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1277
    :cond_2
    if-nez v1, :cond_3

    .line 1278
    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1279
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1281
    :cond_3
    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1282
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    .line 1283
    .local v6, "prevRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    .line 1285
    .local v7, "currentRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 1286
    .local v9, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->isValid()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1287
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onProviderStateChangedOnHandler: Ignoring invalid route : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "MR2ServiceImpl"

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    goto :goto_1

    .line 1291
    :cond_4
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/media/MediaRoute2ProviderInfo;->getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v10

    .line 1292
    .local v10, "prevRoute":Landroid/media/MediaRoute2Info;
    if-nez v10, :cond_5

    .line 1293
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1294
    :cond_5
    invoke-static {v10, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1295
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    .end local v9    # "route":Landroid/media/MediaRoute2Info;
    .end local v10    # "prevRoute":Landroid/media/MediaRoute2Info;
    :cond_6
    :goto_2
    goto :goto_1

    .line 1299
    :cond_7
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 1300
    .local v9, "prevRoute":Landroid/media/MediaRoute2Info;
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/media/MediaRoute2ProviderInfo;->getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v10

    if-nez v10, :cond_8

    .line 1301
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    .end local v9    # "prevRoute":Landroid/media/MediaRoute2Info;
    :cond_8
    goto :goto_3

    .line 1306
    .end local v6    # "prevRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    .end local v7    # "currentRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :cond_9
    :goto_4
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v6

    .line 1307
    .local v6, "routersWithModifyAudioRoutingPermission":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v7

    .line 1308
    .local v7, "routersWithoutModifyAudioRoutingPermission":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object v8

    .line 1309
    .local v8, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v9, "defaultRoute":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v10, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v10}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 1313
    invoke-direct {p0, v6, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1314
    iget-boolean v10, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v10, :cond_a

    .line 1315
    invoke-direct {p0, v7, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    goto :goto_5

    .line 1317
    :cond_a
    if-nez v2, :cond_b

    .line 1318
    invoke-direct {p0, v7, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1321
    :cond_b
    :goto_5
    invoke-direct {p0, v8, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToManagers(Ljava/util/List;Ljava/util/List;)V

    .line 1323
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_e

    .line 1324
    invoke-direct {p0, v6, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1326
    iget-boolean v10, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v10, :cond_d

    .line 1327
    invoke-direct {p0, v7, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1330
    :cond_d
    invoke-direct {p0, v8, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToManagers(Ljava/util/List;Ljava/util/List;)V

    .line 1332
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_11

    .line 1333
    invoke-direct {p0, v6, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1335
    iget-boolean v10, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v10, :cond_f

    .line 1336
    invoke-direct {p0, v7, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    goto :goto_6

    .line 1338
    :cond_f
    if-eqz v2, :cond_10

    .line 1339
    invoke-direct {p0, v7, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1342
    :cond_10
    :goto_6
    invoke-direct {p0, v8, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToManagers(Ljava/util/List;Ljava/util/List;)V

    .line 1344
    :cond_11
    return-void
.end method

.method private onRequestFailedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "reason"    # I

    .line 1632
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->handleSessionCreationRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    return-void

    .line 1636
    :cond_0
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v0

    .line 1637
    .local v0, "requesterId":I
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object v1

    .line 1638
    .local v1, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-eqz v1, :cond_1

    .line 1639
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 1640
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v3

    .line 1639
    invoke-direct {p0, v2, v3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 1641
    return-void

    .line 1646
    :cond_1
    return-void
.end method

.method private onSessionCreatedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .locals 7
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1544
    const/4 v0, 0x0

    .line 1546
    .local v0, "matchingRequest":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1547
    .local v2, "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-wide v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 1549
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1548
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1550
    move-object v0, v2

    .line 1551
    goto :goto_1

    .line 1553
    .end local v2    # "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    :cond_0
    goto :goto_0

    .line 1555
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1556
    const-wide/16 v1, 0x0

    goto :goto_2

    .line 1557
    :cond_2
    iget-wide v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    :goto_2
    nop

    .line 1558
    .local v1, "managerRequestId":J
    invoke-direct {p0, v1, v2, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToManagers(JLandroid/media/RoutingSessionInfo;)V

    .line 1560
    const-string v3, "MR2ServiceImpl"

    if-nez v0, :cond_3

    .line 1561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring session creation result for unknown request. uniqueRequestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", sessionInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return-void

    .line 1566
    :cond_3
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1568
    iget-object v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 1569
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v4

    .line 1570
    .local v4, "oldProvider":Lcom/android/server/media/MediaRoute2Provider;
    if-eqz v4, :cond_4

    .line 1571
    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/media/MediaRoute2Provider;->prepareReleaseSession(Ljava/lang/String;)V

    goto :goto_3

    .line 1573
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSessionCreatedOnHandler: Can\'t find provider for an old session. session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :goto_3
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    iget-boolean v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v3, :cond_5

    .line 1580
    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1581
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1582
    invoke-virtual {v6}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v6

    .line 1580
    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V

    goto :goto_4

    .line 1584
    :cond_5
    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1585
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v5

    .line 1584
    invoke-direct {p0, v3, v5, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V

    .line 1587
    :goto_4
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    return-void
.end method

.method private onSessionInfoChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1592
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object v0

    .line 1593
    .local v0, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-direct {p0, v0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionUpdatedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1596
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    if-ne p1, v1, :cond_1

    .line 1597
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1598
    .local v1, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v1, :cond_0

    .line 1599
    return-void

    .line 1601
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1602
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1603
    invoke-virtual {v3}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    .line 1602
    invoke-direct {p0, v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1604
    return-void

    .line 1607
    .end local v1    # "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1608
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_2

    .line 1609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSessionInfoChangedOnHandler: No matching router found for session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2ServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-void

    .line 1613
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V

    .line 1614
    return-void
.end method

.method private onSessionReleasedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1618
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object v0

    .line 1619
    .local v0, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-direct {p0, v0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionReleasedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1621
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1622
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_0

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSessionReleasedOnHandler: No matching router found for session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2ServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return-void

    .line 1627
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionReleasedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V

    .line 1628
    return-void
.end method

.method private releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "uniqueSessionId"    # Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1511
    .local v0, "matchingRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    const-string v1, "MR2ServiceImpl"

    if-eq v0, p3, :cond_1

    .line 1512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring releasing session from non-matching router. packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    if-nez p3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uniqueSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1512
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void

    .line 1518
    :cond_1
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1519
    .local v2, "providerId":Ljava/lang/String;
    const-string v3, "Ignoring releasing session with invalid unique session ID. uniqueSessionId="

    if-nez v2, :cond_2

    .line 1520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return-void

    .line 1525
    :cond_2
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1526
    .local v4, "sessionId":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " providerId="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void

    .line 1532
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v3

    .line 1533
    .local v3, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v3, :cond_4

    .line 1534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring releasing session since no provider found for given providerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return-void

    .line 1539
    :cond_4
    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/media/MediaRoute2Provider;->releaseSession(JLjava/lang/String;)V

    .line 1540
    return-void
.end method

.method private requestCreateSessionWithRouter2OnHandler(JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "uniqueRequestId"    # J
    .param p3, "managerRequestId"    # J
    .param p5, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p6, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p7, "route"    # Landroid/media/MediaRoute2Info;
    .param p8, "sessionHints"    # Landroid/os/Bundle;

    .line 1380
    move-object v0, p0

    move-object/from16 v9, p5

    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v10

    .line 1381
    .local v10, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v10, :cond_0

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCreateSessionWithRouter2OnHandler: Ignoring session creation request since no provider found for given route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p7

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    nop

    .line 1385
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v1

    .line 1384
    invoke-direct {p0, v9, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 1386
    return-void

    .line 1389
    :cond_0
    move-object/from16 v11, p7

    new-instance v12, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    move-object v1, v12

    move-object/from16 v2, p5

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 1392
    .local v1, "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    iget-object v5, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 1395
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v6

    .line 1394
    move-object v2, v10

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/media/MediaRoute2Provider;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1396
    return-void
.end method

.method private requestRouterCreateSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "managerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .param p5, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p6, "route"    # Landroid/media/MediaRoute2Info;

    .line 1360
    :try_start_0
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1362
    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v1

    .line 1361
    invoke-interface {v0, p1, p2, p5, v1}, Landroid/media/IMediaRouter2;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_0

    .line 1364
    :cond_0
    iget-object v0, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, p1, p2, p5, p6}, Landroid/media/IMediaRouter2;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_0
    goto :goto_1

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "getSessionHintsForCreatingSessionOnHandler: Failed to request. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    iget-object v1, p4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 1371
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v2

    const/4 v3, 0x0

    .line 1370
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 1373
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private selectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "uniqueSessionId"    # Ljava/lang/String;
    .param p5, "route"    # Landroid/media/MediaRoute2Info;

    .line 1401
    const-string/jumbo v0, "selecting"

    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    return-void

    .line 1406
    :cond_0
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, "providerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v1

    .line 1408
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v1, :cond_1

    .line 1409
    return-void

    .line 1411
    :cond_1
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1412
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v3

    .line 1411
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/media/MediaRoute2Provider;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 1413
    return-void
.end method

.method private setRouteVolumeOnHandler(JLandroid/media/MediaRoute2Info;I)V
    .locals 3
    .param p1, "uniqueRequestId"    # J
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "volume"    # I

    .line 1489
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    .line 1490
    .local v0, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v0, :cond_0

    .line 1491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRouteVolumeOnHandler: Couldn\'t find provider for route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    return-void

    .line 1494
    :cond_0
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/media/MediaRoute2Provider;->setRouteVolume(JLjava/lang/String;I)V

    .line 1495
    return-void
.end method

.method private setSessionVolumeOnHandler(JLjava/lang/String;I)V
    .locals 3
    .param p1, "uniqueRequestId"    # J
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 1499
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    .line 1500
    .local v0, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v0, :cond_0

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSessionVolumeOnHandler: Couldn\'t find provider for session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    return-void

    .line 1505
    :cond_0
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/media/MediaRoute2Provider;->setSessionVolume(JLjava/lang/String;I)V

    .line 1506
    return-void
.end method

.method private start()V
    .locals 1

    .line 1190
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    if-nez v0, :cond_0

    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 1192
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->start()V

    .line 1194
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 1

    .line 1197
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    if-eqz v0, :cond_0

    .line 1198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 1199
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->stop()V

    .line 1201
    :cond_0
    return-void
.end method

.method private transferToRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "uniqueSessionId"    # Ljava/lang/String;
    .param p5, "route"    # Landroid/media/MediaRoute2Info;

    .line 1438
    const-string/jumbo v0, "transferring to"

    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    return-void

    .line 1443
    :cond_0
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "providerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v1

    .line 1445
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v1, :cond_1

    .line 1446
    return-void

    .line 1448
    :cond_1
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1449
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v3

    .line 1448
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/media/MediaRoute2Provider;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 1450
    return-void
.end method

.method private updateDiscoveryPreferenceOnHandler()V
    .locals 6

    .line 1998
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1999
    .local v0, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v0, :cond_0

    .line 2000
    return-void

    .line 2002
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2003
    .local v1, "discoveryPreferences":Ljava/util/List;, "Ljava/util/List<Landroid/media/RouteDiscoveryPreference;>;"
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->access$500(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2004
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 2005
    .local v4, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2006
    nop

    .end local v4    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    goto :goto_0

    .line 2007
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    new-instance v4, Landroid/media/RouteDiscoveryPreference$Builder;

    invoke-direct {v4, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/Collection;)V

    .line 2009
    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 2010
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRoute2Provider;

    .line 2012
    .local v3, "provider":Lcom/android/server/media/MediaRoute2Provider;
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRoute2Provider;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 2013
    .end local v3    # "provider":Lcom/android/server/media/MediaRoute2Provider;
    goto :goto_1

    .line 2014
    :cond_2
    return-void

    .line 2010
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .locals 3
    .param p1, "managerId"    # I

    .line 1256
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1257
    .local v1, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    iget v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne v2, p1, :cond_0

    .line 1258
    return-object v1

    .line 1260
    .end local v1    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    :cond_0
    goto :goto_0

    .line 1261
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .locals 1
    .param p1, "uniqueSessionId"    # Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    return-object v0
.end method

.method init()V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 1187
    return-void
.end method

.method public onAddProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 1205
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 1206
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 1208
    return-void
.end method

.method public onProviderStateChanged(Lcom/android/server/media/MediaRoute2Provider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;

    .line 1217
    sget-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$pb5SX6gBlgZXLZp0t4uVjgjp3EE;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$pb5SX6gBlgZXLZp0t4uVjgjp3EE;

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1219
    return-void
.end method

.method public onRemoveProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 1212
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1213
    return-void
.end method

.method public onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "reason"    # I

    .line 1245
    sget-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w;

    .line 1246
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1245
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1247
    return-void
.end method

.method public onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1224
    sget-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$11csKqp8tuwz43YmexCNG_6stD4;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$11csKqp8tuwz43YmexCNG_6stD4;

    .line 1225
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1224
    invoke-static {v0, p0, p1, v1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1226
    return-void
.end method

.method public onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1238
    sget-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1240
    return-void
.end method

.method public onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1231
    sget-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1233
    return-void
.end method
