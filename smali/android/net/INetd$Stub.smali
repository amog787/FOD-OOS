.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_bandwidthAddNaughtyApp:I = 0x32

.field static final TRANSACTION_bandwidthAddNiceApp:I = 0x34

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_bandwidthRemoveInterfaceAlert:I = 0x30

.field static final TRANSACTION_bandwidthRemoveInterfaceQuota:I = 0x2e

.field static final TRANSACTION_bandwidthRemoveNaughtyApp:I = 0x33

.field static final TRANSACTION_bandwidthRemoveNiceApp:I = 0x35

.field static final TRANSACTION_bandwidthSetGlobalAlert:I = 0x31

.field static final TRANSACTION_bandwidthSetInterfaceAlert:I = 0x2f

.field static final TRANSACTION_bandwidthSetInterfaceQuota:I = 0x2d

.field static final TRANSACTION_clatdStart:I = 0x25

.field static final TRANSACTION_clatdStop:I = 0x26

.field static final TRANSACTION_firewallAddUidInterfaceRules:I = 0x5b

.field static final TRANSACTION_firewallEnableChildChain:I = 0x4f

.field static final TRANSACTION_firewallRemoveUidInterfaceRules:I = 0x5c

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_firewallSetFirewallType:I = 0x4c

.field static final TRANSACTION_firewallSetInterfaceRule:I = 0x4d

.field static final TRANSACTION_firewallSetUidRule:I = 0x4e

.field static final TRANSACTION_getFwmarkForNetwork:I = 0x60

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getOemNetd:I = 0x5e

.field static final TRANSACTION_getProcSysNet:I = 0x11

.field static final TRANSACTION_idletimerAddInterface:I = 0x22

.field static final TRANSACTION_idletimerRemoveInterface:I = 0x23

.field static final TRANSACTION_interfaceAddAddress:I = 0xf

.field static final TRANSACTION_interfaceClearAddrs:I = 0x54

.field static final TRANSACTION_interfaceDelAddress:I = 0x10

.field static final TRANSACTION_interfaceGetCfg:I = 0x51

.field static final TRANSACTION_interfaceGetList:I = 0x50

.field static final TRANSACTION_interfaceSetCfg:I = 0x52

.field static final TRANSACTION_interfaceSetEnableIPv6:I = 0x55

.field static final TRANSACTION_interfaceSetIPv6PrivacyExtensions:I = 0x53

.field static final TRANSACTION_interfaceSetMtu:I = 0x56

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x15

.field static final TRANSACTION_ipSecAddSecurityPolicy:I = 0x19

.field static final TRANSACTION_ipSecAddTunnelInterface:I = 0x1c

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x14

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x17

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x16

.field static final TRANSACTION_ipSecDeleteSecurityPolicy:I = 0x1b

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x18

.field static final TRANSACTION_ipSecRemoveTunnelInterface:I = 0x1e

.field static final TRANSACTION_ipSecSetEncapSocketOwner:I = 0x13

.field static final TRANSACTION_ipSecUpdateSecurityPolicy:I = 0x1a

.field static final TRANSACTION_ipSecUpdateTunnelInterface:I = 0x1d

.field static final TRANSACTION_ipfwdAddInterfaceForward:I = 0x2b

.field static final TRANSACTION_ipfwdDisableForwarding:I = 0x2a

.field static final TRANSACTION_ipfwdEnableForwarding:I = 0x29

.field static final TRANSACTION_ipfwdEnabled:I = 0x27

.field static final TRANSACTION_ipfwdGetRequesterList:I = 0x28

.field static final TRANSACTION_ipfwdRemoveInterfaceForward:I = 0x2c

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkAddInterface:I = 0x7

.field static final TRANSACTION_networkAddLegacyRoute:I = 0x40

.field static final TRANSACTION_networkAddRoute:I = 0x3e

.field static final TRANSACTION_networkAddRouteParcel:I = 0x61

.field static final TRANSACTION_networkAddUidRanges:I = 0x9

.field static final TRANSACTION_networkCanProtect:I = 0x4b

.field static final TRANSACTION_networkClearDefault:I = 0x44

.field static final TRANSACTION_networkClearPermissionForUser:I = 0x47

.field static final TRANSACTION_networkCreatePhysical:I = 0x4

.field static final TRANSACTION_networkCreateVpn:I = 0x5

