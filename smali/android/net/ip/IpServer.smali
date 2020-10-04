.class public Landroid/net/ip/IpServer;
.super Lcom/android/internal/util/StateMachine;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpServer$UnavailableState;,
        Landroid/net/ip/IpServer$TetheredState;,
        Landroid/net/ip/IpServer$LocalHotspotState;,
        Landroid/net/ip/IpServer$BaseServingState;,
        Landroid/net/ip/IpServer$InitialState;,
        Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;,
        Landroid/net/ip/IpServer$OnHandlerStatusCallback;,
        Landroid/net/ip/IpServer$Dependencies;,
        Landroid/net/ip/IpServer$Callback;
    }
.end annotation


# static fields
.field private static final BASE_IFACE:I = 0x50064

.field private static final BLUETOOTH_DHCP_PREFIX_LENGTH:I = 0x18

.field private static final BLUETOOTH_IFACE_ADDR:Ljava/lang/String; = "192.168.44.1"

.field public static final CMD_INTERFACE_DOWN:I = 0x50068

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x50071

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x5006c

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x5006b

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x5006f

.field public static final CMD_START_TETHERING_ERROR:I = 0x5006d

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x5006e

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x50070

.field public static final CMD_TETHER_REQUESTED:I = 0x50066

.field public static final CMD_TETHER_UNREQUESTED:I = 0x50067

.field private static final DBG:Z

.field private static final DHCP_LEASE_TIME_SECS:I = 0xe10

.field private static final DOUG_ADAMS:B = 0x2at

.field public static final STATE_AVAILABLE:I = 0x1

.field public static final STATE_LOCAL_ONLY:I = 0x3

.field public static final STATE_TETHERED:I = 0x2

.field public static final STATE_UNAVAILABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IpServer"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z

.field private static final WIFI_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.43.1"

.field private static final WIFI_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final WIGIG_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.50.1"

.field private static final WIGIG_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Landroid/net/ip/IpServer$Callback;

.field private mCallerPkg:Ljava/lang/String;

.field private final mDeps:Landroid/net/ip/IpServer$Dependencies;

.field private mDhcpServer:Landroid/net/dhcp/IDhcpServer;

.field private mDhcpServerStartIndex:I

.field private final mIfaceName:Ljava/lang/String;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceCtrl:Landroid/net/ip/InterfaceController;

.field private mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mInterfaceType:I

.field private mLastError:I

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/internal/util/State;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private mServingMode:I

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetheredState:Lcom/android/internal/util/State;

.field private final mUnavailableState:Lcom/android/internal/util/State;

.field private mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mUsingLegacyDhcp:Z

.field private mV6OnlyTetherEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 110
    const-string/jumbo v0, "persist.radio.vendor.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/net/ip/IpServer;->DBG:Z

    .line 111
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/net/ip/IpServer;->VDBG:Z

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Landroid/net/ip/IpServer;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/ip/IpServer;->messageClasses:[Ljava/lang/Class;

    .line 115
    sget-object v0, Landroid/net/ip/IpServer;->messageClasses:[Ljava/lang/Class;

    .line 116
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/ip/IpServer$Callback;ZLandroid/net/ip/IpServer$Dependencies;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "interfaceType"    # I
    .param p4, "log"    # Landroid/net/util/SharedLog;
    .param p5, "nMService"    # Landroid/os/INetworkManagementService;
    .param p6, "statsService"    # Landroid/net/INetworkStatsService;
    .param p7, "callback"    # Landroid/net/ip/IpServer$Callback;
    .param p8, "usingLegacyDhcp"    # Z
    .param p9, "deps"    # Landroid/net/ip/IpServer$Dependencies;

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 230
    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    .line 231
    iput-object p5, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    .line 232
    invoke-virtual {p9}, Landroid/net/ip/IpServer$Dependencies;->getNetdService()Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    .line 233
    iput-object p6, p0, Landroid/net/ip/IpServer;->mStatsService:Landroid/net/INetworkStatsService;

    .line 234
    iput-object p7, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    .line 235
    new-instance v1, Landroid/net/ip/InterfaceController;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    iget-object v3, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v1, p1, v2, v3}, Landroid/net/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/net/INetd;Landroid/net/util/SharedLog;)V

    iput-object v1, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    .line 236
    iput-object p1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 237
    iput p3, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    .line 238
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 239
    iput-boolean p8, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    .line 240
    iput-object p9, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    .line 241
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    .line 243
    const-string/jumbo v1, "persist.radio.vendor.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/ip/IpServer;->mV6OnlyTetherEnabled:Z

    .line 245
    iput v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 248
    new-instance v0, Landroid/net/ip/IpServer$InitialState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpServer$InitialState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    .line 249
    new-instance v0, Landroid/net/ip/IpServer$LocalHotspotState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpServer$LocalHotspotState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object v0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    .line 250
    new-instance v0, Landroid/net/ip/IpServer$TetheredState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpServer$TetheredState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object v0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    .line 251
    new-instance v0, Landroid/net/ip/IpServer$UnavailableState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpServer$UnavailableState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object v0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    .line 252
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 253
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 254
    iget-object v0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 255
    iget-object v0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 257
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->setInitialState(Lcom/android/internal/util/State;)V

    .line 258
    return-void
