.class public Lcom/android/server/ConnectivityServiceInjector;
.super Ljava/lang/Object;
.source "ConnectivityServiceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VDBG_STALL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/android/server/ConnectivityServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityServiceInjector;->TAG:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "persist.radio.dbg.opdatastall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityServiceInjector;->VDBG_STALL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/server/ConnectivityServiceInjector;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/server/ConnectivityServiceInjector;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public static opGetDnsInfo(Landroid/net/IDnsResolver;III)[I
    .locals 17
    .param p0, "dnsResolver"    # Landroid/net/IDnsResolver;
    .param p1, "netId"    # I
    .param p2, "serversLength"    # I
    .param p3, "domainsLength"    # I

    .line 33
    move/from16 v1, p2

    new-array v10, v1, [Ljava/lang/String;

    .line 34
    .local v10, "resultServers":[Ljava/lang/String;
    new-array v11, v1, [Ljava/lang/String;

    .line 35
    .local v11, "privateServers":[Ljava/lang/String;
    move/from16 v12, p3

    new-array v13, v12, [Ljava/lang/String;

    .line 39
    .local v13, "resultDomains":[Ljava/lang/String;
    const/16 v0, 0xa

    new-array v14, v0, [I

    .line 41
    .local v14, "timeoutCnt":[I
    const/4 v0, 0x6

    new-array v15, v0, [I

    .line 54
    .local v15, "resultParams":[I
    mul-int/lit8 v0, v1, 0x7

    new-array v9, v0, [I

    .line 56
    .local v9, "resultStats":[I
    if-eqz p0, :cond_0

    .line 57
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

    .line 60
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_DATA_STALL: opGetDnsInfo() e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityServiceInjector;->log(Ljava/lang/String;)V

    .line 62
    const/4 v9, 0x0

    .end local v16    # "resultStats":[I
    .restart local v9    # "resultStats":[I
    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v16, v9

    .line 63
    .end local v9    # "resultStats":[I
    .restart local v16    # "resultStats":[I
    :goto_0
    move-object/from16 v9, v16

    .line 65
    .end local v16    # "resultStats":[I
    .restart local v9    # "resultStats":[I
    :goto_1
    const/4 v0, 0x0

    .line 66
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_2
    array-length v2, v10

    const-string v3, "] = "

    if-ge v0, v2, :cond_1

    .line 67
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

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 69
    :cond_1
    const/4 v0, 0x0

    :goto_3
    array-length v2, v13

    if-ge v0, v2, :cond_3

    .line 70
    sget-boolean v2, Lcom/android/server/ConnectivityServiceInjector;->VDBG_STALL:Z

    if-eqz v2, :cond_2

    .line 71
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

    .line 69
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 74
    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v2, v15

    if-ge v0, v2, :cond_5

    .line 75
    sget-boolean v2, Lcom/android/server/ConnectivityServiceInjector;->VDBG_STALL:Z

    if-eqz v2, :cond_4

    .line 76
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

    .line 74
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 79
    :cond_5
    const/4 v0, 0x0

    :goto_5
    array-length v2, v9

    if-ge v0, v2, :cond_7

    .line 80
    sget-boolean v2, Lcom/android/server/ConnectivityServiceInjector;->VDBG_STALL:Z

    if-eqz v2, :cond_6

    .line 81
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

    .line 79
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 85
    :cond_7
    return-object v9
.end method
