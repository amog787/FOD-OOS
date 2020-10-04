.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;
    }
.end annotation


# static fields
.field private static final BASE_MASTER:I = 0x50000

.field static final CMD_CLEAR_ERROR:I = 0x50006

.field static final CMD_RETRY_UPSTREAM:I = 0x50004

.field static final CMD_UPSTREAM_CHANGED:I = 0x50003

.field static final EVENT_IFACE_SERVING_STATE_ACTIVE:I = 0x50001

.field static final EVENT_IFACE_SERVING_STATE_INACTIVE:I = 0x50002

.field static final EVENT_IFACE_UPDATE_LINKPROPERTIES:I = 0x50007

.field static final EVENT_UPSTREAM_CALLBACK:I = 0x50005

.field static final EVENT_UPSTREAM_PERMISSION_CHANGED:I = 0x50008

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710


# instance fields
.field private final mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/ip/IpServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

.field private final mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

.field private final mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

.field private final mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

.field private final mStartTetheringErrorState:Lcom/android/internal/util/State;

.field private final mStopTetheringErrorState:Lcom/android/internal/util/State;

.field private final mTetherModeAliveState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "deps"    # Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 1377
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 1378
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1380
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    .line 1381
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    .line 1382
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    .line 1383
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    .line 1384
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    .line 1385
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    .line 1386
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    .line 1388
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1389
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1390
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1391
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1393
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1394
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    .line 1397
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    .line 1398
    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    .line 1397
    invoke-virtual {p4, v0, v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getIPv6TetheringCoordinator(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    .line 1399
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    .line 1401
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1402
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILandroid/net/ip/IpServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/ip/IpServer;

    .line 1331
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateActive(ILandroid/net/ip/IpServer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1331
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ip/IpServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Landroid/net/ip/IpServer;

    .line 1331
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateInactive(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1331
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1331
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .line 1331
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleUpstreamNetworkMonitorCallback(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1331
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private handleInterfaceServingStateActive(ILandroid/net/ip/IpServer;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "who"    # Landroid/net/ip/IpServer;

    .line 1601
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->addActiveDownstream(Landroid/net/ip/IpServer;I)V

    .line 1606
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1612
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {p2}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->excludeDownstreamInterface(Ljava/lang/String;)V

    .line 1613
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1617
    :goto_0
    invoke-virtual {p2}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v1

    if-nez v1, :cond_4

    .line 1618
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 1619
    .local v1, "mgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {p2}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1620
    .local v2, "iface":Ljava/lang/String;
    if-eq p1, v0, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    .line 1628
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2700()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown active serving mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1625
    :cond_2
    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1626
    goto :goto_1

    .line 1622
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1632
    .end local v1    # "mgr":Landroid/net/wifi/WifiManager;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method private handleInterfaceServingStateInactive(Landroid/net/ip/IpServer;)V
    .locals 3
    .param p1, "who"    # Landroid/net/ip/IpServer;

    .line 1635
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1636
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->removeActiveDownstream(Landroid/net/ip/IpServer;)V

    .line 1637
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->excludeDownstreamInterface(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1641
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1642
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->lastError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 1644
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1643
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    goto :goto_0

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1657
    :cond_1
    :goto_0
    return-void
.end method

.method private handleUpstreamNetworkMonitorCallback(ILjava/lang/Object;)V
    .locals 4
    .param p1, "arg1"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .line 1660
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes(Ljava/util/Set;)V

    .line 1662
    return-void

    .line 1665
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/net/NetworkState;

    .line 1667
    .local v0, "ns":Landroid/net/NetworkState;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2, v0}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1683
    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 1698
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown arg1 value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1695
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1696
    goto :goto_0

    .line 1688
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1689
    goto :goto_0

    .line 1685
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1686
    nop

    .line 1701
    :goto_0
    return-void

    .line 1673
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1678
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1680
    :cond_6
    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 5
    .param p1, "tryCell"    # Z

    .line 1518
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)V

    .line 1520
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 1521
    .local v0, "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-boolean v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    if-eqz v1, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getCurrentPreferredUpstream()Landroid/net/NetworkState;

    move-result-object v1

    goto :goto_0

    .line 1523
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->selectPreferredUpstreamType(Ljava/lang/Iterable;)Landroid/net/NetworkState;

    move-result-object v1

    :goto_0
    nop

    .line 1525
    .local v1, "ns":Landroid/net/NetworkState;
    if-nez v1, :cond_2

    .line 1526
    if-eqz p1, :cond_1

    .line 1527
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    goto :goto_1

    .line 1530
    :cond_1
    const v2, 0x50004

    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 1533
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setUpstreamNetwork(Landroid/net/NetworkState;)V

    .line 1534
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 1535
    .local v2, "newUpstream":Landroid/net/Network;
    :goto_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;

    move-result-object v3

    if-eq v3, v2, :cond_4

    .line 1536
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3, v2}, Lcom/android/server/connectivity/Tethering;->access$2102(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)Landroid/net/Network;

    .line 1537
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->setCurrentUpstream(Landroid/net/Network;)V

    .line 1538
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)V

    .line 1540
    :cond_4
    return-void
.end method

.method protected handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 1
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 1596
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1597
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1598
    return-void
.end method

.method protected notifyDownstreamsOfNewUpstreamIface(Landroid/net/util/InterfaceSet;)V
    .locals 3
    .param p1, "ifaces"    # Landroid/net/util/InterfaceSet;

    .line 1589
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/Tethering;->access$2402(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    .line 1590
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ip/IpServer;

    .line 1591
    .local v1, "ipServer":Landroid/net/ip/IpServer;
    const v2, 0x50070

    invoke-virtual {v1, v2, p1}, Landroid/net/ip/IpServer;->sendMessage(ILjava/lang/Object;)V

    .line 1592
    .end local v1    # "ipServer":Landroid/net/ip/IpServer;
    goto :goto_0

    .line 1593
    :cond_0
    return-void
.end method

.method protected setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 1568
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    .line 1569
    .local v0, "dnsServers":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 1571
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1573
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 1576
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 1577
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    const-string v3, "SET DNS forwarders: network=%s dnsServers=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 1579
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1577
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    goto :goto_0

    .line 1580
    :catch_0
    move-exception v2

    .line 1583
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting DNS forwarders failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1584
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1586
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected setUpstreamNetwork(Landroid/net/NetworkState;)V
    .locals 4
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 1543
    const/4 v0, 0x0

    .line 1544
    .local v0, "ifaces":Landroid/net/util/InterfaceSet;
    if-eqz p1, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for default routes on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 1549
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getTetheringInterfaces(Landroid/net/NetworkState;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    .line 1550
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found upstream interface(s): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 1553
    :cond_0
    if-eqz v0, :cond_1

    .line 1554
    iget-object v1, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 1556
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->notifyDownstreamsOfNewUpstreamIface(Landroid/net/util/InterfaceSet;)V

    .line 1557
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1559
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    goto :goto_0

    .line 1560
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1562
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1564
    :cond_3
    :goto_0
    return-void
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 3

    .line 1481
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1486
    nop

    .line 1499
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 1500
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.oneplus.filemanager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1502
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1507
    nop

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1511
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "SET master tether settings: OFF"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1512
    const/4 v0, 0x1

    return v0

    .line 1503
    :catch_0
    move-exception v1

    .line 1504
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1505
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1506
    return v0

    .line 1482
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1483
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1484
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1485
    return v0
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 6

    .line 1433
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 1446
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 1447
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.oneplus.filemanager"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1449
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1454
    nop

    .line 1459
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    if-eqz v1, :cond_2

    .line 1460
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    goto :goto_0

    .line 1461
    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    :goto_0
    nop

    .line 1464
    .local v1, "dhcpRanges":[Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1474
    goto :goto_1

    .line 1465
    :catch_0
    move-exception v4

    .line 1467
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 1468
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1473
    nop

    .line 1475
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v3

    const-string v4, "SET master tether settings: ON"

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1476
    return v2

    .line 1469
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1470
    .local v2, "ee":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1471
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1472
    return v3

    .line 1450
    .end local v1    # "dhcpRanges":[Ljava/lang/String;
    .end local v2    # "ee":Ljava/lang/Exception;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1451
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1452
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1453
    return v3
.end method
