.class Lcom/android/server/location/GnssNetworkConnectivityHandler;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;,
        Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
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

.field private mAvailableNetworkAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mGnssNetworkListener:Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

.field private final mHandler:Landroid/os/Handler;

.field private mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, "GnssNetworkConnectivityHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    .line 46
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gnssNetworkListener"    # Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 170
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

    .line 173
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 174
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GnssNetworkConnectivityHandler"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 176
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 177
    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 178
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 179
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssNetworkConnectivityHandler;)Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 42
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/net/NetworkCapabilities;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .param p1, "x1"    # Landroid/net/Network;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleSuplConnectionAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .locals 2

    .line 543
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 547
    :cond_0
    const-string v0, "OPEN"

    return-object v0

    .line 549
    :cond_1
    const-string v0, "OPENING"

    return-object v0

    .line 545
    :cond_2
    const-string v0, "CLOSED"

    return-object v0
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "agpsDataConnStatus"    # I

    .line 559
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

    .line 571
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

    .line 565
    :cond_0
    const-string v0, "FAILED"

    return-object v0

    .line 563
    :cond_1
    const-string v0, "DONE"

    return-object v0

    .line 561
    :cond_2
    const-string v0, "CONNECTED"

    return-object v0

    .line 567
    :cond_3
    const-string v0, "RELEASE"

    return-object v0

    .line 569
    :cond_4
    const-string v0, "REQUEST"

    return-object v0
.end method

.method private agpsTypeAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "agpsType"    # I

    .line 576
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 586
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

    .line 584
    :cond_0
    const-string v0, "IMS"

    return-object v0

    .line 582
    :cond_1
    const-string v0, "EIMS"

    return-object v0

    .line 580
    :cond_2
    const-string v0, "C2K"

    return-object v0

    .line 578
    :cond_3
    const-string v0, "SUPL"

    return-object v0
.end method

.method private createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 227
    new-instance v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 279
    new-instance v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private ensureInHandlerThread()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 534
    return-void

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 17
    .param p1, "apn"    # Ljava/lang/String;

    .line 591
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->ensureInHandlerThread()V

    .line 592
    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 593
    return v0

    .line 595
    :cond_0
    iget-object v4, v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 596
    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 597
    .local v4, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    .line 598
    .local v5, "serviceState":Landroid/telephony/ServiceState;
    const/4 v6, 0x0

    .line 599
    .local v6, "projection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 603
    .local v7, "selection":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 604
    const-string/jumbo v6, "roaming_protocol"

    goto :goto_0

    .line 606
    :cond_1
    const-string/jumbo v6, "protocol"

    .line 609
    :goto_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-nez v8, :cond_2

    iget v8, v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    if-ne v9, v8, :cond_2

    .line 611
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string/jumbo v11, "type like \'%%emergency%%\' and apn = \'%s\' and carrier_enabled = 1"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 614
    :cond_2
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string v11, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 616
    :goto_1
    :try_start_0
    iget-object v8, v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

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

    .line 622
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 623
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 623
    return v0

    .line 616
    :catchall_0
    move-exception v0

    move-object v10, v0

    goto :goto_2

    .line 625
    :cond_3
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

    .line 627
    if-eqz v8, :cond_4

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 629
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    goto :goto_4

    .line 616
    .end local v4    # "phone":Landroid/telephony/TelephonyManager;
    .end local v5    # "serviceState":Landroid/telephony/ServiceState;
    .end local v6    # "projection":Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .end local p1    # "apn":Ljava/lang/String;
    :goto_2
    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 627
    .restart local v4    # "phone":Landroid/telephony/TelephonyManager;
    .restart local v5    # "serviceState":Landroid/telephony/ServiceState;
    .restart local v6    # "projection":Ljava/lang/String;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .restart local p1    # "apn":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v11, v0

    if-eqz v8, :cond_5

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v12, v0

    :try_start_7
    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "phone":Landroid/telephony/TelephonyManager;
    .end local v5    # "serviceState":Landroid/telephony/ServiceState;
    .end local v6    # "projection":Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .end local p1    # "apn":Ljava/lang/String;
    :cond_5
    :goto_3
    throw v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "phone":Landroid/telephony/TelephonyManager;
    .restart local v5    # "serviceState":Landroid/telephony/ServiceState;
    .restart local v6    # "projection":Ljava/lang/String;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .restart local p1    # "apn":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error encountered on APN query for: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return v9
.end method

.method private getNetworkCapability(I)I
    .locals 3
    .param p1, "agpsType"    # I

    .line 475
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 482
    return v0

    .line 484
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

    .line 480
    :cond_1
    const/16 v0, 0xa

    return v0

    .line 478
    :cond_2
    return v0
.end method