.field static final TRANSACTION_networkDestroy:I = 0x6

.field static final TRANSACTION_networkGetDefault:I = 0x42

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0xb

.field static final TRANSACTION_networkRemoveInterface:I = 0x8

.field static final TRANSACTION_networkRemoveLegacyRoute:I = 0x41

.field static final TRANSACTION_networkRemoveRoute:I = 0x3f

.field static final TRANSACTION_networkRemoveRouteParcel:I = 0x63

.field static final TRANSACTION_networkRemoveUidRanges:I = 0xa

.field static final TRANSACTION_networkSetDefault:I = 0x43

.field static final TRANSACTION_networkSetPermissionForNetwork:I = 0x45

.field static final TRANSACTION_networkSetPermissionForUser:I = 0x46

.field static final TRANSACTION_networkSetProtectAllow:I = 0x49

.field static final TRANSACTION_networkSetProtectDeny:I = 0x4a

.field static final TRANSACTION_networkUpdateRouteParcel:I = 0x62

.field static final TRANSACTION_registerUnsolicitedEventListener:I = 0x5a

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x21

.field static final TRANSACTION_setProcSysNet:I = 0x12

.field static final TRANSACTION_setTcpRWmemorySize:I = 0x59

.field static final TRANSACTION_socketDestroy:I = 0xc

.field static final TRANSACTION_strictUidCleartextPenalty:I = 0x24

.field static final TRANSACTION_tetherAddForward:I = 0x57

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xd

.field static final TRANSACTION_tetherDnsList:I = 0x3d

.field static final TRANSACTION_tetherDnsSet:I = 0x3c

.field static final TRANSACTION_tetherGetStats:I = 0xe

.field static final TRANSACTION_tetherInterfaceAdd:I = 0x39

.field static final TRANSACTION_tetherInterfaceList:I = 0x3b

.field static final TRANSACTION_tetherInterfaceRemove:I = 0x3a

.field static final TRANSACTION_tetherIsEnabled:I = 0x38

.field static final TRANSACTION_tetherOffloadGetAndClearStats:I = 0x68

.field static final TRANSACTION_tetherOffloadGetStats:I = 0x66

.field static final TRANSACTION_tetherOffloadRuleAdd:I = 0x64

.field static final TRANSACTION_tetherOffloadRuleRemove:I = 0x65

.field static final TRANSACTION_tetherOffloadSetInterfaceQuota:I = 0x67

.field static final TRANSACTION_tetherRemoveForward:I = 0x58

.field static final TRANSACTION_tetherStart:I = 0x36

.field static final TRANSACTION_tetherStartWithConfiguration:I = 0x5f

.field static final TRANSACTION_tetherStop:I = 0x37

.field static final TRANSACTION_trafficSetNetPermForUids:I = 0x48

.field static final TRANSACTION_trafficSwapActiveStatsMap:I = 0x5d

.field static final TRANSACTION_wakeupAddInterface:I = 0x1f

