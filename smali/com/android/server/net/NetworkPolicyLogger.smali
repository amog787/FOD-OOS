.class public Lcom/android/server/net/NetworkPolicyLogger;
.super Ljava/lang/Object;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyLogger$Data;,
        Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
    }
.end annotation


# static fields
.field private static final EVENT_APP_IDLE_STATE_CHANGED:I = 0x8

.field private static final EVENT_APP_IDLE_WL_CHANGED:I = 0xe

.field private static final EVENT_DEVICE_IDLE_MODE_ENABLED:I = 0x7

.field private static final EVENT_FIREWALL_CHAIN_ENABLED:I = 0xc

.field private static final EVENT_METEREDNESS_CHANGED:I = 0x4

.field private static final EVENT_NETWORK_BLOCKED:I = 0x1

.field private static final EVENT_PAROLE_STATE_CHANGED:I = 0x9

.field private static final EVENT_POLICIES_CHANGED:I = 0x3

.field private static final EVENT_RESTRICT_BG_CHANGED:I = 0x6

.field private static final EVENT_TEMP_POWER_SAVE_WL_CHANGED:I = 0xa

.field private static final EVENT_TYPE_GENERIC:I = 0x0

.field private static final EVENT_UID_FIREWALL_RULE_CHANGED:I = 0xb

.field private static final EVENT_UID_STATE_CHANGED:I = 0x2

.field private static final EVENT_UPDATE_METERED_RESTRICTED_PKGS:I = 0xd

.field private static final EVENT_USER_STATE_REMOVED:I = 0x5

.field static final LOGD:Z

.field static final LOGV:Z

.field private static final MAX_LOG_SIZE:I

.field private static final MAX_NETWORK_BLOCKED_LOG_SIZE:I

.field static final NTWK_ALLOWED_DEFAULT:I = 0x6

.field static final NTWK_ALLOWED_NON_METERED:I = 0x1

.field static final NTWK_ALLOWED_SYSTEM:I = 0x7

.field static final NTWK_ALLOWED_TMP_WHITELIST:I = 0x4

.field static final NTWK_ALLOWED_WHITELIST:I = 0x3

.field static final NTWK_BLOCKED_BG_RESTRICT:I = 0x5

.field static final NTWK_BLOCKED_BLACKLIST:I = 0x2

.field static final NTWK_BLOCKED_POWER:I = 0x0

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"


# instance fields
.field private mDebugUid:I

.field private final mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field private final mLock:Ljava/lang/Object;

