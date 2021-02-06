.class public Lcom/android/server/ConnectivityServiceInjector;
.super Ljava/lang/Object;
.source "ConnectivityServiceInjector.java"


# static fields
.field private static final INTENT_CONNECTIVITY_CHANGED_USV:Ljava/lang/String; = "com.verizon.net.CONNECTIVITY_CHANGE"

.field private static final INTENT_DATA_ACTIVITY_CHANGED_USV:Ljava/lang/String; = "com.verizon.provider.DATA_ACTIVITY_CHANGE"

.field private static final TAG:Ljava/lang/String;

.field private static final USV_DBG:Z

.field private static final VDBG_STALL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-class v0, Lcom/android/server/ConnectivityServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityServiceInjector;->TAG:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "persist.radio.dbg.opdatastall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityServiceInjector;->VDBG_STALL:Z

    .line 37
    const-string/jumbo v0, "persist.vendor.radio.usv.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityServiceInjector;->USV_DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private getNetworkTypeNameUsv(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 116
    sget-boolean v0, Lcom/android/server/ConnectivityServiceInjector;->USV_DBG:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkTypeNameUsv: networkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 120
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 121
    .local v0, "radioTech":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkTypeNameUsv: Undefined radioTech = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 125
    :cond_1
    const-string v1, "5GNSA"

    return-object v1

    .line 123
    :cond_2
    const-string v1, "LTE"

    return-object v1

    .line 130
    .end local v0    # "radioTech":I
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 131
    const-string/jumbo v0, "wi-fi"

    return-object v0

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkTypeNameUsv: Undefined network type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/android/server/ConnectivityServiceInjector;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 165
    sget-object v0, Lcom/android/server/ConnectivityServiceInjector;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public static opGetDnsInfo(Landroid/net/IDnsResolver;III)[I
    .locals 17
    .param p0, "dnsResolver"    # Landroid/net/IDnsResolver;
    .param p1, "netId"    # I
    .param p2, "serversLength"    # I
    .param p3, "domainsLength"    # I

    .line 46
    move/from16 v1, p2

    new-array v10, v1, [Ljava/lang/String;

    .line 47
    .local v10, "resultServers":[Ljava/lang/String;
    new-array v11, v1, [Ljava/lang/String;

    .line 48
    .local v11, "privateServers":[Ljava/lang/String;
    move/from16 v12, p3

    new-array v13, v12, [Ljava/lang/String;

    .line 52
    .local v13, "resultDomains":[Ljava/lang/String;
    const/16 v0, 0xa

    new-array v14, v0, [I

    .line 54
    .local v14, "timeoutCnt":[I
    const/4 v0, 0x6

    new-array v15, v0, [I

    .line 67
    .local v15, "resultParams":[I
    mul-int/lit8 v0, v1, 0x7

    new-array v9, v0, [I

    .line 69
    .local v9, "resultStats":[I
    if-eqz p0, :cond_0

    .line 70
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object v4, v10

    move-object v5, v13

    move-object v6, v11

    move-object v7, v15

    move-object v8, v9

    move-object/from16 v16, v9

    .end local v9    # "resultStats":[I
    .local v16, "resultStats":[I
    move-object v9, v14

    :try_start_0
    invoke-interface/range {v2 .. v9}, Landroid/net/IDnsResolver;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_DATA_STALL: opGetDnsInfo() e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 75
    const/4 v9, 0x0

    .end local v16    # "resultStats":[I
    .restart local v9    # "resultStats":[I
    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v16, v9

    .line 76
    .end local v9    # "resultStats":[I
    .restart local v16    # "resultStats":[I
    :goto_0
    move-object/from16 v9, v16

    .line 78
    .end local v16    # "resultStats":[I
    .restart local v9    # "resultStats":[I
    :goto_1
    const/4 v0, 0x0

    .line 79
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_2
    array-length v2, v10

    const-string v3, "] = "

    if-ge v0, v2, :cond_1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_DATA_STALL: opGetDnsInfo() resultServers["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v10, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :cond_1
    const/4 v0, 0x0

    :goto_3
    array-length v2, v13

    if-ge v0, v2, :cond_3

    .line 83
    sget-boolean v2, Lcom/android/server/ConnectivityServiceInjector;->VDBG_STALL:Z

    if-eqz v2, :cond_2

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_DATA_STALL: opGetDnsInfo() resultDomains["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v13, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 87
    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v2, v15

    if-ge v0, v2, :cond_5

    .line 88
    sget-boolean v2, Lcom/android/server/ConnectivityServiceInjector;->VDBG_STALL:Z

    if-eqz v2, :cond_4

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_DATA_STALL: opGetDnsInfo() resultParams["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v15, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 87
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 92
    :cond_5
    const/4 v0, 0x0

    :goto_5
    array-length v2, v9

    if-ge v0, v2, :cond_7

    .line 93
    sget-boolean v2, Lcom/android/server/ConnectivityServiceInjector;->VDBG_STALL:Z

    if-eqz v2, :cond_6

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_DATA_STALL: opGetDnsInfo() resultStats["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v9, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 92
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 98
    :cond_7
    return-object v9
.end method


# virtual methods
.method public sendConnectivityChangeBroadcastUsv(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1, "oldInfo"    # Landroid/net/NetworkInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    .line 139
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe7

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 149
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/ConnectivityServiceInjector;->USV_DBG:Z

    if-eqz v1, :cond_2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendConnectivityChangeBroadcastUsv: changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 152
    :cond_2
    if-eqz v0, :cond_3

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.verizon.net.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 158
    .end local v0    # "changed":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public sendDataActivityBroadcastUsv(Landroid/net/NetworkInfo;Z)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "active"    # Z

    .line 102
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe7

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-boolean v0, Lcom/android/server/ConnectivityServiceInjector;->USV_DBG:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDataActivityBroadcastUsv: networkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceInjector;->getNetworkTypeNameUsv(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 107
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.verizon.net.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceInjector;->getNetworkTypeNameUsv(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.verizon.provider.NETWORK_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "com.verizon.provider.IS_ACTIVE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 112
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
