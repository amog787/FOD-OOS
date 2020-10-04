.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$SystemServices;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MAX_ROUTES_TO_EVALUATE:I = 0x96

.field private static final MOST_IPV4_ADDRESSES_COUNT:J

.field private static final MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final VPN_LAUNCH_IDLE_WHITELIST_DURATION_MS:J = 0xea60L


# instance fields
.field private mAlwaysOn:Z

.field private mBlockedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/android/internal/net/VpnConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private final mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mIsPackageTargetingAtLeastQ:Z

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdown:Z

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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field private final mUserHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 146
    const/16 v0, 0x55

    .line 148
    .local v0, "howManyPercentIsMost":I
    const-wide v1, 0x100000000L

    .line 149
    .local v1, "twoPower32":J
    const-wide v3, 0xd9999999L

    sput-wide v3, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    .line 150
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 151
    .local v3, "twoPower128":Ljava/math/BigInteger;
    nop

    .line 152
    const-wide/16 v4, 0x55

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 153
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sput-object v4, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 154
    .end local v0    # "howManyPercentIsMost":I
    .end local v1    # "twoPower32":J
    .end local v3    # "twoPower128":Ljava/math/BigInteger;
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    .line 218
    new-instance v5, Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-direct {v5, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V

    .line 219
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V
    .locals 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I
    .param p5, "systemServices"    # Lcom/android/server/connectivity/Vpn$SystemServices;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 197
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 210
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    .line 1453
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 224
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 225
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 226
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 227
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 228
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 230
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 232
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Vpn"

    const-string v3, "Problem registering observer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x11

    const-string v3, "VPN"

    const-string v4, ""

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 242
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 243
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 244
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 247
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage()V

    .line 248
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .line 129
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method private agentConnect()V
    .locals 18

    .line 962
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 971
    .local v13, "lp":Landroid/net/LinkProperties;
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 973
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    new-instance v0, Landroid/net/NetworkMisc;

    invoke-direct {v0}, Landroid/net/NetworkMisc;-><init>()V

    move-object v14, v0

    .line 976
    .local v14, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v12, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v14, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 978
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setEstablishingVpnAppUid(I)V

    .line 979
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, v12, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v2, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, v12, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {v12, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 981
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 983
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

    invoke-direct/range {v1 .. v11}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;I)V

    iput-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 994
    nop

    .line 995
    iget-object v0, v12, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v15}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 996
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentConnect"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 997
    return-void

    .line 993
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private agentDisconnect()V
    .locals 2

    .line 1018
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1020
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1023
    :cond_0
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .locals 3
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .line 1009
    if-eqz p1, :cond_0

    .line 1010
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1011
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1012
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1015
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method

