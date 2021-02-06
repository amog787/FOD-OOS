.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;,
        Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;,
        Lcom/android/server/connectivity/Vpn$VpnRunner;,
        Lcom/android/server/connectivity/Vpn$SystemServices;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MAX_ROUTES_TO_EVALUATE:I = 0x96

.field static final MAX_VPN_PROFILE_SIZE_BYTES:I = 0x20000

.field private static final MOST_IPV4_ADDRESSES_COUNT:J

.field private static final MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final VPN_LAUNCH_IDLE_WHITELIST_DURATION_MS:J = 0xea60L


# instance fields
.field protected mAlwaysOn:Z

.field private final mBlockedUidsAsToldToNetd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private final mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private final mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

.field private mInterface:Ljava/lang/String;

.field private mIsPackageTargetingAtLeastQ:Z

.field protected mLockdown:Z

.field private mLockdownWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field protected mNetworkAgent:Landroid/net/NetworkAgent;

.field protected final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field protected mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field private final mUserHandle:I

.field protected mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 165
    const/16 v0, 0x55

    .line 167
    .local v0, "howManyPercentIsMost":I
    const-wide v1, 0x100000000L

    .line 168
    .local v1, "twoPower32":J
    const-wide v3, 0xd9999999L

    sput-wide v3, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    .line 169
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 170
    .local v3, "twoPower128":Ljava/math/BigInteger;
    nop

    .line 171
    const-wide/16 v4, 0x55

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 172
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sput-object v4, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 173
    .end local v0    # "howManyPercentIsMost":I
    .end local v1    # "twoPower32":J
    .end local v3    # "twoPower128":Ljava/math/BigInteger;
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILandroid/security/KeyStore;)V
    .locals 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I
    .param p5, "keyStore"    # Landroid/security/KeyStore;

    .line 260
    new-instance v6, Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-direct {v6, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    invoke-direct {v7}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILandroid/security/KeyStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    .line 262
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILandroid/security/KeyStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V
    .locals 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I
    .param p5, "keyStore"    # Landroid/security/KeyStore;
    .param p6, "systemServices"    # Lcom/android/server/connectivity/Vpn$SystemServices;
    .param p7, "ikev2SessionCreator"    # Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 230
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 252
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToNetd:Ljava/util/Set;

    .line 1602
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 268
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 269
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 270
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 271
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 272
    iput-object p6, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 273
    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 275
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 276
    invoke-direct {p0, v1, p4}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 277
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Vpn"

    const-string v3, "Problem registering observer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x11

    const-string v3, "VPN"

    const-string v4, ""

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 287
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 288
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 289
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 292
    invoke-direct {p0, p5}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage(Landroid/security/KeyStore;)V

    .line 293
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method private agentConnect()V
    .locals 18

    .line 1095
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 1105
    .local v13, "lp":Landroid/net/LinkProperties;
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1107
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    new-instance v0, Landroid/net/NetworkAgentConfig;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig;-><init>()V

    move-object v14, v0

    .line 1110
    .local v14, "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v1, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v12, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, v14, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    .line 1112
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget v2, v12, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 1113
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    new-array v2, v15, [I

    iget v3, v12, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 1114
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, v12, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v2, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {v12, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1118
    .local v16, "token":J
    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    iget-object v3, v12, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v4, v12, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "VPN"

    iget-object v6, v12, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v9, 0x65

    const/4 v11, -0x2

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v8, v13

    move-object v10, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;I)V

    iput-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    nop

    .line 1130
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v15}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1131
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentConnect"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1132
    return-void

    .line 1128
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    throw v0
.end method

.method private agentDisconnect()V
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1155
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1158
    :cond_0
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .locals 3
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .line 1144
    if-eqz p1, :cond_0

    .line 1145
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1146
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1147
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1150
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method

.method public static applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V
    .locals 18
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "underlyingNetworks"    # [Landroid/net/Network;
    .param p2, "caps"    # Landroid/net/NetworkCapabilities;
    .param p3, "isAlwaysMetered"    # Z

    .line 354
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 355
    .local v3, "transportTypes":[I
    const/4 v4, 0x0

    .line 356
    .local v4, "downKbps":I
    const/4 v6, 0x0

    .line 357
    .local v6, "upKbps":I
    move/from16 v7, p3

    .line 358
    .local v7, "metered":Z
    const/4 v8, 0x0

    .line 359
    .local v8, "roaming":Z
    const/4 v9, 0x0

    .line 360
    .local v9, "congested":Z
    const/4 v10, 0x1

    .line 362
    .local v10, "suspended":Z
    const/4 v11, 0x0

    .line 363
    .local v11, "hadUnderlyingNetworks":Z
    if-eqz v0, :cond_3

    .line 364
    array-length v5, v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v5, :cond_2

    aget-object v13, v0, v12

    .line 366
    .local v13, "underlying":Landroid/net/Network;
    move-object/from16 v14, p0

    invoke-virtual {v14, v13}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 367
    .local v2, "underlyingCaps":Landroid/net/NetworkCapabilities;
    if-nez v2, :cond_0

    move/from16 v16, v5

    const/4 v0, 0x1

    goto :goto_2

    .line 368
    :cond_0
    const/4 v11, 0x1

    .line 369
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    move/from16 v17, v0

    aget v0, v15, v5

    .line 370
    .local v0, "underlyingType":I
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 369
    .end local v0    # "underlyingType":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v17

    goto :goto_1

    .line 375
    :cond_1
    nop

    .line 376
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    .line 375
    invoke-static {v4, v0}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v4

    .line 377
    nop

    .line 378
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    .line 377
    invoke-static {v6, v0}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v6

    .line 381
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    const/4 v0, 0x1

    xor-int/2addr v5, v0

    or-int/2addr v7, v5

    .line 384
    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v15

    xor-int/lit8 v5, v15, 0x1

    or-int/2addr v8, v5

    .line 387
    const/16 v5, 0x14

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v15

    xor-int/lit8 v5, v15, 0x1

    or-int/2addr v9, v5

    .line 390
    const/16 v5, 0x15

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v15

    xor-int/lit8 v5, v15, 0x1

    and-int/2addr v10, v5

    .line 364
    .end local v2    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    .end local v13    # "underlying":Landroid/net/Network;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move v2, v0

    move/from16 v5, v16

    move-object/from16 v0, p1

    goto :goto_0

    :cond_2
    move-object/from16 v14, p0

    move v0, v2

    goto :goto_3

    .line 363
    :cond_3
    move-object/from16 v14, p0

    move v0, v2

    .line 393
    :goto_3
    if-nez v11, :cond_4

    .line 395
    const/4 v7, 0x1

    .line 396
    const/4 v8, 0x0

    .line 397
    const/4 v9, 0x0

    .line 398
    const/4 v10, 0x0

    .line 401
    :cond_4
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 402
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 403
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 404
    if-nez v7, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 405
    xor-int/lit8 v0, v8, 0x1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 406
    xor-int/lit8 v0, v9, 0x1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 407
    xor-int/lit8 v0, v10, 0x1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 408
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1137
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1137
    return v2

    .line 1139
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    throw v2
.end method

.method private cleanupVpnStateLocked()V
    .locals 2

    .line 1629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1630
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1631
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1632
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1635
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 1636
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1637
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1638
    return-void
.end method

.method private static doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appop"    # I

    .line 951
    nop

    .line 952
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 955
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 983
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 984
    return v1

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 988
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 989
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 990
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 991
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 992
    .local v1, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Vpn"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v2
.end method

.method private enforceControlPermission()V
    .locals 3

    .line 1641
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .locals 3

    .line 1647
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    return-void
.end method

.method private enforceNotRestrictedUser()V
    .locals 1

    .line 1899
    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$Vpn$S2EK4wFrspvxxxzu8J3SwhT7oVM;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/-$$Lambda$Vpn$S2EK4wFrspvxxxzu8J3SwhT7oVM;-><init>(Lcom/android/server/connectivity/Vpn;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1907
    return-void
.end method

.method private enforceSettingsPermission()V
    .locals 3

    .line 1652
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 3
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .line 1888
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1890
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 1891
    return-object v1

    .line 1893
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_0
    goto :goto_0

    .line 1895
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find IPv4 default gateway"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .locals 2
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 969
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 973
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .locals 5
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1301
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1302
    .local v0, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1303
    .local v2, "app":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v3

    .line 1304
    .local v3, "uid":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1305
    .end local v2    # "app":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_0
    goto :goto_0

    .line 1306
    :cond_1
    return-object v0
.end method

.method private declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    monitor-enter p0

    .line 2124
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2126
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 2127
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 2128
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 2129
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2130
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2132
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 2123
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isCurrentIkev2VpnLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2957
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 831
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 614
    if-eqz p0, :cond_1

    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRunningLocked()Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSettingsVpnLocked()Z
    .locals 2

    .line 2086
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v1, "[Legacy VPN]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpnType"    # I

    .line 940
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 946
    const/4 v0, 0x0

    return v0

    .line 944
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 942
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 964
    const/16 v0, 0x5e

    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 964
    :goto_1
    return v0
.end method

.method private static isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 960
    const/16 v0, 0x2f

    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic lambda$getAppUid$0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 2
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 975
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private loadAlwaysOnPackage(Landroid/security/KeyStore;)V
    .locals 7
    .param p1, "keyStore"    # Landroid/security/KeyStore;

    .line 656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 658
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "alwaysOnPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v6, 0x1

    :cond_0
    move v3, v6

    .line 662
    .local v3, "alwaysOnLockdown":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v5, "always_on_vpn_lockdown_whitelist"

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "whitelistString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 665
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 666
    .local v5, "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0, v2, v3, v5, p1}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    nop

    .end local v2    # "alwaysOnPackage":Ljava/lang/String;
    .end local v3    # "alwaysOnLockdown":Z
    .end local v4    # "whitelistString":Ljava/lang/String;
    .end local v5    # "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    nop

    .line 671
    return-void

    .line 669
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    throw v2
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .locals 8

    .line 1010
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 1011
    .local v0, "allowIPv4":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 1013
    .local v1, "allowIPv6":Z
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 1015
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1017
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1018
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 1019
    .local v4, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1020
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 1021
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v5

    .line 1022
    .end local v4    # "address":Landroid/net/LinkAddress;
    goto :goto_0

    .line 1025
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1026
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 1027
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1028
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 1029
    .local v5, "address":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 1030
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 1031
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_1

    .line 1034
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1035
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1036
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 1037
    .restart local v5    # "address":Ljava/net/InetAddress;
    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1038
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 1039
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 1040
    .end local v4    # "dnsServer":Ljava/lang/String;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_2

    .line 1043
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1045
    const/4 v3, 0x7

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 1046
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1048
    :cond_3
    if-nez v1, :cond_4

    .line 1049
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1053
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 1055
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1056
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1057
    .end local v5    # "domain":Ljava/lang/String;
    goto :goto_3

    .line 1059
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1061
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget v4, v4, Lcom/android/internal/net/VpnConfig;->mtu:I

    if-lez v4, :cond_6

    .line 1062
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget v4, v4, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1067
    :cond_6
    return-object v2
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .locals 9
    .param p1, "newPackage"    # Ljava/lang/String;

    .line 837
    const-string v0, " to call protect() "

    const-string v1, "Vpn"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 840
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 841
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 842
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 843
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 844
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 845
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 849
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 851
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn$Connection;->access$000(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v4

    const v6, 0xffffff

    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    const/4 v8, 0x1

    .line 851
    invoke-interface {v4, v6, v7, v5, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    goto :goto_0

    .line 853
    :catch_0
    move-exception v4

    .line 856
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 857
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    goto :goto_1

    .line 858
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v4, :cond_2

    .line 860
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 864
    :cond_2
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v4, v6}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 867
    goto :goto_2

    .line 865
    :catch_1
    move-exception v4

    .line 866
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to disallow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switched from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 871
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 872
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 874
    :try_start_5
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v4, v6}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 877
    goto :goto_3

    .line 875
    :catch_2
    move-exception v4

    .line 876
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to allow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 880
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "prepare"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 881
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 883
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 884
    nop

    .line 885
    return-void

    .line 883
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 884
    throw v0
.end method

.method private prepareStatusIntent()V
    .locals 3

    .line 1671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1673
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1676
    nop

    .line 1677
    return-void

    .line 1675
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1676
    throw v2
.end method

.method private saveAlwaysOnPackage()V
    .locals 6

    .line 639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 641
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 642
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 641
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 643
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 644
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 643
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V

    .line 645
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown_whitelist"

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 647
    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 645
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    nop

    .line 651
    return-void

    .line 649
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    throw v2
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .locals 4
    .param p1, "enforce"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    .line 1566
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1567
    return v1

    .line 1569
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 1571
    .local v0, "rangesArray":[Landroid/net/UidRange;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    nop

    .line 1577
    if-eqz p1, :cond_1

    .line 1578
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToNetd:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1580
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToNetd:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1582
    :goto_0
    return v1

    .line 1572
    :catch_0
    move-exception v1

    .line 1573
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating blocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1573
    const-string v3, "Vpn"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1575
    const/4 v2, 0x0

    return v2
.end method

.method private setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .param p4, "keyStore"    # Landroid/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/security/KeyStore;",
            ")Z"
        }
    .end annotation

    .line 562
    .local p3, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Vpn"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting legacy VPN \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" as always-on."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v2

    .line 567
    :cond_0
    if-eqz p3, :cond_2

    .line 568
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 569
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting always-on vpn, invalid whitelisted package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return v2

    .line 573
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 576
    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 580
    .local v3, "oldId":J
    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;Landroid/security/KeyStore;)Lcom/android/internal/net/VpnProfile;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    nop

    .line 587
    if-nez v1, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    .line 588
    .local v5, "grantType":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 589
    return v2

    .line 591
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 592
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldId":J
    .end local v5    # "grantType":I
    goto :goto_2

    .line 582
    .restart local v3    # "oldId":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    throw v0

    .line 593
    .end local v3    # "oldId":J
    :cond_5
    const-string p1, "[Legacy VPN]"

    .line 594
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 597
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    move v2, v0

    :cond_6
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 598
    if-eqz v2, :cond_7

    if-eqz p3, :cond_7

    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 600
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 603
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 604
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    goto :goto_4

    .line 608
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 610
    :goto_4
    return v0
.end method

.method private setVpnForcedLocked(Z)V
    .locals 8
    .param p1, "enforce"    # Z

    .line 1510
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    const/4 v0, 0x0

    .local v0, "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1513
    .end local v0    # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1514
    .restart local v0    # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToNetd:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1519
    .local v1, "rangesToTellNetdToRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 1520
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v4, 0x0

    .line 1521
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 1528
    .local v3, "rangesThatShouldBeBlocked":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/UidRange;

    .line 1529
    .local v5, "range":Landroid/net/UidRange;
    iget v6, v5, Landroid/net/UidRange;->start:I

    if-nez v6, :cond_1

    .line 1530
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1531
    iget v6, v5, Landroid/net/UidRange;->stop:I

    if-eqz v6, :cond_1

    .line 1532
    new-instance v6, Landroid/net/UidRange;

    iget v7, v5, Landroid/net/UidRange;->stop:I

    invoke-direct {v6, v2, v7}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1535
    .end local v5    # "range":Landroid/net/UidRange;
    :cond_1
    goto :goto_1

    .line 1537
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1538
    move-object v4, v3

    .line 1543
    .local v4, "rangesToTellNetdToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToNetd:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1544
    .end local v3    # "rangesThatShouldBeBlocked":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    goto :goto_2

    .line 1545
    .end local v4    # "rangesToTellNetdToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 1549
    .restart local v4    # "rangesToTellNetdToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_2
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1551
    invoke-direct {p0, v2, v4}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1552
    return-void
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .locals 8
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;
    .param p4, "profile"    # Lcom/android/internal/net/VpnProfile;

    monitor-enter p0

    .line 2069
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 2072
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 2073
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2076
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2077
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2078
    monitor-exit p0

    return-void

    .line 2068
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    .end local p2    # "racoon":[Ljava/lang/String;
    .end local p3    # "mtpd":[Ljava/lang/String;
    .end local p4    # "profile":Lcom/android/internal/net/VpnProfile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;Landroid/security/KeyStore;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keyStore"    # Landroid/security/KeyStore;

    monitor-enter p0

    .line 3051
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 3052
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startPlatformVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3056
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 3057
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3058
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 3059
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 3060
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 3064
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    goto :goto_0

    .line 3066
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p2, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 3067
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, p1, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 3069
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 3070
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 3072
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 3081
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "Invalid platform VPN type"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3082
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown VPN profile type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3076
    :cond_1
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 3077
    invoke-static {p1, p3}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;)Landroid/net/Ikev2VpnProfile;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 3078
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3079
    nop

    .line 3091
    :goto_1
    nop

    .line 3092
    monitor-exit p0

    return-void

    .line 3085
    :catch_0
    move-exception v0

    .line 3087
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 3089
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "VPN startup failed"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3090
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VPN startup failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3050
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "keyStore":Landroid/security/KeyStore;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .locals 5
    .param p0, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 1412
    .local p1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {p0}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1413
    .local v0, "userRange":Landroid/net/UidRange;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 1415
    .local v3, "range":Landroid/net/UidRange;
    invoke-virtual {v0, v3}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1416
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    .end local v3    # "range":Landroid/net/UidRange;
    :cond_0
    goto :goto_0

    .line 1419
    :cond_1
    return-object v1
.end method

.method private updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 13
    .param p1, "networkState"    # Landroid/net/NetworkInfo$DetailedState;

    .line 1789
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1791
    .local v0, "visible":Z
    :goto_0
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1792
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1794
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1795
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x11

    const-string v7, "Vpn"

    if-nez v0, :cond_1

    .line 1796
    :try_start_1
    invoke-virtual {v5, v7, v6, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1819
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    return-void

    .line 1799
    :cond_1
    :try_start_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1800
    .local v8, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v10, 0x10401f5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1802
    const-string/jumbo v9, "lockdown"

    iget-boolean v10, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1803
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1804
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v10, 0xc000000

    invoke-virtual {v9, v8, v10, v2}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1806
    .local v9, "configIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v11, 0x1080905

    .line 1808
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v12, 0x104082a

    .line 1809
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v12, 0x1040827

    .line 1810
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1811
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const-string/jumbo v11, "sys"

    .line 1812
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1813
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1814
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v11, 0x106001c

    .line 1815
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1816
    .local v1, "builder":Landroid/app/Notification$Builder;
    nop

    .line 1817
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 1816
    invoke-virtual {v5, v7, v6, v10, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1819
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "configIntent":Landroid/app/PendingIntent;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1820
    nop

    .line 1821
    return-void

    .line 1819
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1820
    throw v1
.end method

.method private updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .locals 4
    .param p1, "agent"    # Landroid/net/NetworkAgent;
    .param p2, "oldConfig"    # Lcom/android/internal/net/VpnConfig;

    .line 1077
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v2, 0x0

    const-string v3, "Vpn"

    if-eq v0, v1, :cond_0

    .line 1078
    const-string v0, "Handover not possible due to changes to allowBypass"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return v2

    .line 1084
    :cond_0
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 1085
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1090
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 1091
    const/4 v0, 0x1

    return v0

    .line 1086
    :cond_2
    :goto_0
    const-string v0, "Handover not possible due to changes to whitelisted/blacklisted apps"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return v2
.end method

.method private verifyCallingUidAndPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2884
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2887
    return-void

    .line 2885
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Mismatched package and UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 1680
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1681
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1683
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1684
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1685
    monitor-exit p0

    return v0

    .line 1679
    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .locals 6
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1375
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_4

    .line 1377
    const/4 v0, -0x1

    .local v0, "start":I
    const/4 v1, -0x1

    .line 1378
    .local v1, "stop":I
    invoke-direct {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1379
    .local v3, "uid":I
    if-ne v0, v4, :cond_0

    .line 1380
    move v0, v3

    goto :goto_1

    .line 1381
    :cond_0
    add-int/lit8 v4, v1, 0x1

    if-eq v3, v4, :cond_1

    .line 1382
    new-instance v4, Landroid/net/UidRange;

    invoke-direct {v4, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1383
    move v0, v3

    .line 1385
    :cond_1
    :goto_1
    move v1, v3

    .line 1386
    .end local v3    # "uid":I
    goto :goto_0

    .line 1387
    :cond_2
    if-eq v0, v4, :cond_3

    new-instance v2, Landroid/net/UidRange;

    invoke-direct {v2, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1388
    .end local v0    # "start":I
    .end local v1    # "stop":I
    :cond_3
    goto :goto_4

    :cond_4
    if-eqz p4, :cond_8

    .line 1390
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1391
    .local v0, "userRange":Landroid/net/UidRange;
    iget v1, v0, Landroid/net/UidRange;->start:I

    .line 1392
    .local v1, "start":I
    invoke-direct {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1393
    .restart local v3    # "uid":I
    if-ne v3, v1, :cond_5

    .line 1394
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1396
    :cond_5
    new-instance v4, Landroid/net/UidRange;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v1, v5}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1397
    add-int/lit8 v1, v3, 0x1

    .line 1399
    .end local v3    # "uid":I
    :goto_3
    goto :goto_2

    .line 1400
    :cond_6
    iget v2, v0, Landroid/net/UidRange;->stop:I

    if-gt v1, v2, :cond_7

    new-instance v2, Landroid/net/UidRange;

    iget v3, v0, Landroid/net/UidRange;->stop:I

    invoke-direct {v2, v1, v3}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1401
    .end local v0    # "userRange":Landroid/net/UidRange;
    .end local v1    # "start":I
    :cond_7
    goto :goto_4

    .line 1403
    :cond_8
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1405
    :goto_4
    return-void
.end method

.method public declared-synchronized appliesToUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1745
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1746
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1748
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->appliesToUid(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1744
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 1326
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1329
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1332
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1336
    .local v3, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    nop

    .line 1340
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1341
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v6, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v7, p1, :cond_0

    .line 1342
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v7, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1344
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1338
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    throw v1

    .line 1348
    .end local v3    # "token":J
    :cond_1
    new-array v1, v2, [I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3e7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_4

    .line 1350
    :cond_2
    if-nez p1, :cond_3

    move v3, v1

    goto :goto_1

    .line 1351
    :cond_3
    nop

    :goto_1
    move v1, v3

    .line 1352
    .local v1, "targetId":I
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1355
    .end local v1    # "targetId":I
    :cond_4
    return-object v0
.end method

.method public declared-synchronized deleteVpnProfile(Ljava/lang/String;Landroid/security/KeyStore;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyStore"    # Landroid/security/KeyStore;

    monitor-enter p0

    .line 2968
    :try_start_0
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    const-string v0, "KeyStore missing"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2971
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 2972
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 2974
    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Landroid/security/KeyStore;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2989
    monitor-exit p0

    return-void

    .line 2967
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "keyStore":Landroid/security/KeyStore;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 18
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 1172
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v3, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    .line 1173
    monitor-exit p0

    return-object v4

    .line 1176
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_1

    .line 1177
    monitor-exit p0

    return-object v4

    .line 1180
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 1181
    .local v3, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1185
    .local v5, "token":J
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 1187
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v7, 0x0

    iget v8, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-interface {v0, v3, v4, v7, v8}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1189
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_a

    .line 1192
    const-string v7, "android.permission.BIND_VPN_SERVICE"

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_9

    .line 1198
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    nop

    .line 1202
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object v7, v0

    .line 1203
    .local v7, "oldConfig":Lcom/android/internal/net/VpnConfig;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object v8, v0

    .line 1204
    .local v8, "oldInterface":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object v9, v0

    .line 1205
    .local v9, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object v10, v0

    .line 1206
    .local v10, "oldNetworkAgent":Landroid/net/NetworkAgent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    move-object v11, v0

    .line 1209
    .local v11, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget v0, v2, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v12, v0

    .line 1211
    .local v12, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_5
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1214
    .local v13, "interfaze":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v0

    .line 1215
    .local v14, "builder":Ljava/lang/StringBuilder;
    iget-object v0, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v15, :cond_2

    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/LinkAddress;

    .line 1216
    .local v15, "address":Landroid/net/LinkAddress;
    const-string v4, " "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1218
    const/4 v4, 0x0

    .end local v15    # "address":Landroid/net/LinkAddress;
    goto :goto_0

    .line 1269
    .end local v13    # "interfaze":Ljava/lang/String;
    .end local v14    # "builder":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_2

    .line 1219
    .restart local v13    # "interfaze":Ljava/lang/String;
    .restart local v14    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    if-lt v0, v4, :cond_7

    .line 1222
    new-instance v0, Lcom/android/server/connectivity/Vpn$Connection;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    move-object v4, v0

    .line 1223
    .local v4, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    move-object/from16 v17, v14

    .end local v14    # "builder":Ljava/lang/StringBuilder;
    .local v17, "builder":Ljava/lang/StringBuilder;
    iget v14, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v15, v14}, Landroid/os/UserHandle;-><init>(I)V

    const v14, 0x4000001

    invoke-virtual {v0, v3, v4, v14, v15}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1229
    iput-object v4, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1230
    iput-object v13, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1233
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1234
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1236
    iput-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1241
    if-eqz v7, :cond_3

    :try_start_8
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1242
    invoke-direct {v1, v0, v7}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1245
    :cond_3
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1246
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v14, "establish"

    invoke-virtual {v1, v0, v14}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1248
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 1252
    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1255
    :goto_1
    if-eqz v9, :cond_4

    .line 1256
    :try_start_a
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1259
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1260
    invoke-direct {v1, v8}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1264
    :cond_5
    :try_start_b
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v0, v14}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1268
    nop

    .line 1283
    .end local v4    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v13    # "interfaze":Ljava/lang/String;
    .end local v17    # "builder":Ljava/lang/StringBuilder;
    nop

    .line 1284
    :try_start_c
    const-string v0, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Established by "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " on "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1285
    monitor-exit p0

    return-object v12

    .line 1265
    .restart local v4    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v13    # "interfaze":Ljava/lang/String;
    .restart local v17    # "builder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/io/IOException;
    :try_start_d
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v16, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    :try_start_e
    const-string v3, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "token":J
    .end local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "oldInterface":Ljava/lang/String;
    .end local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v14

    .line 1226
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v8    # "oldInterface":Ljava/lang/String;
    .restart local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_6
    move-object/from16 v16, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot bind "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "token":J
    .end local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "oldInterface":Ljava/lang/String;
    .end local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v0

    .line 1220
    .end local v4    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v17    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v8    # "oldInterface":Ljava/lang/String;
    .restart local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "builder":Ljava/lang/StringBuilder;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_7
    move-object/from16 v16, v3

    move-object/from16 v17, v14

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v14    # "builder":Ljava/lang/StringBuilder;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "builder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one address must be specified"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "token":J
    .end local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "oldInterface":Ljava/lang/String;
    .end local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1269
    .end local v13    # "interfaze":Ljava/lang/String;
    .end local v17    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "token":J
    .restart local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v8    # "oldInterface":Ljava/lang/String;
    .restart local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    .line 1270
    .end local v3    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v16    # "intent":Landroid/content/Intent;
    :goto_2
    :try_start_f
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1273
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eq v10, v3, :cond_8

    .line 1274
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1277
    :cond_8
    iput-object v7, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1278
    iput-object v9, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1279
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v11}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1280
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1281
    iput-object v8, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1282
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1193
    .end local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "oldInterface":Ljava/lang/String;
    .end local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "intent":Landroid/content/Intent;
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_9
    move-object/from16 v16, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    :try_start_10
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not require "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "token":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1190
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_a
    move-object/from16 v16, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "token":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1195
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "token":J
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_4
    move-exception v0

    goto :goto_3

    .line 1198
    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 1195
    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_5
    move-exception v0

    move-object/from16 v16, v3

    .line 1196
    .end local v3    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "intent":Landroid/content/Intent;
    :goto_3
    :try_start_11
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "token":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1198
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v5    # "token":J
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_1
    move-exception v0

    :goto_4
    :try_start_12
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1171
    .end local v5    # "token":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActiveAppVpnType()I
    .locals 2

    monitor-enter p0

    .line 1759
    :try_start_0
    const-string v0, "[Legacy VPN]"

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1760
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1763
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1764
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 1766
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOn()Z
    .locals 1

    monitor-enter p0

    .line 447
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 447
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 623
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 624
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    monitor-enter p0

    .line 2136
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2139
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    monitor-enter p0

    .line 2115
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2116
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2114
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdown()Z
    .locals 1

    monitor-enter p0

    .line 440
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 440
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdownWhitelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 631
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetId()I
    .locals 3

    .line 1002
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1003
    .local v0, "agent":Landroid/net/NetworkAgent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1004
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    .line 1005
    .local v2, "network":Landroid/net/Network;
    if-nez v2, :cond_1

    return v1

    .line 1006
    :cond_1
    iget v1, v2, Landroid/net/Network;->netId:I

    return v1
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLATFORM_VPN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .locals 1

    monitor-enter p0

    .line 1723
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1724
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1726
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1722
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .line 1589
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1590
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .locals 2

    monitor-enter p0

    .line 1734
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1735
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1738
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1739
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1740
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1741
    monitor-exit p0

    return-object v0

    .line 1733
    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getVpnProfilePrivileged(Ljava/lang/String;Landroid/security/KeyStore;)Lcom/android/internal/net/VpnProfile;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyStore"    # Landroid/security/KeyStore;

    .line 3000
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$SystemServices;->isCallerSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3001
    const-string v0, "Vpn"

    const-string v2, "getVpnProfilePrivileged called as non-System UID "

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    return-object v1

    .line 3005
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 3006
    .local v0, "encoded":[B
    if-nez v0, :cond_1

    return-object v1

    .line 3008
    :cond_1
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1599
    goto :goto_0

    .line 1597
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1595
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "up":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1597
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "up":Z
    :catch_1
    move-exception v0

    .line 1600
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;Landroid/security/KeyStore;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyStore"    # Landroid/security/KeyStore;

    .line 468
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    .line 470
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 471
    return v0

    .line 474
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 476
    .local v1, "oldId":J
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;Landroid/security/KeyStore;)Lcom/android/internal/net/VpnProfile;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 477
    nop

    .line 480
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    return v4

    .line 480
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 481
    nop

    .line 483
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 484
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 486
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, p1, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    .line 489
    goto :goto_0

    .line 487
    :catch_0
    move-exception v6

    .line 488
    .local v6, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" when checking always-on support"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Vpn"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v6    # "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v5, :cond_7

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x18

    if-ge v6, v7, :cond_2

    goto :goto_3

    .line 494
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.VpnService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const/16 v7, 0x80

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 497
    invoke-virtual {v3, v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 498
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    .line 502
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 503
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 504
    .local v10, "metaData":Landroid/os/Bundle;
    if-eqz v10, :cond_4

    .line 505
    const-string v11, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    invoke-virtual {v10, v11, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4

    .line 506
    return v0

    .line 508
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "metaData":Landroid/os/Bundle;
    :cond_4
    goto :goto_1

    .line 510
    :cond_5
    return v4

    .line 499
    :cond_6
    :goto_2
    return v0

    .line 491
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    :goto_3
    return v0

    .line 480
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 481
    throw v0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1781
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 1784
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToNetd:Ljava/util/Set;

    invoke-static {v0, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1780
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected isCallerEstablishedOwnerLocked()Z
    .locals 2

    .line 1296
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$deleteVpnProfile$3$Vpn(Ljava/lang/String;Landroid/security/KeyStore;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2978
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2979
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_0

    .line 2981
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z

    goto :goto_0

    .line 2983
    :cond_0
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 2987
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 2988
    return-void
.end method

.method public synthetic lambda$enforceNotRestrictedUser$1$Vpn()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1900
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1901
    .local v0, "mgr":Landroid/os/UserManager;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1903
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1906
    return-void

    .line 1904
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Restricted users cannot configure VPNs"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic lambda$provisionVpnProfile$2$Vpn(Landroid/security/KeyStore;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "encodedProfile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2942
    nop

    .line 2943
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2942
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p3, v1, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 2947
    return-void
.end method

.method public synthetic lambda$startVpnProfile$4$Vpn(Ljava/lang/String;Landroid/security/KeyStore;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3035
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;Landroid/security/KeyStore;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 3036
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_0

    .line 3040
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;Landroid/security/KeyStore;)V

    .line 3042
    return-void

    .line 3037
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No profile found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onUserAdded(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 1429
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1430
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v1, v2, :cond_1

    .line 1431
    monitor-enter p0

    .line 1432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_0

    .line 1435
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1439
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    goto :goto_0

    .line 1440
    :catch_0
    move-exception v2

    .line 1441
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1444
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1445
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1447
    :cond_1
    :goto_1
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 1456
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1457
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v1, v2, :cond_1

    .line 1458
    monitor-enter p0

    .line 1459
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_0

    .line 1462
    nop

    .line 1463
    :try_start_1
    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 1464
    .local v2, "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1467
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    .end local v2    # "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    goto :goto_0

    .line 1468
    :catch_0
    move-exception v2

    .line 1469
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1472
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1473
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1475
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .locals 1

    monitor-enter p0

    .line 1482
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1483
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 1486
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    monitor-exit p0

    return-void

    .line 1481
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "vpnType"    # I

    monitor-enter p0

    .line 785
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 787
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 788
    monitor-exit p0

    return v1

    .line 792
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 795
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 796
    invoke-static {v2, p1, p3}, Lcom/android/server/connectivity/Vpn;->isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 797
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    monitor-exit p0

    return v0

    .line 800
    :cond_1
    monitor-exit p0

    return v1

    .line 801
    :cond_2
    :try_start_2
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 802
    invoke-static {v2, p1, p3}, Lcom/android/server/connectivity/Vpn;->isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 804
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 805
    monitor-exit p0

    return v1

    .line 784
    .end local p1    # "oldPackage":Ljava/lang/String;
    .end local p2    # "newPackage":Ljava/lang/String;
    .end local p3    # "vpnType":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 810
    .restart local p1    # "oldPackage":Ljava/lang/String;
    .restart local p2    # "newPackage":Ljava/lang/String;
    .restart local p3    # "vpnType":I
    :cond_3
    if-eqz p2, :cond_6

    :try_start_3
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 811
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 816
    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 819
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_5

    .line 820
    monitor-exit p0

    return v1

    .line 823
    :cond_5
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 824
    monitor-exit p0

    return v0

    .line 784
    .end local p1    # "oldPackage":Ljava/lang/String;
    .end local p2    # "newPackage":Ljava/lang/String;
    .end local p3    # "vpnType":I
    :goto_0
    monitor-exit p0

    throw p1

    .line 812
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "oldPackage":Ljava/lang/String;
    .restart local p2    # "newPackage":Ljava/lang/String;
    .restart local p3    # "vpnType":I
    :cond_6
    :goto_1
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized provisionVpnProfile(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p3, "keyStore"    # Landroid/security/KeyStore;

    monitor-enter p0

    .line 2921
    :try_start_0
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2922
    const-string v0, "No profile provided"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2923
    const-string v0, "KeyStore missing"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 2926
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 2927
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V

    .line 2929
    iget-boolean v0, p2, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    if-eqz v0, :cond_0

    .line 2930
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v2, "Test-mode profiles require the MANAGE_TEST_NETWORKS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v0

    .line 2935
    .local v0, "encodedProfile":[B
    array-length v1, v0

    const/high16 v2, 0x20000

    if-gt v1, v2, :cond_1

    .line 2940
    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/android/server/connectivity/-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/security/KeyStore;Ljava/lang/String;[B)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2953
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/Vpn;->isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 2936
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Profile too big"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2920
    .end local v0    # "encodedProfile":[B
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local p3    # "keyStore":Landroid/security/KeyStore;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 1689
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1690
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1692
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1693
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1694
    monitor-exit p0

    return v0

    .line 1688
    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .param p4, "keyStore"    # Landroid/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/security/KeyStore;",
            ")Z"
        }
    .end annotation

    .local p3, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 536
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 538
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 542
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 535
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "lockdown":Z
    .end local p3    # "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "keyStore":Landroid/security/KeyStore;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    .line 301
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 302
    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .locals 1
    .param p1, "lockdown"    # Z

    monitor-enter p0

    .line 422
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 425
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 429
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit p0

    return-void

    .line 421
    .end local p1    # "lockdown":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpnType"    # I

    .line 890
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 892
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    .line 893
    .local v0, "uid":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const-string v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 898
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 903
    .local v3, "token":J
    const/16 v5, 0x5e

    const/16 v6, 0x2f

    const-string v7, "Vpn"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq p2, v1, :cond_3

    if-eq p2, v9, :cond_2

    if-eq p2, v8, :cond_1

    .line 916
    :try_start_0
    const-string v1, "Unrecognized VPN type while granting authorization"

    invoke-static {v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    nop

    .line 934
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    return v2

    .line 910
    :cond_1
    :try_start_1
    new-array v6, v9, [I

    aput v5, v6, v2

    move-object v5, v6

    .line 911
    .local v5, "toChange":[I
    goto :goto_0

    .line 913
    .end local v5    # "toChange":[I
    :cond_2
    new-array v5, v9, [I

    aput v6, v5, v2

    .line 914
    .restart local v5    # "toChange":[I
    goto :goto_0

    .line 905
    .end local v5    # "toChange":[I
    :cond_3
    new-array v8, v8, [I

    aput v6, v8, v2

    aput v5, v8, v9

    move-object v5, v8

    .line 908
    .restart local v5    # "toChange":[I
    nop

    .line 920
    :goto_0
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v8, "appops"

    .line 921
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    .line 922
    .local v6, "appOpMgr":Landroid/app/AppOpsManager;
    array-length v8, v5

    move v10, v2

    :goto_1
    if-ge v10, v8, :cond_5

    aget v11, v5, v10

    .line 923
    .local v11, "appOp":I
    nop

    .line 927
    if-ne p2, v1, :cond_4

    .line 928
    move v12, v9

    goto :goto_2

    :cond_4
    move v12, v2

    .line 923
    :goto_2
    invoke-virtual {v6, v11, v0, p1, v12}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    .end local v11    # "appOp":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 930
    :cond_5
    nop

    .line 934
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 930
    return v9

    .line 934
    .end local v5    # "toChange":[I
    .end local v6    # "appOpMgr":Landroid/app/AppOpsManager;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 931
    :catch_0
    move-exception v1

    .line 932
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set app ops for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 934
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    nop

    .line 936
    return v2

    .line 934
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    throw v1

    .line 895
    .end local v3    # "token":J
    :cond_6
    :goto_4
    return v2
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 5
    .param p1, "networks"    # [Landroid/net/Network;

    monitor-enter p0

    .line 1704
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1705
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1707
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1708
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    goto :goto_2

    .line 1710
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v2, p1

    new-array v2, v2, [Landroid/net/Network;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1711
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1712
    aget-object v2, p1, v1

    if-nez v2, :cond_2

    .line 1713
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    aput-object v0, v2, v1

    goto :goto_1

    .line 1715
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v3, Landroid/net/Network;

    aget-object v4, p1, v1

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-direct {v3, v4}, Landroid/net/Network;-><init>(I)V

    aput-object v3, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1711
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1719
    .end local v1    # "i":I
    :cond_3
    :goto_2
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1703
    .end local p1    # "networks":[Landroid/net/Network;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startAlwaysOnVpn(Landroid/security/KeyStore;)Z
    .locals 14
    .param p1, "keyStore"    # Landroid/security/KeyStore;

    .line 682
    monitor-enter p0

    .line 683
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    const/4 v9, 0x1

    if-nez v0, :cond_0

    .line 686
    monitor-exit p0

    return v9

    .line 689
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;Landroid/security/KeyStore;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x0

    if-nez v1, :cond_1

    .line 690
    invoke-virtual {p0, v2, v10, v2, p1}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z

    .line 691
    monitor-exit p0

    return v10

    .line 696
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    monitor-exit p0

    return v9

    .line 699
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 701
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 704
    .local v11, "oldId":J
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;Landroid/security/KeyStore;)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    move-object v13, v1

    .line 705
    .local v13, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v13, :cond_3

    .line 706
    invoke-direct {p0, v13, v0, v2}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;Landroid/security/KeyStore;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    nop

    .line 738
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    return v9

    .line 720
    :cond_3
    :try_start_2
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 721
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    .line 722
    .local v1, "idleController":Lcom/android/server/DeviceIdleInternal;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/32 v4, 0xea60

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v7, 0x0

    const-string/jumbo v8, "vpn"

    move-object v3, v0

    invoke-interface/range {v1 .. v8}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 726
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 729
    :try_start_3
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v9, v10

    .line 738
    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 729
    return v9

    .line 730
    :catch_0
    move-exception v3

    .line 731
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VpnService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 732
    nop

    .line 738
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 732
    return v10

    .line 738
    .end local v1    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "profile":Lcom/android/internal/net/VpnProfile;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 734
    :catch_1
    move-exception v1

    .line 735
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "Vpn"

    const-string v3, "Error starting always-on VPN"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 736
    nop

    .line 738
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    return v10

    .line 738
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    throw v1

    .line 699
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v11    # "oldId":J
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 1918
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1921
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1924
    nop

    .line 1925
    return-void

    .line 1923
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1924
    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 31
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 1935
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1936
    .local v3, "mgr":Landroid/os/UserManager;
    iget v4, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1937
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_d

    new-instance v5, Landroid/os/UserHandle;

    iget v6, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "no_config_vpn"

    invoke-virtual {v3, v6, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1942
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 1943
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 1944
    .local v6, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 1947
    .local v7, "iface":Ljava/lang/String;
    const-string v8, ""

    .line 1948
    .local v8, "privateKey":Ljava/lang/String;
    const-string v9, ""

    .line 1949
    .local v9, "userCert":Ljava/lang/String;
    const-string v10, ""

    .line 1950
    .local v10, "caCert":Ljava/lang/String;
    const-string v11, ""

    .line 1951
    .local v11, "serverCert":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    const-string v13, "USRCERT_"

    if-nez v12, :cond_1

    .line 1952
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRPKEY_"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1953
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1954
    .local v12, "value":[B
    if-nez v12, :cond_0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    new-instance v15, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v12, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    move-object v9, v15

    .line 1956
    .end local v12    # "value":[B
    :cond_1
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1957
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CACERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1958
    .restart local v12    # "value":[B
    if-nez v12, :cond_2

    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    move-object v10, v14

    .line 1960
    .end local v12    # "value":[B
    :cond_3
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1961
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1962
    .restart local v12    # "value":[B
    if-nez v12, :cond_4

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    new-instance v14, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_2
    move-object v11, v14

    .line 1964
    .end local v12    # "value":[B
    :cond_5
    if-eqz v9, :cond_c

    if-eqz v10, :cond_c

    if-eqz v11, :cond_c

    .line 1969
    const/4 v12, 0x0

    .line 1970
    .local v12, "racoon":[Ljava/lang/String;
    iget v13, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v14, "[Legacy VPN]"

    const-string v17, ""

    const-string v18, "1701"

    const/16 v19, 0x7

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_4

    .line 1975
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "KEYSTORE_ALIAS:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1976
    iput-object v9, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    goto :goto_3

    .line 1987
    :pswitch_1
    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1988
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Landroid/net/Ikev2VpnProfile;->encodeForIpsecSecret([B)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1991
    sget-object v13, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    invoke-virtual {v1, v13}, Lcom/android/internal/net/VpnProfile;->setAllowedAlgorithms(Ljava/util/List;)V

    .line 1992
    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;Landroid/security/KeyStore;)V

    .line 1993
    return-void

    .line 1979
    :goto_3
    :pswitch_2
    iput-object v10, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1982
    sget-object v13, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    invoke-virtual {v1, v13}, Lcom/android/internal/net/VpnProfile;->setAllowedAlgorithms(Ljava/util/List;)V

    .line 1983
    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;Landroid/security/KeyStore;)V

    .line 1984
    return-void

    .line 2019
    :pswitch_3
    const/16 v13, 0x9

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v15

    const-string v13, "hybridrsa"

    const/16 v26, 0x2

    aput-object v13, v14, v26

    aput-object v10, v14, v22

    aput-object v11, v14, v21

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v14, v20

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v24, 0x6

    aput-object v13, v14, v24

    aput-object v17, v14, v19

    const/16 v13, 0x8

    aput-object v6, v14, v13

    move-object v12, v14

    goto/16 :goto_4

    .line 2013
    :pswitch_4
    const/16 v13, 0xb

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v15

    const-string/jumbo v13, "xauthrsa"

    const/16 v26, 0x2

    aput-object v13, v14, v26

    aput-object v8, v14, v22

    aput-object v9, v14, v21

    aput-object v10, v14, v20

    const/4 v13, 0x6

    aput-object v11, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v14, v19

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v23, 0x8

    aput-object v13, v14, v23

    const/16 v13, 0x9

    aput-object v17, v14, v13

    const/16 v16, 0xa

    aput-object v6, v14, v16

    move-object v12, v14

    .line 2017
    goto :goto_4

    .line 2007
    :pswitch_5
    const/16 v13, 0x9

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v15

    const-string/jumbo v13, "xauthpsk"

    const/16 v26, 0x2

    aput-object v13, v14, v26

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v13, v14, v22

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v13, v14, v21

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v14, v20

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v24, 0x6

    aput-object v13, v14, v24

    aput-object v17, v14, v19

    const/16 v13, 0x8

    aput-object v6, v14, v13

    move-object v12, v14

    .line 2011
    goto :goto_4

    .line 2001
    :pswitch_6
    const/16 v13, 0x8

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v15

    const-string/jumbo v13, "udprsa"

    const/16 v17, 0x2

    aput-object v13, v14, v17

    aput-object v8, v14, v22

    aput-object v9, v14, v21

    aput-object v10, v14, v20

    const/4 v13, 0x6

    aput-object v11, v14, v13

    aput-object v18, v14, v19

    move-object v12, v14

    .line 2005
    goto :goto_4

    .line 1995
    :pswitch_7
    const/4 v13, 0x6

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v15

    const-string/jumbo v13, "udppsk"

    const/16 v17, 0x2

    aput-object v13, v14, v17

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v13, v14, v22

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v13, v14, v21

    aput-object v18, v14, v20

    move-object v12, v14

    .line 1999
    nop

    .line 2027
    :goto_4
    const/4 v13, 0x0

    .line 2028
    .local v13, "mtpd":[Ljava/lang/String;
    iget v14, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string/jumbo v17, "linkname"

    const-string/jumbo v27, "password"

    const-string/jumbo v28, "name"

    const-string v30, "1400"

    if-eqz v14, :cond_8

    const/4 v15, 0x1

    if-eq v14, v15, :cond_6

    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    goto/16 :goto_6

    :cond_6
    const/4 v15, 0x2

    .line 2040
    :cond_7
    const/16 v14, 0x14

    new-array v14, v14, [Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v7, v14, v25

    const-string/jumbo v26, "l2tp"

    const/16 v29, 0x1

    aput-object v26, v14, v29

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v2, v14, v15

    aput-object v18, v14, v22

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v2, v14, v21

    aput-object v28, v14, v20

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v2, v14, v15

    aput-object v27, v14, v19

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v2, v14, v15

    const/16 v2, 0x9

    aput-object v17, v14, v2

    const-string/jumbo v2, "vpn"

    const/16 v15, 0xa

    aput-object v2, v14, v15

    const-string/jumbo v2, "refuse-eap"

    const/16 v15, 0xb

    aput-object v2, v14, v15

    const/16 v2, 0xc

    const-string/jumbo v15, "nodefaultroute"

    aput-object v15, v14, v2

    const/16 v2, 0xd

    const-string/jumbo v15, "usepeerdns"

    aput-object v15, v14, v2

    const/16 v2, 0xe

    const-string v15, "idle"

    aput-object v15, v14, v2

    const/16 v2, 0xf

    const-string v15, "1800"

    aput-object v15, v14, v2

    const/16 v2, 0x10

    const-string/jumbo v15, "mtu"

    aput-object v15, v14, v2

    const/16 v2, 0x11

    aput-object v30, v14, v2

    const/16 v2, 0x12

    const-string/jumbo v15, "mru"

    aput-object v15, v14, v2

    const/16 v2, 0x13

    aput-object v30, v14, v2

    move-object v13, v14

    goto :goto_6

    .line 2030
    :cond_8
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v2, v14

    const-string/jumbo v14, "pptp"

    const/4 v15, 0x1

    aput-object v14, v2, v15

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v14, v2, v15

    const-string v14, "1723"

    aput-object v14, v2, v22

    aput-object v28, v2, v21

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v14, v2, v20

    const/4 v14, 0x6

    aput-object v27, v2, v14

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v14, v2, v19

    const/16 v14, 0x8

    aput-object v17, v2, v14

    const-string/jumbo v14, "vpn"

    const/16 v15, 0x9

    aput-object v14, v2, v15

    const-string/jumbo v14, "refuse-eap"

    const/16 v15, 0xa

    aput-object v14, v2, v15

    const-string/jumbo v14, "nodefaultroute"

    const/16 v15, 0xb

    aput-object v14, v2, v15

    const/16 v14, 0xc

    const-string/jumbo v15, "usepeerdns"

    aput-object v15, v2, v14

    const/16 v14, 0xd

    const-string v15, "idle"

    aput-object v15, v2, v14

    const/16 v14, 0xe

    const-string v15, "1800"

    aput-object v15, v2, v14

    const/16 v14, 0xf

    const-string/jumbo v15, "mtu"

    aput-object v15, v2, v14

    const/16 v14, 0x10

    aput-object v30, v2, v14

    const/16 v14, 0x11

    const-string/jumbo v15, "mru"

    aput-object v15, v2, v14

    const/16 v14, 0x12

    aput-object v30, v2, v14

    const/16 v14, 0x13

    .line 2035
    iget-boolean v15, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v15, :cond_9

    const-string v15, "+mppe"

    goto :goto_5

    :cond_9
    const-string/jumbo v15, "nomppe"

    :goto_5
    aput-object v15, v2, v14

    move-object v13, v2

    .line 2037
    nop

    .line 2049
    :goto_6
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 2050
    .local v2, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 2051
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 2052
    iput-object v7, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2053
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 2054
    const/4 v14, 0x0

    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 2055
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 2057
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2058
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    .line 2059
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2061
    :cond_a
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 2062
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2064
    :cond_b
    invoke-direct {v0, v2, v12, v13, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    .line 2065
    return-void

    .line 1965
    .end local v2    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v12    # "racoon":[Ljava/lang/String;
    .end local v13    # "mtpd":[Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v2, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1939
    .end local v5    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .end local v6    # "gateway":Ljava/lang/String;
    .end local v7    # "iface":Ljava/lang/String;
    .end local v8    # "privateKey":Ljava/lang/String;
    .end local v9    # "userCert":Ljava/lang/String;
    .end local v10    # "caCert":Ljava/lang/String;
    .end local v11    # "serverCert":Ljava/lang/String;
    :cond_d
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Restricted users cannot establish VPNs"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized startVpnProfile(Ljava/lang/String;Landroid/security/KeyStore;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyStore"    # Landroid/security/KeyStore;

    monitor-enter p0

    .line 3023
    :try_start_0
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    const-string v0, "KeyStore missing"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3026
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3029
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3033
    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$Vpn$XZx2CQhtfrsWdTzM6-2aSP_XhYw;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$Vpn$XZx2CQhtfrsWdTzM6-2aSP_XhYw;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Landroid/security/KeyStore;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3043
    monitor-exit p0

    return-void

    .line 3030
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User consent not granted for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3022
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "keyStore":Landroid/security/KeyStore;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopVpnProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 3103
    :try_start_0
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3109
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3110
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit p0

    return-void

    .line 3102
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopVpnRunnerPrivileged()V
    .locals 3

    monitor-enter p0

    .line 2091
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 2092
    monitor-exit p0

    return-void

    .line 2095
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2097
    .local v0, "isLegacyVpn":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V

    .line 2098
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2102
    if-eqz v0, :cond_1

    .line 2103
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2106
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2108
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 2090
    .end local v0    # "isLegacyVpn":Z
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "defaultNetwork"    # Landroid/net/Network;

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 332
    .local v0, "underlyingNetworks":[Landroid/net/Network;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 334
    new-array v3, v2, [Landroid/net/Network;

    aput-object p1, v3, v1

    move-object v0, v3

    .line 337
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 339
    .local v1, "isAlwaysMetered":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    .line 340
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 339
    invoke-static {v2, v0, v3, v1}, Lcom/android/server/connectivity/Vpn;->applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 345
    new-instance v2, Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 325
    .end local v0    # "underlyingNetworks":[Landroid/net/Network;
    .end local v1    # "isAlwaysMetered":Z
    .end local p1    # "defaultNetwork":Landroid/net/Network;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 2
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 315
    return-void
.end method

.method validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 2896
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2907
    return-void

    .line 2900
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.ipsec_tunnels"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2909
    return-void

    .line 2902
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Ikev2VpnProfile(s) requires PackageManager.FEATURE_IPSEC_TUNNELS"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
