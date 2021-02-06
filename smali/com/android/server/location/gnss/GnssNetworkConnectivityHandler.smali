.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;,
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;,
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    }
.end annotation


# static fields
.field private static final AGNSS_NET_CAPABILITY_NOT_METERED:I = 0x1

.field private static final AGNSS_NET_CAPABILITY_NOT_ROAMING:I = 0x2

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field public static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_EIMS:I = 0x3

.field private static final AGPS_TYPE_IMS:I = 0x4

.field public static final AGPS_TYPE_SUPL:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final DEBUG:Z

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final HASH_MAP_INITIAL_CAPACITY_TO_TRACK_CONNECTED_NETWORKS:I = 0x5

.field private static final SUPL_NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private mAGpsType:I

.field private mActiveSubId:I

.field private mAvailableNetworkAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

.field private final mHandler:Landroid/os/Handler;

.field private mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "GnssNetworkConnectivityHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    .line 57
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gnssNetworkListener"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "niHandler"    # Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 228
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 188
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

    .line 191
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 192
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 196
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 197
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 200
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 201
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 202
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 53
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 53
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 53
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 53
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/net/NetworkCapabilities;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
    .param p1, "x1"    # Landroid/net/Network;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleSuplConnectionAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .locals 2

    .line 661
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 665
    :cond_0
    const-string v0, "OPEN"

    return-object v0

    .line 667
    :cond_1
    const-string v0, "OPENING"

    return-object v0

    .line 663
    :cond_2
    const-string v0, "CLOSED"

    return-object v0
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "agpsDataConnStatus"    # I

    .line 677
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :cond_0
    const-string v0, "FAILED"

    return-object v0

    .line 681
    :cond_1
    const-string v0, "DONE"

    return-object v0

    .line 679
    :cond_2
    const-string v0, "CONNECTED"

    return-object v0

    .line 685
    :cond_3
    const-string v0, "RELEASE"

    return-object v0

    .line 687
    :cond_4
    const-string v0, "REQUEST"

    return-object v0
.end method

.method private agpsTypeAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "agpsType"    # I

    .line 694
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 702
    :cond_0
    const-string v0, "IMS"

    return-object v0

    .line 700
    :cond_1
    const-string v0, "EIMS"

    return-object v0

    .line 698
    :cond_2
    const-string v0, "C2K"

    return-object v0

    .line 696
    :cond_3
    const-string v0, "SUPL"

    return-object v0
.end method