.method public static applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V
    .locals 17
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "underlyingNetworks"    # [Landroid/net/Network;
    .param p2, "caps"    # Landroid/net/NetworkCapabilities;
    .param p3, "isAlwaysMetered"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 310
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v3, v4

    .line 311
    .local v3, "transportTypes":[I
    const/4 v5, 0x0

    .line 312
    .local v5, "downKbps":I
    const/4 v6, 0x0

    .line 315
    .local v6, "upKbps":I
    move/from16 v7, p3

    .line 316
    .local v7, "metered":Z
    const/4 v8, 0x0

    .line 317
    .local v8, "roaming":Z
    const/4 v9, 0x0

    .line 319
    .local v9, "congested":Z
    const/4 v10, 0x0

    .line 320
    .local v10, "hadUnderlyingNetworks":Z
    if-eqz v0, :cond_3

    .line 321
    array-length v14, v0

    move v15, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v3

    move v3, v4

    .end local v3    # "transportTypes":[I
    .local v5, "transportTypes":[I
    .local v6, "downKbps":I
    .local v7, "upKbps":I
    .local v8, "metered":Z
    .local v9, "roaming":Z
    .local v10, "congested":Z
    .local v15, "hadUnderlyingNetworks":Z
    :goto_0
    if-ge v3, v14, :cond_2

    aget-object v4, v0, v3

    .line 323
    .local v4, "underlying":Landroid/net/Network;
    move-object/from16 v11, p0

    invoke-virtual {v11, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v12

    .line 324
    .local v12, "underlyingCaps":Landroid/net/NetworkCapabilities;
    if-nez v12, :cond_0

    goto :goto_2

    .line 325
    :cond_0
    const/4 v15, 0x1

    .line 326
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    array-length v13, v2

    move-object v0, v5

    const/4 v5, 0x0

    .end local v5    # "transportTypes":[I
    .local v0, "transportTypes":[I
    :goto_1
    if-ge v5, v13, :cond_1

    move-object/from16 v16, v4

    .end local v4    # "underlying":Landroid/net/Network;
    .local v16, "underlying":Landroid/net/Network;
    aget v4, v2, v5

    .line 327
    .local v4, "underlyingType":I
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 326
    .end local v4    # "underlyingType":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    goto :goto_1

    .line 332
    .end local v16    # "underlying":Landroid/net/Network;
    .local v4, "underlying":Landroid/net/Network;
    :cond_1
    move-object/from16 v16, v4

    .line 333
    .end local v4    # "underlying":Landroid/net/Network;
    .restart local v16    # "underlying":Landroid/net/Network;
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v2

    .line 332
    invoke-static {v6, v2}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v6

    .line 334
    nop

    .line 335
    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v2

    .line 334
    invoke-static {v7, v2}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v7

    .line 336
    const/16 v2, 0xb

    invoke-virtual {v12, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const/4 v2, 0x1

    xor-int/2addr v4, v2

    or-int/2addr v8, v4

    .line 337
    const/16 v4, 0x12

    invoke-virtual {v12, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    or-int/2addr v9, v4

    .line 338
    const/16 v4, 0x14

    invoke-virtual {v12, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    or-int/2addr v10, v4

    move-object v5, v0

    .line 321
    .end local v0    # "transportTypes":[I
    .end local v12    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    .end local v16    # "underlying":Landroid/net/Network;
    .restart local v5    # "transportTypes":[I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v11, p0

    move-object v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_3

    .line 320
    .end local v15    # "hadUnderlyingNetworks":Z
    .restart local v3    # "transportTypes":[I
    .local v5, "downKbps":I
    .local v6, "upKbps":I
    .local v7, "metered":Z
    .local v8, "roaming":Z
    .local v9, "congested":Z
    .local v10, "hadUnderlyingNetworks":Z
    :cond_3
    move-object/from16 v11, p0

    move v15, v10

    .line 341
    .end local v10    # "hadUnderlyingNetworks":Z
    .restart local v15    # "hadUnderlyingNetworks":Z
    :goto_3
    if-nez v15, :cond_4

    .line 343
    const/4 v7, 0x1

    .line 344
    const/4 v8, 0x0

    .line 345
    const/4 v9, 0x0

    .line 348
    :cond_4
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 349
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 350
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 351
    if-nez v7, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    const/16 v4, 0xb

    invoke-virtual {v1, v4, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 352
    if-nez v8, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    const/16 v4, 0x12

    invoke-virtual {v1, v4, v0}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 353
    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v2}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 354
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1000
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1002
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    return v2

    .line 1004
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 826
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 827
    return v1

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 831
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 832
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 833
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

    .line 834
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 835
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

    .line 836
    return v2
.end method

.method private enforceControlPermission()V
    .locals 3

    .line 1485
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .locals 3

    .line 1491
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    return-void
.end method

.method private enforceSettingsPermission()V
    .locals 3

    .line 1496
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 3
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .line 1708
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

    .line 1710
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 1711
    return-object v1

    .line 1713
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_0
    goto :goto_0

    .line 1715
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

    .line 812
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 818
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .local v1, "result":I
    goto :goto_0

    .line 819
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 820
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    .line 822
    .local v1, "result":I
    :goto_0
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

    .line 1162
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1163
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

    .line 1164
    .local v2, "app":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v3

    .line 1165
    .local v3, "uid":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1166
    .end local v2    # "app":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_0
    goto :goto_0

    .line 1167
    :cond_1
    return-object v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 719
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

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

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 531
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

    .line 1150
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

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 803
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 804
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 807
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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

.method private loadAlwaysOnPackage()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 577
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 579
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

    .line 581
    .local v3, "alwaysOnLockdown":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v5, "always_on_vpn_lockdown_whitelist"

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "whitelistString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 584
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 585
    .local v5, "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    nop

    .end local v2    # "alwaysOnPackage":Ljava/lang/String;
    .end local v3    # "alwaysOnLockdown":Z
    .end local v4    # "whitelistString":Ljava/lang/String;
    .end local v5    # "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    nop

    .line 589
    return-void

    .line 587
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .locals 8

    .line 849
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 850
    .local v0, "allowIPv4":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 852
    .local v1, "allowIPv6":Z
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 854
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 856
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 857
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

    .line 858
    .local v4, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 859
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 860
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v5

    .line 861
    .end local v4    # "address":Landroid/net/LinkAddress;
    goto :goto_0

    .line 864
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 865
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

    .line 866
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 867
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 868
    .local v5, "address":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 869
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 870
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_1

    .line 873
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 874
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

    .line 875
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 876
    .restart local v5    # "address":Ljava/net/InetAddress;
    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 877
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 878
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 879
    .end local v4    # "dnsServer":Ljava/lang/String;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_2

    .line 882
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 884
    const/4 v3, 0x7

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 885
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 887
    :cond_3
    if-nez v1, :cond_4

    .line 888
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 892
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 894
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

    .line 895
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 896
    .end local v5    # "domain":Ljava/lang/String;
    goto :goto_3

    .line 898
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 902
    return-object v2
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .locals 9
    .param p1, "newPackage"    # Ljava/lang/String;

    .line 724
    const-string v0, " to call protect() "

    const-string v1, "Vpn"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 727
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 728
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 729
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 730
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 731
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 732
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 736
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 738
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn$Connection;->access$000(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v4

    const v6, 0xffffff

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    const/4 v8, 0x1

    .line 738
    invoke-interface {v4, v6, v7, v5, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    goto :goto_0

    .line 740
    :catch_0
    move-exception v4

    .line 743
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 744
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    goto :goto_1

    .line 745
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v4, :cond_2

    .line 746
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 747
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    :cond_2
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v4, v6}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 754
    goto :goto_2

    .line 752
    :catch_1
    move-exception v4

    .line 753
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

    .line 756
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

    .line 757
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 758
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 759
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 761
    :try_start_5
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v4, v6}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 764
    goto :goto_3

    .line 762
    :catch_2
    move-exception v4

    .line 763
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

    .line 765
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 767
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "prepare"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 768
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 770
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 771
    nop

    .line 772
    return-void

    .line 770
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private prepareStatusIntent()V
    .locals 3

    .line 1515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1517
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1520
    nop

    .line 1521
    return-void

    .line 1519
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static providesRoutesToMostDestinations(Landroid/net/LinkProperties;)Z
    .locals 9
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 916
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    .line 917
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x96

    if-le v1, v3, :cond_0

    return v2

    .line 918
    :cond_0
    invoke-static {}, Landroid/net/IpPrefix;->lengthComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 919
    .local v1, "prefixLengthComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/IpPrefix;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 920
    .local v3, "ipv4Prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 921
    .local v4, "ipv6Prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 922
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    goto :goto_0

    .line 923
    :cond_1
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v7

    .line 924
    .local v7, "destination":Landroid/net/IpPrefix;
    invoke-virtual {v7}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 925
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 927
    :cond_2
    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 929
    .end local v6    # "route":Landroid/net/RouteInfo;
    .end local v7    # "destination":Landroid/net/IpPrefix;
    :goto_1
    goto :goto_0

    .line 930
    :cond_3
    invoke-static {v3}, Landroid/net/NetworkUtils;->routedIPv4AddressCount(Ljava/util/TreeSet;)J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/connectivity/Vpn;->MOST_IPV4_ADDRESSES_COUNT:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 931
    return v2

    .line 933
    :cond_4
    invoke-static {v4}, Landroid/net/NetworkUtils;->routedIPv6AddressCount(Ljava/util/TreeSet;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lcom/android/server/connectivity/Vpn;->MOST_IPV6_ADDRESSES_COUNT:Ljava/math/BigInteger;

    .line 934
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 933
    :goto_2
    return v2
.end method

.method private saveAlwaysOnPackage()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 558
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 559
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 558
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 560
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 561
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

    .line 560
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V

    .line 562
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown_whitelist"

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 564
    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 562
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    nop

    .line 568
    return-void

    .line 566
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .locals 4
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    .line 1417
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1418
    return v1

    .line 1420
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 1422
    .local v0, "rangesArray":[Landroid/net/UidRange;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v0}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    nop

    .line 1428
    if-eqz p1, :cond_1

    .line 1429
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1431
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1433
    :goto_0
    return v1

    .line 1423
    :catch_0
    move-exception v1

    .line 1424
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating blocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1424
    const-string v3, "Vpn"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1426
    const/4 v2, 0x0

    return v2
.end method

.method private setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 489
    .local p3, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Vpn"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 490
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

    .line 491
    return v2

    .line 494
    :cond_0
    if-eqz p3, :cond_2

    .line 495
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting always-on vpn, invalid whitelisted package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v2

    .line 500
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 503
    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 506
    return v2

    .line 508
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    goto :goto_1

    .line 510
    :cond_4
    const-string p1, "[Legacy VPN]"

    .line 511
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 514
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    move v2, v0

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 515
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v1, :cond_6

    if-eqz p3, :cond_6

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 517
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 520
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 521
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    goto :goto_3

    .line 525
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 527
    :goto_3
    return v0
.end method

.method private setVpnForcedLocked(Z)V
    .locals 8
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    const/4 v0, 0x0

    .local v0, "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1374
    .end local v0    # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownWhitelist:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1375
    .restart local v0    # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1379
    .local v1, "removedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 1380
    .local v2, "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 1381
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1388
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/UidRange;

    .line 1389
    .local v5, "range":Landroid/net/UidRange;
    iget v6, v5, Landroid/net/UidRange;->start:I

    if-nez v6, :cond_1

    .line 1390
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1391
    iget v6, v5, Landroid/net/UidRange;->stop:I

    if-eqz v6, :cond_1

    .line 1392
    new-instance v6, Landroid/net/UidRange;

    iget v7, v5, Landroid/net/UidRange;->stop:I

    invoke-direct {v6, v3, v7}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1395
    .end local v5    # "range":Landroid/net/UidRange;
    :cond_1
    goto :goto_1

    .line 1397
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1398
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1401
    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1402
    invoke-direct {p0, v3, v2}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1403
    return-void
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .locals 8
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;
    .param p4, "profile"    # Lcom/android/internal/net/VpnProfile;

    monitor-enter p0

    .line 1855
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 1858
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 1859
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1862
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1863
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    monitor-exit p0

    return-void

    .line 1854
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

    .line 1273
    .local p1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-static {p0}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1274
    .local v0, "userRange":Landroid/net/UidRange;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1275
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

    .line 1276
    .local v3, "range":Landroid/net/UidRange;
    invoke-virtual {v0, v3}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1277
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    .end local v3    # "range":Landroid/net/UidRange;
    :cond_0
    goto :goto_0

    .line 1280
    :cond_1
    return-object v1
.end method

.method private updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 13
    .param p1, "networkState"    # Landroid/net/NetworkInfo$DetailedState;

    .line 1613
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1615
    .local v0, "visible":Z
    :goto_0
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1616
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1618
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x11

    const-string v7, "Vpn"

    if-nez v0, :cond_1

    .line 1620
    :try_start_1
    invoke-virtual {v5, v7, v6, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1643
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1621
    return-void

    .line 1623
    :cond_1
    :try_start_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1624
    .local v8, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v10, 0x1040155

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1626
    const-string/jumbo v9, "lockdown"

    iget-boolean v10, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1627
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1628
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v10, 0xc000000

    invoke-virtual {v9, v8, v10, v2}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1630
    .local v9, "configIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v11, 0x10808ec

    .line 1632
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v12, 0x1040750

    .line 1633
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v12, 0x104074d

    .line 1634
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1635
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const-string/jumbo v11, "sys"

    .line 1636
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1637
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1638
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v11, 0x106001c

    .line 1639
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1640
    .local v1, "builder":Landroid/app/Notification$Builder;
    nop

    .line 1641
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 1640
    invoke-virtual {v5, v7, v6, v10, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1643
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "configIntent":Landroid/app/PendingIntent;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1644
    nop

    .line 1645
    return-void

    .line 1643
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .locals 4
    .param p1, "agent"    # Landroid/net/NetworkAgent;
    .param p2, "oldConfig"    # Lcom/android/internal/net/VpnConfig;

    .line 944
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v2, 0x0

    const-string v3, "Vpn"

    if-eq v0, v1, :cond_0

    .line 945
    const-string v0, "Handover not possible due to changes to allowBypass"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return v2

    .line 951
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

    .line 952
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 957
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 958
    const/4 v0, 0x1

    return v0

    .line 953
    :cond_2
    :goto_0
    const-string v0, "Handover not possible due to changes to whitelisted/blacklisted apps"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return v2
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 1524
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1525
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1527
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1528
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1529
    monitor-exit p0

    return v0

    .line 1523
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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

    .line 1236
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_4

    .line 1238
    const/4 v0, -0x1

    .local v0, "start":I
    const/4 v1, -0x1

    .line 1239
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

    .line 1240
    .local v3, "uid":I
    if-ne v0, v4, :cond_0

    .line 1241
    move v0, v3

    goto :goto_1

    .line 1242
    :cond_0
    add-int/lit8 v4, v1, 0x1

    if-eq v3, v4, :cond_1

    .line 1243
    new-instance v4, Landroid/net/UidRange;

    invoke-direct {v4, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1244
    move v0, v3

    .line 1246
    :cond_1
    :goto_1
    move v1, v3

    .line 1247
    .end local v3    # "uid":I
    goto :goto_0

    .line 1248
    :cond_2
    if-eq v0, v4, :cond_3

    new-instance v2, Landroid/net/UidRange;

    invoke-direct {v2, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1249
    .end local v0    # "start":I
    .end local v1    # "stop":I
    :cond_3
    goto :goto_4

    :cond_4
    if-eqz p4, :cond_8

    .line 1251
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    .line 1252
    .local v0, "userRange":Landroid/net/UidRange;
    iget v1, v0, Landroid/net/UidRange;->start:I

    .line 1253
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

    .line 1254
    .restart local v3    # "uid":I
    if-ne v3, v1, :cond_5

    .line 1255
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1257
    :cond_5
    new-instance v4, Landroid/net/UidRange;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v1, v5}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1258
    add-int/lit8 v1, v3, 0x1

    .line 1260
    .end local v3    # "uid":I
    :goto_3
    goto :goto_2

    .line 1261
    :cond_6
    iget v2, v0, Landroid/net/UidRange;->stop:I

    if-gt v1, v2, :cond_7

    new-instance v2, Landroid/net/UidRange;

    iget v3, v0, Landroid/net/UidRange;->stop:I

    invoke-direct {v2, v1, v3}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1262
    .end local v0    # "userRange":Landroid/net/UidRange;
    .end local v1    # "start":I
    :cond_7
    goto :goto_4

    .line 1264
    :cond_8
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1266
    :goto_4
    return-void
.end method

.method public declared-synchronized appliesToUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1589
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1590
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1592
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->appliesToUid(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1588
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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

    .line 1187
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1190
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1197
    .local v3, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1200
    nop

    .line 1201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1202
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v6, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v7, p1, :cond_0

    .line 1203
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v7, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1205
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1199
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1209
    .end local v3    # "token":J
    :cond_1
    new-array v1, v2, [I

    const/16 v2, 0x25

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3e7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_4

    .line 1211
    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 1212
    :cond_3
    move v1, v3

    :goto_1
    nop

    .line 1213
    .local v1, "targetId":I
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1216
    .end local v1    # "targetId":I
    :cond_4
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 20
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 1034
    :try_start_0
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move-object v3, v0

    .line 1035
    .local v3, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v4, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_0

    .line 1036
    monitor-exit p0

    return-object v5

    .line 1039
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_1

    .line 1040
    monitor-exit p0

    return-object v5

    .line 1043
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.VpnService"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 1044
    .local v4, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1048
    .local v6, "token":J
    :try_start_3
    iget v0, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1049
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-nez v8, :cond_a

    .line 1053
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-interface {v8, v4, v5, v9, v10}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1055
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_9

    .line 1058
    const-string v9, "android.permission.BIND_VPN_SERVICE"

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_8

    .line 1064
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    nop

    .line 1068
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object v8, v0

    .line 1069
    .local v8, "oldConfig":Lcom/android/internal/net/VpnConfig;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object v9, v0

    .line 1070
    .local v9, "oldInterface":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object v10, v0

    .line 1071
    .local v10, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object v11, v0

    .line 1072
    .local v11, "oldNetworkAgent":Landroid/net/NetworkAgent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    move-object v12, v0

    .line 1075
    .local v12, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget v0, v2, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v13, v0

    .line 1077
    .local v13, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_5
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 1080
    .local v14, "interfaze":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    .line 1081
    .local v15, "builder":Ljava/lang/StringBuilder;
    iget-object v0, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v16, :cond_2

    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkAddress;

    move-object/from16 v17, v16

    .line 1082
    .local v17, "address":Landroid/net/LinkAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    .end local v17    # "address":Landroid/net/LinkAddress;
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1083
    move-object/from16 v0, v18

    const/4 v5, 0x0

    .end local v0    # "address":Landroid/net/LinkAddress;
    goto :goto_0

    .line 1134
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    goto/16 :goto_2

    .line 1084
    .restart local v14    # "interfaze":Ljava/lang/String;
    .restart local v15    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    if-lt v0, v5, :cond_7

    .line 1087
    new-instance v0, Lcom/android/server/connectivity/Vpn$Connection;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    move-object v5, v0

    .line 1088
    .local v5, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v17, v3

    .end local v3    # "mgr":Landroid/os/UserManager;
    .local v17, "mgr":Landroid/os/UserManager;
    :try_start_8
    new-instance v3, Landroid/os/UserHandle;

    move-object/from16 v19, v15

    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .local v19, "builder":Ljava/lang/StringBuilder;
    iget v15, v1, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v3, v15}, Landroid/os/UserHandle;-><init>(I)V

    const v15, 0x4000001

    invoke-virtual {v0, v4, v5, v15, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1094
    iput-object v5, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1095
    iput-object v14, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1098
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1099
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1100
    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1101
    iput-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1106
    if-eqz v8, :cond_3

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1107
    invoke-direct {v1, v0, v8}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1110
    :cond_3
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1111
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "establish"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1113
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 1117
    invoke-direct {v1, v11}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 1120
    :goto_1
    if-eqz v10, :cond_4

    .line 1121
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1124
    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1125
    invoke-direct {v1, v9}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1129
    :cond_5
    :try_start_a
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v0, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1133
    nop

    .line 1144
    .end local v5    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v19    # "builder":Ljava/lang/StringBuilder;
    nop

    .line 1145
    :try_start_b
    const-string v0, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Established by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1146
    monitor-exit p0

    return-object v13

    .line 1130
    .restart local v5    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v14    # "interfaze":Ljava/lang/String;
    .restart local v19    # "builder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/io/IOException;
    :try_start_c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .local v16, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    const-string v5, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "token":J
    .end local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1091
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v6    # "token":J
    .restart local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "oldInterface":Ljava/lang/String;
    .restart local v10    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_6
    move-object v15, v4

    move-object/from16 v16, v5

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v0

    .line 1134
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v16    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v19    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "token":J
    .restart local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "oldInterface":Ljava/lang/String;
    .restart local v10    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_2
    move-exception v0

    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 1085
    .end local v17    # "mgr":Landroid/os/UserManager;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v14    # "interfaze":Ljava/lang/String;
    .local v15, "builder":Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v19, v15

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local v19    # "builder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one address must be specified"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1134
    .end local v14    # "interfaze":Ljava/lang/String;
    .end local v19    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "token":J
    .restart local v8    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "oldInterface":Ljava/lang/String;
    .restart local v10    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .restart local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .line 1135
    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    :goto_2
    :try_start_d
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1138
    iput-object v8, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1139
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1140
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v12}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1141
    iput-object v11, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1142
    iput-object v9, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1143
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1059
    .end local v9    # "oldInterface":Ljava/lang/String;
    .end local v10    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v11    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v12    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local v13    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .local v0, "user":Landroid/content/pm/UserInfo;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    :cond_8
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    :try_start_e
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1056
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_9
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3

    .line 1050
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_a
    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1061
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .restart local v6    # "token":J
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_5
    move-exception v0

    goto :goto_3

    .line 1064
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    goto :goto_4

    .line 1061
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .restart local v3    # "mgr":Landroid/os/UserManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_6
    move-exception v0

    move-object/from16 v17, v3

    move-object v15, v4

    .line 1062
    .end local v3    # "mgr":Landroid/os/UserManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    :goto_3
    :try_start_f
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1064
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v6    # "token":J
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_1
    move-exception v0

    :goto_4
    :try_start_10
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1033
    .end local v6    # "token":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOn()Z
    .locals 1

    monitor-enter p0

    .line 393
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 540
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 541
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

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .line 1905
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    .line 1908
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    monitor-enter p0

    .line 1884
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1883
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    monitor-enter p0

    .line 1893
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1895
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1896
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1897
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1898
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1899
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1901
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 1892
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdown()Z
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

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

    .line 548
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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetId()I
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .locals 1

    monitor-enter p0

    .line 1567
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1568
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1570
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1566
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .line 1440
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1441
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .locals 2

    monitor-enter p0

    .line 1578
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1579
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1582
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1583
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1584
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1585
    monitor-exit p0

    return-object v0

    .line 1577
    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1447
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

    .line 1450
    goto :goto_0

    .line 1448
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1446
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "up":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1448
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "up":Z
    :catch_1
    move-exception v0

    .line 1451
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 410
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    .line 412
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 413
    return v0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 417
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 419
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v1, p1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 422
    goto :goto_0

    .line 420
    :catch_0
    move-exception v3

    .line 421
    .local v3, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" when checking always-on support"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vpn"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v3    # "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v2, :cond_6

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_1

    goto :goto_3

    .line 427
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.VpnService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const/16 v4, 0x80

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 430
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 431
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 435
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 436
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 437
    .local v8, "metaData":Landroid/os/Bundle;
    if-eqz v8, :cond_3

    .line 438
    const-string v9, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 439
    return v0

    .line 441
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "metaData":Landroid/os/Bundle;
    :cond_3
    goto :goto_1

    .line 443
    :cond_4
    return v7

    .line 432
    :cond_5
    :goto_2
    return v0

    .line 424
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    :goto_3
    return v0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1605
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 1608
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-static {v0, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1604
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected isCallerEstablishedOwnerLocked()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1157
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

.method public onUserAdded(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 1290
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1291
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v1, v2, :cond_1

    .line 1292
    monitor-enter p0

    .line 1293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_0

    .line 1296
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1300
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    goto :goto_0

    .line 1301
    :catch_0
    move-exception v2

    .line 1302
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1305
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1306
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1308
    :cond_1
    :goto_1
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 1317
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1318
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v1, v2, :cond_1

    .line 1319
    monitor-enter p0

    .line 1320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_0

    .line 1323
    nop

    .line 1324
    :try_start_1
    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 1325
    .local v2, "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1328
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1331
    nop

    .end local v2    # "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    goto :goto_0

    .line 1329
    :catch_0
    move-exception v2

    .line 1330
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1334
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1336
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .locals 1

    monitor-enter p0

    .line 1343
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 1344
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 1347
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    monitor-exit p0

    return-void

    .line 1342
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    monitor-enter p0

    .line 675
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 677
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 678
    monitor-exit p0

    return v1

    .line 682
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 685
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    monitor-exit p0

    return v0

    .line 689
    :cond_1
    monitor-exit p0

    return v1

    .line 690
    :cond_2
    :try_start_2
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 691
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 693
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    monitor-exit p0

    return v1

    .line 674
    .end local p1    # "oldPackage":Ljava/lang/String;
    .end local p2    # "newPackage":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 699
    .restart local p1    # "oldPackage":Ljava/lang/String;
    .restart local p2    # "newPackage":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_6

    :try_start_3
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 700
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 705
    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 708
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_5

    .line 709
    monitor-exit p0

    return v1

    .line 712
    :cond_5
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 713
    monitor-exit p0

    return v0

    .line 674
    .end local p1    # "oldPackage":Ljava/lang/String;
    .end local p2    # "newPackage":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1

    .line 701
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "oldPackage":Ljava/lang/String;
    .restart local p2    # "newPackage":Ljava/lang/String;
    :cond_6
    :goto_1
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 1533
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1534
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1536
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1537
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1538
    monitor-exit p0

    return v0

    .line 1532
    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p3, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 465
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 467
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 471
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 464
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "lockdown":Z
    .end local p3    # "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 257
    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .locals 1
    .param p1, "lockdown"    # Z

    monitor-enter p0

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 370
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 371
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 375
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit p0

    return-void

    .line 367
    .end local p1    # "lockdown":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    .line 779
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 781
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    .line 782
    .local v0, "uid":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const-string v2, "[Legacy VPN]"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 787
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 789
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "appops"

    .line 790
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 791
    .local v4, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0x2f

    .line 792
    const/4 v6, 0x1

    if-eqz p2, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v6

    .line 791
    :goto_0
    invoke-virtual {v4, v5, v0, p1, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    nop

    .line 797
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    return v6

    .line 797
    .end local v4    # "appOps":Landroid/app/AppOpsManager;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 794
    :catch_0
    move-exception v4

    .line 795
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set app ops for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    nop

    .line 799
    return v1

    .line 797
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 784
    .end local v2    # "token":J
    :cond_2
    :goto_2
    return v1
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 5
    .param p1, "networks"    # [Landroid/net/Network;

    monitor-enter p0

    .line 1548
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1549
    monitor-exit p0

    return v1

    .line 1551
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1552
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    goto :goto_2

    .line 1554
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v3, p1

    new-array v3, v3, [Landroid/net/Network;

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1555
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1556
    aget-object v2, p1, v1

    if-nez v2, :cond_2

    .line 1557
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    aput-object v0, v2, v1

    goto :goto_1

    .line 1559
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

    .line 1555
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1563
    .end local v1    # "i":I
    :cond_3
    :goto_2
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1547
    .end local p1    # "networks":[Landroid/net/Network;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startAlwaysOnVpn()Z
    .locals 13

    .line 597
    monitor-enter p0

    .line 598
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    const/4 v9, 0x1

    if-nez v0, :cond_0

    .line 601
    monitor-exit p0

    return v9

    .line 604
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_1

    .line 605
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v10, v1}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 606
    monitor-exit p0

    return v10

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    monitor-exit p0

    return v9

    .line 614
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 618
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 620
    .local v11, "oldId":J
    :try_start_1
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 621
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 622
    .local v1, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/32 v4, 0xea60

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v7, 0x0

    const-string/jumbo v8, "vpn"

    move-object v3, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 626
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v9, v10

    .line 635
    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 629
    return v9

    .line 630
    :catch_0
    move-exception v3

    .line 631
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_3
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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 632
    nop

    .line 635
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    return v10

    .line 635
    .end local v1    # "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 614
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v11    # "oldId":J
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 1727
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1730
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1733
    nop

    .line 1734
    return-void

    .line 1732
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 26
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 1744
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1745
    .local v3, "mgr":Landroid/os/UserManager;
    iget v4, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1746
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Landroid/os/UserHandle;

    iget v6, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "no_config_vpn"

    invoke-virtual {v3, v6, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1751
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 1752
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 1753
    .local v6, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 1756
    .local v7, "iface":Ljava/lang/String;
    const-string v8, ""

    .line 1757
    .local v8, "privateKey":Ljava/lang/String;
    const-string v9, ""

    .line 1758
    .local v9, "userCert":Ljava/lang/String;
    const-string v10, ""

    .line 1759
    .local v10, "caCert":Ljava/lang/String;
    const-string v11, ""

    .line 1760
    .local v11, "serverCert":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_1

    .line 1761
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRPKEY_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1762
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1763
    .local v12, "value":[B
    if-nez v12, :cond_0

    move-object v14, v13

    goto :goto_0

    :cond_0
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    move-object v9, v14

    .line 1765
    .end local v12    # "value":[B
    :cond_1
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1766
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

    .line 1767
    .restart local v12    # "value":[B
    if-nez v12, :cond_2

    move-object v14, v13

    goto :goto_1

    :cond_2
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    move-object v10, v14

    .line 1769
    .end local v12    # "value":[B
    :cond_3
    iget-object v12, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1770
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 1771
    .restart local v12    # "value":[B
    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    new-instance v13, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v12, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_2
    move-object v11, v13

    .line 1773
    .end local v12    # "value":[B
    :cond_5
    if-eqz v8, :cond_10

    if-eqz v9, :cond_10

    if-eqz v10, :cond_10

    if-eqz v11, :cond_10

    .line 1778
    const/4 v12, 0x0

    .line 1779
    .local v12, "racoon":[Ljava/lang/String;
    iget v13, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v15, "1701"

    const/16 v16, 0x7

    const/4 v14, 0x2

    const/4 v2, 0x1

    if-eq v13, v2, :cond_a

    if-eq v13, v14, :cond_9

    const-string v23, ""

    const/4 v14, 0x3

    if-eq v13, v14, :cond_8

    const/4 v14, 0x4

    if-eq v13, v14, :cond_7

    const/4 v14, 0x5

    if-eq v13, v14, :cond_6

    goto/16 :goto_3

    .line 1805
    :cond_6
    const/16 v13, 0x9

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string v13, "hybridrsa"

    const/16 v24, 0x2

    aput-object v13, v14, v24

    const/4 v13, 0x3

    aput-object v10, v14, v13

    const/4 v13, 0x4

    aput-object v11, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/16 v20, 0x5

    aput-object v13, v14, v20

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v19, 0x6

    aput-object v13, v14, v19

    aput-object v23, v14, v16

    const/16 v13, 0x8

    aput-object v6, v14, v13

    move-object v12, v14

    goto/16 :goto_3

    .line 1799
    :cond_7
    const/16 v13, 0xb

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string/jumbo v13, "xauthrsa"

    const/16 v24, 0x2

    aput-object v13, v14, v24

    const/4 v13, 0x3

    aput-object v8, v14, v13

    const/4 v13, 0x4

    aput-object v9, v14, v13

    const/4 v13, 0x5

    aput-object v10, v14, v13

    const/4 v13, 0x6

    aput-object v11, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v14, v16

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v18, 0x8

    aput-object v13, v14, v18

    const/16 v13, 0x9

    aput-object v23, v14, v13

    const/16 v17, 0xa

    aput-object v6, v14, v17

    move-object v12, v14

    .line 1803
    goto/16 :goto_3

    .line 1793
    :cond_8
    const/16 v13, 0x9

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string/jumbo v13, "xauthpsk"

    const/16 v24, 0x2

    aput-object v13, v14, v24

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v22, 0x3

    aput-object v13, v14, v22

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v21, 0x4

    aput-object v13, v14, v21

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/16 v20, 0x5

    aput-object v13, v14, v20

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v19, 0x6

    aput-object v13, v14, v19

    aput-object v23, v14, v16

    const/16 v13, 0x8

    aput-object v6, v14, v13

    move-object v12, v14

    .line 1797
    goto :goto_3

    .line 1787
    :cond_9
    const/16 v13, 0x8

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string/jumbo v13, "udprsa"

    const/16 v23, 0x2

    aput-object v13, v14, v23

    const/4 v13, 0x3

    aput-object v8, v14, v13

    const/4 v13, 0x4

    aput-object v9, v14, v13

    const/4 v13, 0x5

    aput-object v10, v14, v13

    const/4 v13, 0x6

    aput-object v11, v14, v13

    aput-object v15, v14, v16

    move-object v12, v14

    .line 1791
    goto :goto_3

    .line 1781
    :cond_a
    const/4 v13, 0x6

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v14, v13

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v14, v2

    const-string/jumbo v13, "udppsk"

    const/16 v23, 0x2

    aput-object v13, v14, v23

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v22, 0x3

    aput-object v13, v14, v22

    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v21, 0x4

    aput-object v13, v14, v21

    const/4 v13, 0x5

    aput-object v15, v14, v13

    move-object v12, v14

    .line 1785
    nop

    .line 1813
    :goto_3
    const/4 v13, 0x0

    .line 1814
    .local v13, "mtpd":[Ljava/lang/String;
    iget v14, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v23, "1400"

    if-eqz v14, :cond_c

    if-eq v14, v2, :cond_b

    const/4 v2, 0x2

    if-eq v14, v2, :cond_b

    goto/16 :goto_5

    .line 1826
    :cond_b
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v2, v14

    const-string/jumbo v14, "l2tp"

    const/16 v25, 0x1

    aput-object v14, v2, v25

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v24, 0x2

    aput-object v14, v2, v24

    const/4 v14, 0x3

    aput-object v15, v2, v14

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v2, v15

    const-string/jumbo v14, "name"

    const/4 v15, 0x5

    aput-object v14, v2, v15

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v2, v15

    const-string/jumbo v14, "password"

    aput-object v14, v2, v16

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v14, v2, v15

    const-string/jumbo v14, "linkname"

    const/16 v15, 0x9

    aput-object v14, v2, v15

    const/16 v14, 0xa

    const-string/jumbo v15, "vpn"

    aput-object v15, v2, v14

    const-string/jumbo v14, "refuse-eap"

    const/16 v15, 0xb

    aput-object v14, v2, v15

    const/16 v14, 0xc

    const-string/jumbo v15, "nodefaultroute"

    aput-object v15, v2, v14

    const/16 v14, 0xd

    const-string/jumbo v15, "usepeerdns"

    aput-object v15, v2, v14

    const/16 v14, 0xe

    const-string v15, "idle"

    aput-object v15, v2, v14

    const/16 v14, 0xf

    const-string v15, "1800"

    aput-object v15, v2, v14

    const/16 v14, 0x10

    const-string/jumbo v15, "mtu"

    aput-object v15, v2, v14

    const/16 v14, 0x11

    aput-object v23, v2, v14

    const/16 v14, 0x12

    const-string/jumbo v15, "mru"

    aput-object v15, v2, v14

    const/16 v14, 0x13

    aput-object v23, v2, v14

    move-object v13, v2

    goto/16 :goto_5

    .line 1816
    :cond_c
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

    const/4 v15, 0x3

    aput-object v14, v2, v15

    const-string/jumbo v14, "name"

    const/4 v15, 0x4

    aput-object v14, v2, v15

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v14, v2, v15

    const-string/jumbo v14, "password"

    const/4 v15, 0x6

    aput-object v14, v2, v15

    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v14, v2, v16

    const-string/jumbo v14, "linkname"

    const/16 v15, 0x8

    aput-object v14, v2, v15

    const-string/jumbo v14, "vpn"

    const/16 v15, 0x9

    aput-object v14, v2, v15

    const/16 v14, 0xa

    const-string/jumbo v15, "refuse-eap"

    aput-object v15, v2, v14

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

    aput-object v23, v2, v14

    const/16 v14, 0x11

    const-string/jumbo v15, "mru"

    aput-object v15, v2, v14

    const/16 v14, 0x12

    aput-object v23, v2, v14

    const/16 v14, 0x13

    .line 1821
    iget-boolean v15, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v15, :cond_d

    const-string v15, "+mppe"

    goto :goto_4

    :cond_d
    const-string/jumbo v15, "nomppe"

    :goto_4
    aput-object v15, v2, v14

    move-object v13, v2

    .line 1823
    nop

    .line 1835
    :goto_5
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1836
    .local v2, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1837
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1838
    iput-object v7, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1839
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1840
    const/4 v14, 0x0

    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 1841
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 1843
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1844
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 1845
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1847
    :cond_e
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    .line 1848
    iget-object v14, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1850
    :cond_f
    invoke-direct {v0, v2, v12, v13, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    .line 1851
    return-void

    .line 1774
    .end local v2    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v12    # "racoon":[Ljava/lang/String;
    .end local v13    # "mtpd":[Ljava/lang/String;
    :cond_10
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v2, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1748
    .end local v5    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .end local v6    # "gateway":Ljava/lang/String;
    .end local v7    # "iface":Ljava/lang/String;
    .end local v8    # "privateKey":Ljava/lang/String;
    .end local v9    # "userCert":Ljava/lang/String;
    .end local v10    # "caCert":Ljava/lang/String;
    .end local v11    # "serverCert":Ljava/lang/String;
    :cond_11
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Restricted users cannot establish VPNs"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .locals 2

    monitor-enter p0

    .line 1868
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1872
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1875
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 1877
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1867
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "defaultNetwork"    # Landroid/net/Network;

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 288
    .local v0, "underlyingNetworks":[Landroid/net/Network;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 290
    new-array v3, v2, [Landroid/net/Network;

    aput-object p1, v3, v1

    move-object v0, v3

    .line 293
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 295
    .local v1, "isAlwaysMetered":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    .line 296
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 295
    invoke-static {v2, v0, v3, v1}, Lcom/android/server/connectivity/Vpn;->applyUnderlyingCapabilities(Landroid/net/ConnectivityManager;[Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 301
    new-instance v2, Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 281
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 264
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

    .line 265
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 270
    return-void
.end method