.method private handleReleaseSuplConnection(I)V
    .locals 6
    .param p1, "agpsDataConnStatus"    # I

    .line 489
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 490
    new-array v0, v3, [Ljava/lang/Object;

    .line 492
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x1

    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 490
    const-string/jumbo v4, "releaseSuplConnection, state=%s, status=%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "message":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-nez v0, :cond_1

    .line 498
    return-void

    .line 501
    :cond_1
    iput v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 502
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 503
    if-eq p1, v3, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_failed()V

    .line 506
    goto :goto_0

    .line 508
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_closed()V

    .line 509
    nop

    .line 513
    :goto_0
    return-void
.end method

.method private handleRequestSuplConnection(I[B)V
    .locals 6
    .param p1, "agpsType"    # I
    .param p2, "suplIpAddr"    # [B

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 435
    iput p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    .line 436
    const-string v0, "GnssNetworkConnectivityHandler"

    if-eqz p2, :cond_2

    .line 437
    sget-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->VERBOSE:Z

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

    .line 439
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 440
    sget-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address converted to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_1
    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 447
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 449
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsTypeAsString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    aput-object v5, v1, v4

    .line 447
    const-string/jumbo v4, "requestSuplConnection, state=%s, agpsType=%s, address=%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "message":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_4

    .line 456
    return-void

    .line 458
    :cond_4
    iput v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 463
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 464
    .local v0, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    iget v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->getNetworkCapability(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 465
    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 466
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 467
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v4, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2710

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V

    .line 472
    return-void
.end method

.method private handleSuplConnectionAvailable(Landroid/net/Network;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;

    .line 391
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 392
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 393
    .local v1, "apn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 397
    :cond_0
    sget-boolean v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v3, "GnssNetworkConnectivityHandler"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 398
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 400
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    .line 398
    const-string v7, "handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "message":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-ne v2, v6, :cond_5

    .line 407
    if-nez v1, :cond_2

    .line 410
    const-string v1, "dummy-apn"

    .line 416
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_3

    .line 417
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->setRouting()V

    .line 420
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->getApnIpType(Ljava/lang/String;)I

    move-result v2

    .line 421
    .local v2, "apnIpType":I
    sget-boolean v7, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 422
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v4

    .line 425
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    .line 422
    const-string/jumbo v4, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "message":Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v4    # "message":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    .line 429
    iput v5, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 431
    .end local v2    # "apnIpType":I
    :cond_5
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .locals 16
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isConnected"    # Z
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 324
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v11, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    .line 325
    .local v4, "networkAvailable":Z
    :goto_0
    move-object/from16 v2, p3

    invoke-direct {v9, v11, v10, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    move-result-object v12

    .line 327
    .local v12, "networkAttributes":Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
    invoke-static {v12}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$700(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;

    move-result-object v13

    .line 328
    .local v13, "apn":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$800(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)I

    move-result v14

    .line 331
    .local v14, "type":I
    invoke-static {v12}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$900(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;

    move-result-object v15

    .line 332
    .end local p3    # "capabilities":Landroid/net/NetworkCapabilities;
    .local v15, "capabilities":Landroid/net/NetworkCapabilities;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 336
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object v10, v2, v0

    const/4 v0, 0x3

    aput-object v15, v2, v0

    const/4 v0, 0x4

    aput-object v13, v2, v0

    const/4 v0, 0x5

    iget-object v3, v9, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 340
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 332
    const-string/jumbo v0, "updateNetworkState, state=%s, connected=%s, network=%s, capabilities=%s, apn: %s, availableNetworkCount: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssNetworkConnectivityHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const/16 v0, 0x12

    .line 346
    invoke-virtual {v15, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 349
    xor-int/lit8 v3, v0, 0x1

    if-eqz v13, :cond_1

    move-object v5, v13

    goto :goto_1

    :cond_1
    const-string v0, ""

    move-object v5, v0

    .line 350
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    .line 351
    invoke-static {v15}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1000(Landroid/net/NetworkCapabilities;)S

    move-result v8

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_update_network_state(ZIZZLjava/lang/String;JS)V

    goto :goto_2

    .line 352
    :cond_2
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 353
    const-string v0, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_3
    :goto_2
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

    .line 313
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$aTyNcuGLHmJGtXKl9qoZpMmhfBY;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$aTyNcuGLHmJGtXKl9qoZpMmhfBY;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 306
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 307
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 310
    :cond_0
    return-void
.end method

.method private setRouting()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 522
    .local v0, "result":Z
    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_0

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    :cond_0
    sget-boolean v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    :goto_0
    return-void
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .line 635
    const-string v0, "IP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 636
    return v1

    .line 638
    :cond_0
    const-string v0, "IPV6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 639
    return v2

    .line 641
    :cond_1
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 642
    return v3

    .line 646
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string v1, "Unknown IP Protocol: %s, for APN: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssNetworkConnectivityHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v3
.end method

.method private updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
    .locals 3
    .param p1, "isConnected"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 359
    if-nez p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    return-object v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 365
    .local v0, "networkAttributes":Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
    if-eqz v0, :cond_1

    .line 367
    invoke-static {v0, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$902(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 368
    return-object v0

    .line 372
    :cond_1
    new-instance v1, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler$1;)V

    move-object v0, v1

    .line 373
    invoke-static {v0, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$902(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 377
    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 378
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 379
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$702(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$802(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;I)I

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-object v0
.end method


# virtual methods
.method isDataNetworkConnected()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 198
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

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleRequestSuplConnection(I[B)V

    return-void
.end method

.method public synthetic lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler()V
    .locals 1

    .line 215
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method public synthetic lambda$runEventAndReleaseWakeLock$2$GnssNetworkConnectivityHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 315
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 318
    nop

    .line 319
    return-void

    .line 317
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method onReportAGpsStatus(II[B)V
    .locals 3
    .param p1, "agpsType"    # I
    .param p2, "agpsStatus"    # I
    .param p3, "suplIpAddr"    # [B

    .line 209
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_DATA_CONNECTION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
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

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown AGPS status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_1
    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 216
    goto :goto_0

    .line 212
    :cond_3
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;I[B)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 213
    nop

    .line 224
    :goto_0
    return-void
.end method

.method registerNetworkCallbacks()V
    .locals 5

    .line 183
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 184
    .local v0, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 185
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 186
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 188
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 189
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v4, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 190
    return-void
.end method