.field static final TRANSACTION_wakeupDelInterface:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 368
    const-string v0, "android$net$INetd"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 371
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 372
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 366
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 380
    if-nez p0, :cond_0

    .line 381
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 384
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_1

    .line 385
    move-object v1, v0

    check-cast v1, Landroid/net/INetd;

    return-object v1

    .line 387
    :cond_1
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetd;
    .locals 1

    .line 4090
    sget-object v0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetd;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/INetd;

    .line 4080
    sget-object v0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    if-nez v0, :cond_1

    .line 4083
    if-eqz p0, :cond_0

    .line 4084
    sput-object p0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    .line 4085
    const/4 v0, 0x1

    return v0

    .line 4087
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4081
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 391
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 44
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    sget-object v11, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 396
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_14

    const/4 v0, 0x0

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    .line 1688
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1674
    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    return v10

    .line 1681
    :pswitch_1
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1684
    return v10

    .line 1658
    :pswitch_2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1661
    .local v1, "_arg0":I
    invoke-virtual {v15, v1}, Landroid/net/INetd$Stub;->tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;

    move-result-object v2

    .line 1662
    .local v2, "_result":Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    if-eqz v2, :cond_0

    .line 1664
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    invoke-virtual {v2, v12, v10}, Landroid/net/TetherStatsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1668
    :cond_0
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    :goto_0
    return v10

    .line 1647
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/net/TetherStatsParcel;
    :pswitch_3
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1651
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1652
    .local v1, "_arg1":J
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->tetherOffloadSetInterfaceQuota(IJ)V

    .line 1653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    return v10

    .line 1639
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_4
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 1641
    .local v0, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1643
    return v10

    .line 1625
    .end local v0    # "_result":[Landroid/net/TetherStatsParcel;
    :pswitch_5
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    sget-object v0, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetherOffloadRuleParcel;

    .local v0, "_arg0":Landroid/net/TetherOffloadRuleParcel;
    goto :goto_1

    .line 1631
    .end local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :cond_1
    const/4 v0, 0x0

    .line 1633
    .restart local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :goto_1
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    return v10

    .line 1611
    .end local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :pswitch_6
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1614
    sget-object v0, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetherOffloadRuleParcel;

    .restart local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    goto :goto_2

    .line 1617
    .end local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :cond_2
    const/4 v0, 0x0

    .line 1619
    .restart local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :goto_2
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    return v10

    .line 1595
    .end local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :pswitch_7
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1599
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1600
    sget-object v1, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfoParcel;

    .local v1, "_arg1":Landroid/net/RouteInfoParcel;
    goto :goto_3

    .line 1603
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :cond_3
    const/4 v1, 0x0

    .line 1605
    .restart local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :goto_3
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    return v10

    .line 1579
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_8
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1583
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1584
    sget-object v1, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfoParcel;

    .restart local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    goto :goto_4

    .line 1587
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :cond_4
    const/4 v1, 0x0

    .line 1589
    .restart local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :goto_4
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    return v10

    .line 1563
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_9
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1567
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1568
    sget-object v1, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfoParcel;

    .restart local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    goto :goto_5

    .line 1571
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :cond_5
    const/4 v1, 0x0

    .line 1573
    .restart local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :goto_5
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1575
    return v10

    .line 1547
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1550
    .local v1, "_arg0":I
    invoke-virtual {v15, v1}, Landroid/net/INetd$Stub;->getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;

    move-result-object v2

    .line 1551
    .local v2, "_result":Landroid/net/MarkMaskParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    if-eqz v2, :cond_6

    .line 1553
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    invoke-virtual {v2, v12, v10}, Landroid/net/MarkMaskParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 1557
    :cond_6
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    :goto_6
    return v10

    .line 1533
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/net/MarkMaskParcel;
    :pswitch_b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1536
    sget-object v0, Landroid/net/TetherConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetherConfigParcel;

    .local v0, "_arg0":Landroid/net/TetherConfigParcel;
    goto :goto_7

    .line 1539
    .end local v0    # "_arg0":Landroid/net/TetherConfigParcel;
    :cond_7
    const/4 v0, 0x0

    .line 1541
    .restart local v0    # "_arg0":Landroid/net/TetherConfigParcel;
    :goto_7
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 1542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    return v10

    .line 1525
    .end local v0    # "_arg0":Landroid/net/TetherConfigParcel;
    :pswitch_c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    .line 1527
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1529
    return v10

    .line 1518
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->trafficSwapActiveStatsMap()V

    .line 1520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    return v10

    .line 1509
    :pswitch_e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1512
    .local v0, "_arg0":[I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->firewallRemoveUidInterfaceRules([I)V

    .line 1513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    return v10

    .line 1498
    .end local v0    # "_arg0":[I
    :pswitch_f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1502
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1503
    .local v1, "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    .line 1504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    return v10

    .line 1489
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    :pswitch_10
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v0

    .line 1492
    .local v0, "_arg0":Landroid/net/INetdUnsolicitedEventListener;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    return v10

    .line 1478
    .end local v0    # "_arg0":Landroid/net/INetdUnsolicitedEventListener;
    :pswitch_11
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    return v10

    .line 1467
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1471
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1472
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    return v10

    .line 1456
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1460
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1461
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    return v10

    .line 1445
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1450
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->interfaceSetMtu(Ljava/lang/String;I)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    return v10

    .line 1434
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_15
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v10

    .line 1439
    .local v0, "_arg1":Z
    :cond_8
    invoke-virtual {v15, v1, v0}, Landroid/net/INetd$Stub;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    return v10

    .line 1425
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->interfaceClearAddrs(Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    return v10

    .line 1414
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1418
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v10

    .line 1419
    .local v0, "_arg1":Z
    :cond_9
    invoke-virtual {v15, v1, v0}, Landroid/net/INetd$Stub;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    return v10

    .line 1400
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1403
    sget-object v0, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/InterfaceConfigurationParcel;

    .local v0, "_arg0":Landroid/net/InterfaceConfigurationParcel;
    goto :goto_8

    .line 1406
    .end local v0    # "_arg0":Landroid/net/InterfaceConfigurationParcel;
    :cond_a
    const/4 v0, 0x0

    .line 1408
    .restart local v0    # "_arg0":Landroid/net/InterfaceConfigurationParcel;
    :goto_8
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V

    .line 1409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    return v10

    .line 1384
    .end local v0    # "_arg0":Landroid/net/InterfaceConfigurationParcel;
    :pswitch_19
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1387
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v1}, Landroid/net/INetd$Stub;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v2

    .line 1388
    .local v2, "_result":Landroid/net/InterfaceConfigurationParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    if-eqz v2, :cond_b

    .line 1390
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    invoke-virtual {v2, v12, v10}, Landroid/net/InterfaceConfigurationParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 1394
    :cond_b
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    :goto_9
    return v10

    .line 1376
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :pswitch_1a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1380
    return v10

    .line 1365
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1369
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v10

    .line 1370
    .local v0, "_arg1":Z
    :cond_c
    invoke-virtual {v15, v1, v0}, Landroid/net/INetd$Stub;->firewallEnableChildChain(IZ)V

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    return v10

    .line 1352
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_1c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1356
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1358
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1359
    .local v2, "_arg2":I
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->firewallSetUidRule(III)V

    .line 1360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    return v10

    .line 1341
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1346
    .restart local v1    # "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->firewallSetInterfaceRule(Ljava/lang/String;I)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    return v10

    .line 1332
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1335
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->firewallSetFirewallType(I)V

    .line 1336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    return v10

    .line 1322
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1325
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkCanProtect(I)Z

    move-result v1

    .line 1326
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    return v10

    .line 1313
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1316
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetProtectDeny(I)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    return v10

    .line 1304
    .end local v0    # "_arg0":I
    :pswitch_21
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1307
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetProtectAllow(I)V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    return v10

    .line 1293
    .end local v0    # "_arg0":I
    :pswitch_22
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1297
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1298
    .local v1, "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->trafficSetNetPermForUids(I[I)V

    .line 1299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    return v10

    .line 1284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_23
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1287
    .local v0, "_arg0":[I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkClearPermissionForUser([I)V

    .line 1288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    return v10

    .line 1273
    .end local v0    # "_arg0":[I
    :pswitch_24
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1277
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1278
    .restart local v1    # "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkSetPermissionForUser(I[I)V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    return v10

    .line 1262
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_25
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1266
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1267
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkSetPermissionForNetwork(II)V

    .line 1268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    return v10

    .line 1255
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_26
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->networkClearDefault()V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    return v10

    .line 1246
    :pswitch_27
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1249
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetDefault(I)V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    return v10

    .line 1238
    .end local v0    # "_arg0":I
    :pswitch_28
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->networkGetDefault()I

    move-result v0

    .line 1240
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    return v10

    .line 1221
    .end local v0    # "_result":I
    :pswitch_29
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1225
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1227
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1229
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1231
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1232
    .local v16, "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    return v10

    .line 1204
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_2a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1208
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1210
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1212
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1214
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1215
    .restart local v16    # "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    return v10

    .line 1189
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_2b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1193
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1197
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1198
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1200
    return v10

    .line 1174
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1178
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1183
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    return v10

    .line 1166
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1170
    return v10

    .line 1155
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1159
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1160
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherDnsSet(I[Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    return v10

    .line 1147
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1151
    return v10

    .line 1138
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_30
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherInterfaceRemove(Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    return v10

    .line 1129
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    return v10

    .line 1121
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherIsEnabled()Z

    move-result v0

    .line 1123
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    return v10

    .line 1114
    .end local v0    # "_result":Z
    :pswitch_33
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherStop()V

    .line 1116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    return v10

    .line 1105
    :pswitch_34
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherStart([Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    return v10

    .line 1096
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_35
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1099
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveNiceApp(I)V

    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    return v10

    .line 1087
    .end local v0    # "_arg0":I
    :pswitch_36
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1090
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthAddNiceApp(I)V

    .line 1091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    return v10

    .line 1078
    .end local v0    # "_arg0":I
    :pswitch_37
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1081
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveNaughtyApp(I)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    return v10

    .line 1069
    .end local v0    # "_arg0":I
    :pswitch_38
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1072
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthAddNaughtyApp(I)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    return v10

    .line 1060
    .end local v0    # "_arg0":I
    :pswitch_39
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1063
    .local v0, "_arg0":J
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->bandwidthSetGlobalAlert(J)V

    .line 1064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    return v10

    .line 1051
    .end local v0    # "_arg0":J
    :pswitch_3a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    return v10

    .line 1040
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1044
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1045
    .local v1, "_arg1":J
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1046
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    return v10

    .line 1031
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_3c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    return v10

    .line 1020
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1025
    .restart local v1    # "_arg1":J
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    return v10

    .line 1009
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_3e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1013
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    return v10

    .line 998
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    return v10

    .line 989
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 992
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipfwdDisableForwarding(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    return v10

    .line 980
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_41
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 983
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    return v10

    .line 972
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_42
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 976
    return v10

    .line 964
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_43
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->ipfwdEnabled()Z

    move-result v0

    .line 966
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    return v10

    .line 955
    .end local v0    # "_result":Z
    :pswitch_44
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->clatdStop(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    return v10

    .line 943
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_45
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 947
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 948
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 949
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 951
    return v10

    .line 932
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 936
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 937
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->strictUidCleartextPenalty(II)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    return v10

    .line 919
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_47
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 925
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 926
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    return v10

    .line 906
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_48
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 910
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 912
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 913
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    return v10

    .line 895
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_49
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 899
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 900
    .restart local v1    # "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    return v10

    .line 880
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_4a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 884
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 888
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 889
    .local v3, "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    return v10

    .line 865
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 869
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 871
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 873
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 874
    .restart local v3    # "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    return v10

    .line 856
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 859
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    return v10

    .line 837
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 841
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 843
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 845
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 847
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 849
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 850
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    return v10

    .line 818
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_4e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 822
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 824
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 826
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 828
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 830
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 831
    .restart local v18    # "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    return v10

    .line 799
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_4f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 803
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 805
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 807
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 809
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 811
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 812
    .restart local v18    # "_arg5":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    return v10

    .line 774
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_50
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 778
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 780
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 782
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 784
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 786
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 788
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 790
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 792
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 793
    .local v24, "_arg8":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetd$Stub;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    return v10

    .line 749
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_51
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 753
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 755
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 757
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 759
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 761
    .restart local v20    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 763
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 765
    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 767
    .restart local v23    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 768
    .restart local v24    # "_arg8":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetd$Stub;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    return v10

    .line 735
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_52
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 738
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_a

    .line 741
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_d
    const/4 v0, 0x0

    .line 743
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_a
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    return v10

    .line 711
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_53
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 714
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v7, v0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_b

    .line 717
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_e
    const/4 v0, 0x0

    move-object v7, v0

    .line 720
    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 722
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 724
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 726
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 728
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 729
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    return v10

    .line 690
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_54
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 694
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 696
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 698
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 700
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 702
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 704
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 705
    .local v20, "_arg6":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    return v10

    .line 641
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_55
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg0":I
    move/from16 v1, v22

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg1":I
    move/from16 v2, v23

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v24

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v25

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "_arg4":I
    move/from16 v5, v26

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "_arg5":I
    move/from16 v6, v27

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "_arg6":I
    move/from16 v7, v28

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg7":I
    move/from16 v8, v29

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg8":Ljava/lang/String;
    move-object/from16 v9, v30

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v31

    move v0, v10

    .local v31, "_arg9":[B
    move-object/from16 v10, v31

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    move-object/from16 v33, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v32, "_arg10":I
    .local v33, "descriptor":Ljava/lang/String;
    move/from16 v11, v32

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .local v34, "_arg11":Ljava/lang/String;
    move-object/from16 v12, v34

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v35

    .local v35, "_arg12":[B
    move-object/from16 v13, v35

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .local v36, "_arg13":I
    move/from16 v14, v36

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .local v37, "_arg14":Ljava/lang/String;
    move-object/from16 v15, v37

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v38

    .local v38, "_arg15":[B
    move-object/from16 v16, v38

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .local v39, "_arg16":I
    move/from16 v17, v39

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "_arg17":I
    move/from16 v18, v40

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "_arg18":I
    move/from16 v19, v41

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "_arg19":I
    move/from16 v20, v42

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .local v43, "_arg20":I
    move/from16 v21, v43

    .line 684
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v21}, Landroid/net/INetd$Stub;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    const/4 v6, 0x1

    return v6

    .line 625
    .end local v22    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v24    # "_arg2":Ljava/lang/String;
    .end local v25    # "_arg3":Ljava/lang/String;
    .end local v26    # "_arg4":I
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":I
    .end local v29    # "_arg7":I
    .end local v30    # "_arg8":Ljava/lang/String;
    .end local v31    # "_arg9":[B
    .end local v32    # "_arg10":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .end local v34    # "_arg11":Ljava/lang/String;
    .end local v35    # "_arg12":[B
    .end local v36    # "_arg13":I
    .end local v37    # "_arg14":Ljava/lang/String;
    .end local v38    # "_arg15":[B
    .end local v39    # "_arg16":I
    .end local v40    # "_arg17":I
    .end local v41    # "_arg18":I
    .end local v42    # "_arg19":I
    .end local v43    # "_arg20":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_56
    move v6, v10

    move-object/from16 v33, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    move-object/from16 v7, p2

    move-object/from16 v8, v33

    .end local v33    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 629
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 634
    .restart local v3    # "_arg3":I
    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 635
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    move-object/from16 v10, p3

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    return v6

    .line 609
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_57
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 612
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_c

    .line 615
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_f
    const/4 v0, 0x0

    .line 618
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 619
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    return v6

    .line 592
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_58
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 596
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 598
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 600
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 602
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 603
    .local v15, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    return v6

    .line 576
    .end local v8    # "descriptor":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg4":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_59
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 580
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 582
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 584
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    return v6

    .line 563
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5a
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 570
    .local v2, "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    return v6

    .line 550
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5b
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 557
    .restart local v2    # "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    return v6

    .line 542
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5c
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 544
    .local v0, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v10, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 546
    return v6

    .line 534
    .end local v0    # "_result":[Landroid/net/TetherStatsParcel;
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5d
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    move-result v0

    .line 536
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    return v6

    .line 523
    .end local v0    # "_result":Z
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5e
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    sget-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 527
    .local v0, "_arg0":[Landroid/net/UidRangeParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 528
    .local v1, "_arg1":[I
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    return v6

    .line 512
    .end local v0    # "_arg0":[Landroid/net/UidRangeParcel;
    .end local v1    # "_arg1":[I
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5f
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    move v0, v6

    .line 516
    .local v0, "_arg0":Z
    :cond_10
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 517
    .local v1, "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    return v6

    .line 501
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_60
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 505
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 506
    .restart local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    return v6

    .line 490
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_61
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 494
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 495
    .restart local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    return v6

    .line 479
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_62
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 483
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveInterface(ILjava/lang/String;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    return v6

    .line 468
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_63
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 472
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkAddInterface(ILjava/lang/String;)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    return v6

    .line 459
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_64
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Landroid/net/INetd$Stub;->networkDestroy(I)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    return v6

    .line 448
    .end local v0    # "_arg0":I
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_65
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    move v0, v6

    .line 453
    .local v0, "_arg1":Z
    :cond_11
    invoke-virtual {v9, v1, v0}, Landroid/net/INetd$Stub;->networkCreateVpn(IZ)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    return v6

    .line 437
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_66
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkCreatePhysical(II)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    return v6

    .line 427
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_67
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    move v0, v6

    .line 430
    .local v0, "_arg0":Z
    :cond_12
    invoke-virtual {v9, v0}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    .line 431
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    return v6

    .line 413
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_68
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    move v0, v6

    .line 419
    .local v0, "_arg1":Z
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 420
    .local v2, "_arg2":[I
    invoke-virtual {v9, v1, v0, v2}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v3

    .line 421
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    return v6

    .line 405
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":[I
    .end local v3    # "_result":Z
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_69
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v0

    .line 407
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    return v6

    .line 400
    .end local v0    # "_result":Z
    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :cond_14
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