.method private createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 335
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 387
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private ensureInHandlerThread()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 652
    return-void

    .line 654
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 17
    .param p1, "apn"    # Ljava/lang/String;

    .line 709
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->ensureInHandlerThread()V

    .line 710
    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 711
    return v0

    .line 713
    :cond_0
    iget-object v4, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 714
    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 717
    .local v4, "phone":Landroid/telephony/TelephonyManager;
    iget-object v5, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    if-ltz v5, :cond_1

    .line 718
    nop

    .line 719
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 720
    .local v5, "subIdTelManager":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_1

    .line 721
    move-object v4, v5

    .line 724
    .end local v5    # "subIdTelManager":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    .line 725
    .local v5, "serviceState":Landroid/telephony/ServiceState;
    const/4 v6, 0x0

    .line 726
    .local v6, "projection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 730
    .local v7, "selection":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 731
    const-string/jumbo v6, "roaming_protocol"

    goto :goto_0

    .line 733
    :cond_2
    const-string/jumbo v6, "protocol"

    .line 736
    :goto_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-nez v8, :cond_3

    iget v8, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    if-ne v9, v8, :cond_3

    .line 738
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string/jumbo v11, "type like \'%%emergency%%\' and apn = \'%s\' and carrier_enabled = 1"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 741
    :cond_3
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string v11, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 743
    :goto_1
    :try_start_0
    iget-object v8, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v13, v10, [Ljava/lang/String;

    aput-object v6, v13, v0

    const/4 v15, 0x0

    const-string/jumbo v16, "name ASC"

    move-object v14, v7

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_5

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 750
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    if-eqz v8, :cond_4

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 750
    :cond_4
    return v0

    .line 743
    :catchall_0
    move-exception v0

    move-object v10, v0

    goto :goto_2

    .line 752
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No entry found in query for APN: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 754
    if-eqz v8, :cond_6

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 756
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_6
    goto :goto_4

    .line 743
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :goto_2
    if-eqz v8, :cond_7

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_6
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "phone":Landroid/telephony/TelephonyManager;
    .end local v5    # "serviceState":Landroid/telephony/ServiceState;
    .end local v6    # "projection":Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
    .end local p1    # "apn":Ljava/lang/String;
    :cond_7
    :goto_3
    throw v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 754
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "phone":Landroid/telephony/TelephonyManager;
    .restart local v5    # "serviceState":Landroid/telephony/ServiceState;
    .restart local v6    # "projection":Ljava/lang/String;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
    .restart local p1    # "apn":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error encountered on APN query for: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return v9
.end method

.method private getNetworkCapability(I)I
    .locals 3
    .param p1, "agpsType"    # I

    .line 593
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 600
    return v0

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agpsType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    const/16 v0, 0xa

    return v0

    .line 596
    :cond_2
    return v0
.end method

.method private handleReleaseSuplConnection(I)V
    .locals 6
    .param p1, "agpsDataConnStatus"    # I

    .line 607
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 608
    new-array v0, v3, [Ljava/lang/Object;

    .line 610
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x1

    .line 611
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 608
    const-string/jumbo v4, "releaseSuplConnection, state=%s, status=%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "message":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-nez v0, :cond_1

    .line 616
    return-void

    .line 619
    :cond_1
    iput v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 620
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 621
    if-eq p1, v3, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_failed()V

    .line 624
    goto :goto_0

    .line 626
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_closed()V

    .line 627
    nop

    .line 631
    :goto_0
    return-void
.end method

.method private handleRequestSuplConnection(I[B)V
    .locals 6
    .param p1, "agpsType"    # I
    .param p2, "suplIpAddr"    # [B

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 547
    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    .line 548
    const-string v0, "GnssNetworkConnectivityHandler"

    if-eqz p2, :cond_2

    .line 549
    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SUPL IP addr[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 552
    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address converted to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_1
    goto :goto_0

    .line 553
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 559
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 561
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsTypeAsString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    aput-object v5, v1, v4

    .line 559
    const-string/jumbo v4, "requestSuplConnection, state=%s, agpsType=%s, address=%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "message":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v1, :cond_4

    .line 568
    return-void

    .line 570
    :cond_4
    iput v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 575
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 576
    .local v1, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    iget v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getNetworkCapability(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 577
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 580
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    if-ltz v2, :cond_6

    .line 581
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding Network Specifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_5
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 584
    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 585
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2710

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V

    .line 590
    return-void
.end method

.method private handleSuplConnectionAvailable(Landroid/net/Network;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;

    .line 503
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 504
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 505
    .local v1, "apn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 509
    :cond_0
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v3, "GnssNetworkConnectivityHandler"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 510
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 512
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    .line 510
    const-string v7, "handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "message":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-ne v2, v6, :cond_5

    .line 519
    if-nez v1, :cond_2

    .line 522
    const-string v1, "dummy-apn"

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_3

    .line 529
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->setRouting()V

    .line 532
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getApnIpType(Ljava/lang/String;)I

    move-result v2

    .line 533
    .local v2, "apnIpType":I
    sget-boolean v7, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 534
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v4

    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    .line 534
    const-string/jumbo v4, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, "message":Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v4    # "message":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    .line 541
    iput v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 543
    .end local v2    # "apnIpType":I
    :cond_5
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .locals 19
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isConnected"    # Z
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 432
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const/4 v0, 0x0

    .line 433
    .local v0, "networkAvailable":Z
    iget-object v1, v9, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 434
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v12, :cond_1

    .line 435
    if-eqz v11, :cond_0

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v0, v3

    move v13, v0

    goto :goto_1

    .line 434
    :cond_1
    move v13, v0

    .line 437
    .end local v0    # "networkAvailable":Z
    .local v13, "networkAvailable":Z
    :goto_1
    move-object/from16 v0, p3

    invoke-direct {v9, v11, v10, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    move-result-object v14

    .line 439
    .local v14, "networkAttributes":Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1000(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;

    move-result-object v15

    .line 440
    .local v15, "apn":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1100(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)I

    move-result v16

    .line 443
    .local v16, "type":I
    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 444
    .end local p3    # "capabilities":Landroid/net/NetworkCapabilities;
    .local v8, "capabilities":Landroid/net/NetworkCapabilities;
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 448
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object v10, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    const/4 v1, 0x4

    aput-object v15, v0, v1

    const/4 v1, 0x5

    iget-object v3, v9, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 452
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 444
    const-string/jumbo v1, "updateNetworkState, state=%s, connected=%s, network=%s, capabilities=%s, apn: %s, availableNetworkCount: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssNetworkConnectivityHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    const/16 v0, 0x12

    .line 458
    invoke-virtual {v8, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 461
    xor-int/lit8 v3, v0, 0x1

    if-eqz v15, :cond_2

    move-object v5, v15

    goto :goto_2

    :cond_2
    const-string v0, ""

    move-object v5, v0

    .line 462
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    .line 463
    invoke-static {v8}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1300(Landroid/net/NetworkCapabilities;)S

    move-result v17

    .line 455
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v16

    move v4, v13

    move-object/from16 v18, v8

    .end local v8    # "capabilities":Landroid/net/NetworkCapabilities;
    .local v18, "capabilities":Landroid/net/NetworkCapabilities;
    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_update_network_state(ZIZZLjava/lang/String;JS)V

    goto :goto_3

    .line 464
    .end local v18    # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v8    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_3
    move-object/from16 v18, v8

    .end local v8    # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v18    # "capabilities":Landroid/net/NetworkCapabilities;
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 465
    const-string v0, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_4
    :goto_3
    return-void
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(JLjava/lang/String;I)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;JS)V
.end method

.method private runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 421
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$ezDFQHbzZ9WnxJSpYWB6YP4YDQM;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$ezDFQHbzZ9WnxJSpYWB6YP4YDQM;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 414
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 415
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 418
    :cond_0
    return-void
.end method

.method private setRouting()V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 640
    .local v0, "result":Z
    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    :cond_0
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_1
    :goto_0
    return-void
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .line 762
    const-string v0, "IP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 763
    return v1

    .line 765
    :cond_0
    const-string v0, "IPV6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 766
    return v2

    .line 768
    :cond_1
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 769
    return v3

    .line 773
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string v1, "Unknown IP Protocol: %s, for APN: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssNetworkConnectivityHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return v3
.end method

.method private updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    .locals 3
    .param p1, "isConnected"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 471
    if-nez p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    return-object v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 477
    .local v0, "networkAttributes":Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    if-eqz v0, :cond_1

    .line 479
    invoke-static {v0, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1202(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 480
    return-object v0

    .line 484
    :cond_1
    new-instance v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;)V

    move-object v0, v1

    .line 485
    invoke-static {v0, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1202(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 489
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 490
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 491
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1002(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1102(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;I)I

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    return-object v0
.end method


# virtual methods
.method isDataNetworkConnected()Z
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 306
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$onReportAGpsStatus$0$GnssNetworkConnectivityHandler(I[B)V
    .locals 0
    .param p1, "agpsType"    # I
    .param p2, "suplIpAddr"    # [B

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleRequestSuplConnection(I[B)V

    return-void
.end method

.method public synthetic lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler()V
    .locals 1

    .line 323
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method public synthetic lambda$runEventAndReleaseWakeLock$2$GnssNetworkConnectivityHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 423
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 426
    nop

    .line 427
    return-void

    .line 425
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 426
    throw v0
.end method

.method onReportAGpsStatus(II[B)V
    .locals 3
    .param p1, "agpsType"    # I
    .param p2, "agpsStatus"    # I
    .param p3, "suplIpAddr"    # [B

    .line 317
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_DATA_CONNECTION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown AGPS status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_1
    goto :goto_0

    .line 323
    :cond_2
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$M5xHE3b_460ydxe6w6OcvDX9Kx8;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$M5xHE3b_460ydxe6w6OcvDX9Kx8;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 324
    goto :goto_0

    .line 320
    :cond_3
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$bnc6RM72T8jpSxM08ugCgEMySwo;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$bnc6RM72T8jpSxM08ugCgEMySwo;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I[B)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 321
    nop

    .line 332
    :goto_0
    return-void
.end method

.method registerNetworkCallbacks()V
    .locals 5

    .line 291
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 292
    .local v0, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 293
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 294
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 295
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 296
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 297
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 298
    return-void
.end method