.field private final mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field private final mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-string v0, "NetworkPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 48
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x64

    const/16 v2, 0x190

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 81
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 82
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 44
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getBlockedReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(III)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(III)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 44
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getUserRemovedLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Z

    .line 44
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleWlChangedLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Z

    .line 44
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getParoleStateChanged(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppIdleChangedLog(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "idle"    # Z

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App idle state of uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppIdleWlChangedLog(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "isWhitelisted"    # Z

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App idle whitelist state of uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBlockedReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 267
    packed-switch p0, :pswitch_data_0

    .line 283
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :pswitch_0
    const-string v0, "allowed by default"

    return-object v0

    .line 279
    :pswitch_1
    const-string v0, "blocked when background is restricted"

    return-object v0

    .line 277
    :pswitch_2
    const-string/jumbo v0, "temporary whitelisted on metered network"

    return-object v0

    .line 275
    :pswitch_3
    const-string/jumbo v0, "whitelisted on metered network"

    return-object v0

    .line 273
    :pswitch_4
    const-string v0, "blacklisted on metered network"

    return-object v0

    .line 271
    :pswitch_5
    const-string v0, "allowed on unmetered network"

    return-object v0

    .line 269
    :pswitch_6
    const-string v0, "blocked by power restrictions"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDeviceIdleModeEnabled(Z)Ljava/lang/String;
    .locals 2
    .param p0, "enabled"    # Z

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceIdleMode enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFirewallChainEnabledLog(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "chain"    # I
    .param p1, "enabled"    # Z

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firewall chain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFirewallChainName(I)Ljava/lang/String;
    .locals 1
    .param p0, "chain"    # I

    .line 335
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 343
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_0
    const-string/jumbo v0, "powersave"

    return-object v0

    .line 339
    :cond_1
    const-string/jumbo v0, "standby"

    return-object v0

    .line 337
    :cond_2
    const-string v0, "dozable"

    return-object v0
.end method

.method private static getFirewallRuleName(I)Ljava/lang/String;
    .locals 1
    .param p0, "rule"    # I

    .line 348
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 356
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    const-string v0, "deny"

    return-object v0

    .line 352
    :cond_1
    const-string v0, "allow"

    return-object v0

    .line 350
    :cond_2
    const-string v0, "default"

    return-object v0
.end method

.method private static getMeterednessChangedLog(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "netId"    # I
    .param p1, "newMetered"    # Z

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Meteredness of netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParoleStateChanged(Z)Ljava/lang/String;
    .locals 2
    .param p0, "paroleOn"    # Z

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parole state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPolicyChangedLog(III)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "oldPolicy"    # I
    .param p2, "newPolicy"    # I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    return-object v0
.end method

.method private static getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;
    .locals 2
    .param p0, "oldValue"    # Z
    .param p1, "newValue"    # Z

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed restrictBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "appId"    # I
    .param p1, "added"    # Z

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "temp-power-save whitelist for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUidFirewallRuleChangedLog(III)Ljava/lang/String;
    .locals 3
    .param p0, "chain"    # I
    .param p1, "uid"    # I
    .param p2, "rule"    # I

    .line 326
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallRuleName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 326
    const-string v1, "Firewall rule changed: %d-%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserRemovedLog(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove state for u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method appIdleStateChanged(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "idle"    # Z

    .line 163
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_1

    .line 165
    :cond_0
    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->appIdleStateChanged(IZ)V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method appIdleWlChanged(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 172
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_1

    .line 174
    :cond_0
    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleWlChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->appIdleWlChanged(IZ)V

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deviceIdleModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 154
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 156
    :cond_0
    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->deviceIdleModeEnabled(Z)V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 245
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 247
    const-string/jumbo v1, "mEventLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 249
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 250
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 252
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 253
    const-string/jumbo v1, "mNetworkBlockedLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 255
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 256
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 258
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 259
    const-string/jumbo v1, "mUidStateChangeLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 261
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 262
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method event(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method firewallChainEnabled(IZ)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "enabled"    # Z

    .line 210
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 212
    :cond_0
    const-string v1, "NetworkPolicy"

    .line 213
    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->firewallChainEnabled(IZ)V

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method firewallRulesChanged(I[I[I)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I

    .line 220
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firewall rules changed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; uids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; rules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "log":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 224
    :cond_0
    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 227
    .end local v1    # "log":Ljava/lang/String;
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method meteredRestrictedPkgsChanged(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p1, "restrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metered restricted uids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "log":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 234
    :cond_0
    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 237
    .end local v1    # "log":Ljava/lang/String;
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method meterednessChanged(IZ)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "newMetered"    # Z

    .line 125
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 127
    :cond_0
    const-string v1, "NetworkPolicy"

    .line 128
    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->meterednessChanged(IZ)V

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method networkBlocked(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .line 89
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_1

    .line 91
    :cond_0
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyLogger;->getBlockedReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->networkBlocked(II)V

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method paroleStateChanged(Z)V
    .locals 3
    .param p1, "paroleOn"    # Z

    .line 181
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 183
    :cond_0
    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getParoleStateChanged(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->paroleStateChanged(Z)V

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removingUserState(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 137
    :cond_0
    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getUserRemovedLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->userRemoved(I)V

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restrictBackgroundChanged(ZZ)V
    .locals 3
    .param p1, "oldValue"    # Z
    .param p2, "newValue"    # Z

    .line 144
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 146
    :cond_0
    const-string v1, "NetworkPolicy"

    .line 147
    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->restrictBackgroundChanged(ZZ)V

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDebugUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 241
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 242
    return-void
.end method

.method tempPowerSaveWlChanged(IZ)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "added"    # Z

    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 192
    :cond_0
    const-string v1, "NetworkPolicy"

    .line 193
    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->tempPowerSaveWlChanged(IZ)V

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidFirewallRuleChanged(III)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 200
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p2, v1, :cond_1

    .line 202
    :cond_0
    const-string v1, "NetworkPolicy"

    .line 203
    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidFirewallRuleChanged(III)V

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidPolicyChanged(III)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "newPolicy"    # I

    .line 115
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_1

    .line 117
    :cond_0
    const-string v1, "NetworkPolicy"

    .line 118
    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidPolicyChanged(III)V

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidStateChanged(IIJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 98
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    if-ne p1, v1, :cond_1

    .line 100
    :cond_0
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidStateChanged(IIJ)V

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