.end method

.method static synthetic access$000(Landroid/net/ip/IpServer;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return v0
.end method

.method static synthetic access$002(Landroid/net/ip/IpServer;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p1
.end method

.method static synthetic access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/ip/IpServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallerPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/net/ip/IpServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Landroid/net/ip/IpServer;->mCallerPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 77
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/ip/IpServer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/ip/IpServer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/net/ip/IpServer;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/ip/IpServer;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    return v0
.end method

.method static synthetic access$2000(Landroid/net/ip/IpServer;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv4()V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/ip/IpServer;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    return-void
.end method

.method static synthetic access$2200()Z
    .locals 1

    .line 77
    sget-boolean v0, Landroid/net/ip/IpServer;->DBG:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/net/ip/IpServer;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;
    .param p1, "x1"    # Landroid/net/util/InterfaceSet;

    .line 77
    iput-object p1, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2500(Landroid/net/ip/IpServer;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .line 77
    sget-boolean v0, Landroid/net/ip/IpServer;->VDBG:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/net/ip/IpServer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mV6OnlyTetherEnabled:Z

    return v0
.end method

.method static synthetic access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/ip/IpServer;)Landroid/net/dhcp/IDhcpServer;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/IpServer;

    .line 77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/ip/IpServer;Landroid/net/dhcp/IDhcpServer;)Landroid/net/dhcp/IDhcpServer;
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;
    .param p1, "x1"    # Landroid/net/dhcp/IDhcpServer;

    .line 77
    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/ip/IpServer;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->sendInterfaceState(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/IpServer;
    .param p1, "x1"    # Lcom/android/internal/util/State;
    .param p2, "x2"    # I

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method private configureDhcp(ZLjava/net/Inet4Address;I)Z
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "addr"    # Ljava/net/Inet4Address;
    .param p3, "prefixLen"    # I

    .line 393
    if-eqz p1, :cond_0

    .line 394
    invoke-direct {p0, p2, p3}, Landroid/net/ip/IpServer;->startDhcp(Ljava/net/Inet4Address;I)Z

    move-result v0

    return v0

    .line 396
    :cond_0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method private configureIPv4(Z)Z
    .locals 9
    .param p1, "enabled"    # Z

    .line 419
    sget-boolean v0, Landroid/net/ip/IpServer;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureIPv4("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    const/4 v0, 0x0

    .line 424
    .local v0, "ipAsString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 425
    .local v1, "prefixLen":I
    iget v2, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 426
    const-string v0, "192.168.42.129"

    .line 427
    const/16 v1, 0x18

    goto :goto_0

    .line 428
    :cond_1
    if-nez v2, :cond_5

    .line 436
    if-nez p1, :cond_2

    .line 437
    const-string v0, "0.0.0.0"

    goto :goto_0

    .line 438
    :cond_2
    iget-object v2, p0, Landroid/net/ip/IpServer;->mCallerPkg:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 439
    const-string v4, "com.oneplus.filemanager"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/net/ip/IpServer;->mCallerPkg:Ljava/lang/String;

    .line 440
    const-string v4, "com.lenovo.anyshare"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    :cond_3
    const-string v0, "192.168.43.1"

    .line 442
    const/16 v1, 0x18

    goto :goto_0

    .line 444
    :cond_4
    invoke-direct {p0}, Landroid/net/ip/IpServer;->getRandomWifiIPv4Address()Ljava/lang/String;

    move-result-object v0

    .line 445
    const/16 v1, 0x18

    goto :goto_0

    .line 448
    :cond_5
    const/4 v4, 0x3

    if-ne v2, v4, :cond_c

    .line 449
    const-string v0, "192.168.50.1"

    .line 450
    const/16 v1, 0x18

    .line 459
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 460
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    if-nez v4, :cond_6

    .line 461
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v5, "Received null interface config"

    invoke-virtual {v3, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 462
    return v2

    .line 465
    :cond_6
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 466
    .local v5, "addr":Ljava/net/InetAddress;
    new-instance v6, Landroid/net/LinkAddress;

    invoke-direct {v6, v5, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 467
    .local v6, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v4, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 468
    iget v7, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-nez v7, :cond_7

    .line 472
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->ignoreInterfaceUpDownStatus()V

    goto :goto_1

    .line 474
    :cond_7
    if-eqz p1, :cond_8

    .line 475
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    goto :goto_1

    .line 477
    :cond_8
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 480
    :goto_1
    const-string/jumbo v7, "running"

    invoke-virtual {v4, v7}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 484
    iget-object v7, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 486
    move-object v7, v5

    check-cast v7, Ljava/net/Inet4Address;

    invoke-direct {p0, p1, v7, v1}, Landroid/net/ip/IpServer;->configureDhcp(ZLjava/net/Inet4Address;I)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_9

    .line 487
    return v2

    .line 500
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v5    # "addr":Ljava/net/InetAddress;
    :cond_9
    nop

    .line 503
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;)V

    .line 504
    .local v2, "route":Landroid/net/RouteInfo;
    if-eqz p1, :cond_a

    .line 505
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 506
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_2

    .line 508
    :cond_a
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 509
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v2}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 511
    :goto_2
    return v3

    .line 489
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v6    # "linkAddr":Landroid/net/LinkAddress;
    :catch_0
    move-exception v3

    .line 490
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error configuring interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 491
    if-nez p1, :cond_b

    .line 494
    :try_start_1
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    goto :goto_3

    .line 495
    :catch_1
    move-exception v4

    .line 496
    .local v4, "dhcpError":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v6, "Error stopping DHCP"

    invoke-virtual {v5, v6, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    .end local v4    # "dhcpError":Ljava/lang/Exception;
    :cond_b
    :goto_3
    return v2

    .line 453
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c
    const-string v2, "192.168.44.1"

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    .line 454
    .local v2, "srvAddr":Ljava/net/Inet4Address;
    const/16 v3, 0x18

    invoke-direct {p0, p1, v2, v3}, Landroid/net/ip/IpServer;->configureDhcp(ZLjava/net/Inet4Address;I)Z

    move-result v3

    return v3
.end method

.method private configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p1, "deprecatedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    .local p2, "newDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_1

    .line 642
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 643
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 644
    return-void

    .line 648
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_3

    .line 649
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 650
    .local v2, "dns":Ljava/net/Inet6Address;
    iget-object v3, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v3, v2, v1}, Landroid/net/ip/InterfaceController;->removeAddress(Ljava/net/InetAddress;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 651
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove local dns IP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 654
    :cond_2
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 655
    .end local v2    # "dns":Ljava/net/Inet6Address;
    goto :goto_0

    .line 659
    :cond_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 660
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 661
    .local v0, "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v2, :cond_4

    .line 662
    iget-object v2, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 665
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet6Address;

    .line 666
    .local v3, "dns":Ljava/net/Inet6Address;
    iget-object v4, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v4, v3, v1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 667
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add local dns IP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 671
    :cond_5
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v3, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 672
    .end local v3    # "dns":Ljava/net/Inet6Address;
    goto :goto_1

    .line 676
    .end local v0    # "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    :cond_6
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    goto :goto_2

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to update local DNS caching server"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 679
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 681
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_2
    return-void
.end method

.method private configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 597
    .local p1, "deprecatedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    .local p2, "newPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 599
    invoke-static {v0, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v0

    .line 601
    .local v0, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v1

    .line 602
    .local v1, "removalFailures":I
    if-lez v1, :cond_0

    .line 603
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v3, "Failed to remove %d IPv6 routes from local table."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 604
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 603
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v1    # "removalFailures":I
    :cond_0
    goto :goto_0

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove IPv6 routes from local table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 610
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .local v2, "route":Landroid/net/RouteInfo;
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1

    .line 614
    .end local v0    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    .end local v2    # "route":Landroid/net/RouteInfo;
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 615
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 616
    .local v0, "addedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v1, :cond_2

    .line 617
    iget-object v1, v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 620
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 621
    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 622
    invoke-static {v1, v0}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 628
    .local v1, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_1
    iget-object v2, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    goto :goto_2

    .line 629
    :catch_1
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add IPv6 routes to local table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 633
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .local v3, "route":Landroid/net/RouteInfo;
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_3

    .line 636
    .end local v0    # "addedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    .end local v1    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_3
    return-void
.end method

.method private getHopLimit(Ljava/lang/String;)B
    .locals 4
    .param p1, "upstreamIface"    # Ljava/lang/String;

    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    const/4 v1, 0x6

    const-string v2, "hop_limit"

    .line 686
    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, p1, v2}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    .line 688
    .local v0, "upstreamHopLimit":I
    add-int/2addr v0, v3

    .line 690
    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v1, v1

    return v1

    .line 691
    .end local v0    # "upstreamHopLimit":I
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to find upstream interface hop limit"

    invoke-virtual {v1, v2, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    const/16 v0, 0x41

    return v0
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .locals 6
    .param p0, "localPrefix"    # Landroid/net/IpPrefix;

    .line 1064
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 1065
    .local v0, "dnsBytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v2

    const/16 v2, 0x2a

    invoke-static {v2, v3}, Landroid/net/ip/IpServer;->getRandomSanitizedByte(B[B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 1067
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v0, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1068
    :catch_0
    move-exception v2

    .line 1069
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to construct Inet6Address from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IpServer"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-object v1
.end method

.method private static getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 1055
    .local p1, "prefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v0, "localRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 1057
    .local v2, "ipp":Landroid/net/IpPrefix;
    new-instance v3, Landroid/net/RouteInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, p0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v2    # "ipp":Landroid/net/IpPrefix;
    goto :goto_0

    .line 1059
    :cond_0
    return-object v0
.end method

.method private static varargs getRandomSanitizedByte(B[B)B
    .locals 4
    .param p0, "dflt"    # B
    .param p1, "excluded"    # [B

    .line 1075
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    .line 1076
    .local v0, "random":B
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 1077
    .local v3, "value":I
    if-ne v0, v3, :cond_0

    return p0

    .line 1076
    .end local v3    # "value":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1079
    :cond_1
    return v0
.end method

.method private getRandomWifiIPv4Address()Ljava/lang/String;
    .locals 7

    .line 516
    const-string v0, "192.168.43.1"

    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 517
    .local v1, "bytes":[B
    const/16 v2, 0x2a

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v6

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v6

    aput-byte v6, v4, v5

    const/4 v5, 0x2

    sget-byte v6, Landroid/net/util/NetworkConstants;->FF:B

    aput-byte v6, v4, v5

    invoke-static {v2, v4}, Landroid/net/ip/IpServer;->getRandomSanitizedByte(B[B)B

    move-result v2

    aput-byte v2, v1, v3

    .line 518
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 519
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static getStateString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 84
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    const-string v0, "LOCAL_ONLY"

    return-object v0

    .line 87
    :cond_1
    const-string v0, "TETHERED"

    return-object v0

    .line 86
    :cond_2
    const-string v0, "AVAILABLE"

    return-object v0

    .line 85
    :cond_3
    const-string v0, "UNAVAILABLE"

    return-object v0
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .line 715
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private resetLinkProperties()V
    .locals 2

    .line 729
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 730
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method private sendInterfaceState(I)V
    .locals 2
    .param p1, "newInterfaceState"    # I

    .line 719
    iput p1, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 720
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    iget v1, p0, Landroid/net/ip/IpServer;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/net/ip/IpServer$Callback;->updateInterfaceState(Landroid/net/ip/IpServer;II)V

    .line 721
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    .line 722
    return-void
.end method

.method private sendLinkProperties()V
    .locals 3

    .line 725
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpServer$Callback;->updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 726
    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 4
    .param p1, "newParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 698
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 700
    invoke-static {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 702
    .local v0, "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 703
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 702
    :goto_0
    invoke-direct {p0, v1, v3}, Landroid/net/ip/IpServer;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 705
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 706
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 705
    :cond_1
    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpServer;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 708
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 711
    .end local v0    # "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    :cond_2
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 712
    return-void
.end method

.method private startDhcp(Ljava/net/Inet4Address;I)Z
    .locals 7
    .param p1, "addr"    # Ljava/net/Inet4Address;
    .param p2, "prefixLen"    # I

    .line 351
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 352
    return v1

    .line 355
    :cond_0
    new-instance v0, Landroid/net/dhcp/DhcpServingParamsParcelExt;

    invoke-direct {v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;-><init>()V

    new-array v2, v1, [Ljava/net/Inet4Address;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 356
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    const-wide/16 v4, 0xe10

    .line 357
    invoke-virtual {v0, v4, v5}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDhcpLeaseTimeSecs(J)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    new-array v2, v1, [Ljava/net/Inet4Address;

    aput-object p1, v2, v3

    .line 358
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 359
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setServerAddr(Landroid/net/LinkAddress;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setMetered(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    .line 363
    .local v0, "params":Landroid/net/dhcp/DhcpServingParamsParcel;
    iget v2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 364
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v3, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    new-instance v4, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget v5, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;-><init>(Landroid/net/ip/IpServer;ILandroid/net/ip/IpServer$1;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/ip/IpServer$Dependencies;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/DhcpServerCallbacks;)V

    .line 366
    return v1
.end method

.method private startIPv4()Z
    .locals 1

    .line 279
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    move-result v0

    return v0
.end method

.method private startIPv6()Z
    .locals 3

    .line 525
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer$Dependencies;->getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 526
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to find InterfaceParams"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    .line 529
    return v1

    .line 532
    :cond_0
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {v2, v0}, Landroid/net/ip/IpServer$Dependencies;->getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 533
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    .line 535
    return v1

    .line 538
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private stopDhcp()V
    .locals 2

    .line 371
    iget v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 373
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    new-instance v1, Landroid/net/ip/IpServer$1;

    invoke-direct {v1, p0}, Landroid/net/ip/IpServer$1;-><init>(Landroid/net/ip/IpServer;)V

    invoke-interface {v0, v1}, Landroid/net/dhcp/IDhcpServer;->stop(Landroid/net/INetworkStackStatusCallback;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private stopIPv4()V
    .locals 1

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    .line 411
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 415
    :cond_0
    return-void
.end method

.method private stopIPv6()V
    .locals 2

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 543
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 545
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 547
    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 549
    :cond_0
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "v6only"    # Landroid/net/LinkProperties;

    .line 558
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    return-void

    .line 565
    :cond_1
    const/4 v0, 0x0

    .line 567
    .local v0, "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p1, :cond_5

    .line 568
    new-instance v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    move-object v0, v1

    .line 569
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    iput v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 570
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 572
    iget-boolean v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->getHopLimit(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    .line 574
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 575
    .local v2, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 577
    :cond_3
    new-instance v3, Landroid/net/IpPrefix;

    .line 578
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 579
    .local v3, "prefix":Landroid/net/IpPrefix;
    iget-object v4, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-static {v3}, Landroid/net/ip/IpServer;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v4

    .line 582
    .local v4, "dnsServer":Ljava/net/Inet6Address;
    if-eqz v4, :cond_4

    .line 583
    iget-object v5, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v2    # "linkAddr":Landroid/net/LinkAddress;
    .end local v3    # "prefix":Landroid/net/IpPrefix;
    .end local v4    # "dnsServer":Ljava/net/Inet6Address;
    :cond_4
    goto :goto_0

    .line 590
    :cond_5
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 591
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 592
    return-void
.end method


# virtual methods
.method public interfaceName()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interfaceType()I
    .locals 1

    .line 263
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return v0
.end method

.method public lastError()I
    .locals 1

    .line 265
    iget v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return v0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 269
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .locals 1

    .line 267
    iget v0, p0, Landroid/net/ip/IpServer;->mServingMode:I

    return v0
.end method

.method public stop()V
    .locals 1

    .line 271
    const v0, 0x50068

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .locals 1

    .line 273
    const v0, 0x50067

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->sendMessage(I)V

    return-void
.end method
