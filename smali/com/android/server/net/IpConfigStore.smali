.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# static fields
.field private static final DBG:Z = false

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x3

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 0
    .param p1, "writer"    # Lcom/android/server/net/DelayedDiskWrite;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 67
    return-void
.end method

.method static synthetic lambda$writeIpAndProxyConfigurationsToFile$0(Landroid/util/SparseArray;Ljava/io/DataOutputStream;)V
    .locals 3
    .param p0, "networks"    # Landroid/util/SparseArray;
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 186
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$writeIpConfigurations$1(Landroid/util/ArrayMap;Ljava/io/DataOutputStream;)V
    .locals 3
    .param p0, "networks"    # Landroid/util/ArrayMap;
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 414
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 410
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public static readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    invoke-static {p0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 234
    .local v0, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    if-nez v0, :cond_0

    .line 235
    const/4 v1, 0x0

    return-object v1

    .line 238
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 239
    .local v1, "networksById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 240
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 241
    .local v3, "id":I
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    .end local v3    # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 226
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 224
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    return-object v1
.end method

.method public static readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;
    .locals 19
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 251
    .local v1, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    const/4 v2, 0x0

    .line 253
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 255
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 256
    .local v3, "version":I
    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v3, v6, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v3, v7, :cond_0

    .line 257
    const-string v5, "Bad version on IP configuration file, ignore read"

    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const/4 v5, 0x0

    .line 399
    nop

    .line 401
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 258
    :goto_1
    return-object v5

    .line 262
    .end local v3    # "version":I
    :cond_0
    :goto_2
    const/4 v8, 0x0

    .line 264
    .local v8, "uniqueToken":Ljava/lang/String;
    :try_start_2
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 265
    .local v9, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 266
    .local v10, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v11, Landroid/net/StaticIpConfiguration;

    invoke-direct {v11}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 267
    .local v11, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/4 v12, 0x0

    .line 268
    .local v12, "proxyHost":Ljava/lang/String;
    const/4 v13, 0x0

    .line 269
    .local v13, "pacFileUrl":Ljava/lang/String;
    const/4 v14, -0x1

    .line 270
    .local v14, "proxyPort":I
    const/4 v15, 0x0

    .line 274
    .local v15, "exclusionList":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v17, v16

    .line 276
    .local v17, "key":Ljava/lang/String;
    :try_start_3
    const-string v5, "id"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v7, v17

    .end local v17    # "key":Ljava/lang/String;
    .local v7, "key":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    if-ge v3, v6, :cond_1

    .line 278
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 279
    .local v5, "id":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    .line 280
    .end local v8    # "uniqueToken":Ljava/lang/String;
    .local v5, "uniqueToken":Ljava/lang/String;
    move/from16 v17, v3

    move-object v8, v5

    const/4 v6, 0x2

    goto/16 :goto_a

    .line 281
    .end local v5    # "uniqueToken":Ljava/lang/String;
    .restart local v8    # "uniqueToken":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    move/from16 v17, v3

    move-object v8, v5

    const/4 v6, 0x2

    .end local v8    # "uniqueToken":Ljava/lang/String;
    .restart local v5    # "uniqueToken":Ljava/lang/String;
    goto/16 :goto_a

    .line 283
    .end local v5    # "uniqueToken":Ljava/lang/String;
    .restart local v8    # "uniqueToken":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "ipAssignment"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 284
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    move/from16 v17, v3

    move-object v9, v5

    const/4 v6, 0x2

    .end local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v5, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    goto/16 :goto_a

    .line 285
    .end local v5    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    :cond_3
    const-string/jumbo v5, "linkAddress"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 286
    new-instance v5, Landroid/net/LinkAddress;

    .line 287
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v5

    .line 288
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_4

    iget-object v5, v11, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v5, :cond_4

    .line 290
    iput-object v4, v11, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto :goto_4

    .line 292
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-IPv4 or duplicate address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 294
    .end local v4    # "linkAddr":Landroid/net/LinkAddress;
    :goto_4
    move/from16 v17, v3

    const/4 v6, 0x2

    goto/16 :goto_a

    :cond_5
    const-string v4, "gateway"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_b

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "dest":Landroid/net/LinkAddress;
    const/4 v5, 0x0

    .line 297
    .local v5, "gateway":Ljava/net/InetAddress;
    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    .line 299
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    move-object v5, v6

    .line 300
    iget-object v6, v11, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_6

    .line 301
    :try_start_6
    iput-object v5, v11, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v17, v3

    goto/16 :goto_6

    .line 303
    :cond_6
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v17, v3

    .local v17, "version":I
    :try_start_8
    const-string v3, "Duplicate gateway: "

    .end local v17    # "version":I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 340
    .end local v4    # "dest":Landroid/net/LinkAddress;
    .end local v5    # "gateway":Ljava/net/InetAddress;
    :catch_1
    move-exception v0

    move/from16 v17, v3

    goto :goto_7

    .line 306
    .restart local v4    # "dest":Landroid/net/LinkAddress;
    .restart local v5    # "gateway":Ljava/net/InetAddress;
    :cond_7
    move/from16 v17, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    .line 307
    new-instance v3, Landroid/net/LinkAddress;

    .line 308
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 309
    move-object/from16 v18, v4

    .end local v4    # "dest":Landroid/net/LinkAddress;
    .local v18, "dest":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v3

    .end local v18    # "dest":Landroid/net/LinkAddress;
    .restart local v4    # "dest":Landroid/net/LinkAddress;
    goto :goto_5

    .line 306
    :cond_8
    move-object/from16 v18, v4

    .line 311
    :goto_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    .line 312
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    move-object v5, v3

    .line 314
    :cond_9
    new-instance v3, Landroid/net/RouteInfo;

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 315
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v11, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v6, :cond_a

    .line 317
    iput-object v5, v11, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_6

    .line 319
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    .end local v4    # "dest":Landroid/net/LinkAddress;
    .restart local v18    # "dest":Landroid/net/LinkAddress;
    const-string v4, "Non-IPv4 default or duplicate route: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 322
    .end local v3    # "route":Landroid/net/RouteInfo;
    .end local v5    # "gateway":Ljava/net/InetAddress;
    .end local v18    # "dest":Landroid/net/LinkAddress;
    :goto_6
    const/4 v6, 0x2

    goto/16 :goto_a

    .line 340
    :catch_2
    move-exception v0

    :goto_7
    move-object v3, v0

    const/4 v6, 0x2

    goto/16 :goto_d

    .line 322
    :cond_b
    move/from16 v17, v3

    :try_start_9
    const-string v3, "dns"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_c

    .line 323
    :try_start_a
    iget-object v3, v11, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    .line 324
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 323
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v6, 0x2

    goto/16 :goto_a

    .line 325
    :cond_c
    :try_start_b
    const-string/jumbo v3, "proxySettings"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_d

    .line 326
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v10, v3

    const/4 v6, 0x2

    .end local v10    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v3, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    goto/16 :goto_a

    .line 327
    .end local v3    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v10    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    :cond_d
    :try_start_d
    const-string/jumbo v3, "proxyHost"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v3, :cond_e

    .line 328
    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v12, v3

    const/4 v6, 0x2

    .end local v12    # "proxyHost":Ljava/lang/String;
    .local v3, "proxyHost":Ljava/lang/String;
    goto/16 :goto_a

    .line 329
    .end local v3    # "proxyHost":Ljava/lang/String;
    .restart local v12    # "proxyHost":Ljava/lang/String;
    :cond_e
    :try_start_f
    const-string/jumbo v3, "proxyPort"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v3, :cond_f

    .line 330
    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move v14, v3

    const/4 v6, 0x2

    .end local v14    # "proxyPort":I
    .local v3, "proxyPort":I
    goto/16 :goto_a

    .line 331
    .end local v3    # "proxyPort":I
    .restart local v14    # "proxyPort":I
    :cond_f
    :try_start_11
    const-string/jumbo v3, "proxyPac"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v3, :cond_10

    .line 332
    :try_start_12
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object v13, v3

    const/4 v6, 0x2

    .end local v13    # "pacFileUrl":Ljava/lang/String;
    .local v3, "pacFileUrl":Ljava/lang/String;
    goto/16 :goto_a

    .line 333
    .end local v3    # "pacFileUrl":Ljava/lang/String;
    .restart local v13    # "pacFileUrl":Ljava/lang/String;
    :cond_10
    :try_start_13
    const-string v3, "exclusionList"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v3, :cond_11

    .line 334
    :try_start_14
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-object v15, v3

    const/4 v6, 0x2

    .end local v15    # "exclusionList":Ljava/lang/String;
    .local v3, "exclusionList":Ljava/lang/String;
    goto/16 :goto_a

    .line 335
    .end local v3    # "exclusionList":Ljava/lang/String;
    .restart local v15    # "exclusionList":Ljava/lang/String;
    :cond_11
    :try_start_15
    const-string v3, "eos"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v3, :cond_1a

    .line 336
    nop

    .line 345
    if-eqz v8, :cond_19

    .line 346
    :try_start_16
    new-instance v3, Landroid/net/IpConfiguration;

    invoke-direct {v3}, Landroid/net/IpConfiguration;-><init>()V

    .line 347
    .local v3, "config":Landroid/net/IpConfiguration;
    invoke-virtual {v1, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v4, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_14

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13

    const/4 v5, 0x3

    if-eq v4, v5, :cond_12

    .line 362
    const-string v4, "Ignore invalid ip assignment while reading."

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 363
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v4, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_8

    .line 358
    :cond_12
    const-string v4, "BUG: Found UNASSIGNED IP on file, use DHCP"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 359
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v4, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 360
    goto :goto_8

    .line 355
    :cond_13
    iput-object v9, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 356
    goto :goto_8

    .line 351
    :cond_14
    iput-object v11, v3, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 352
    iput-object v9, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 353
    nop

    .line 367
    :goto_8
    sget-object v4, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {v10}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_18

    const/4 v6, 0x2

    if-eq v4, v6, :cond_17

    const/4 v5, 0x3

    if-eq v4, v5, :cond_16

    const/4 v5, 0x4

    if-eq v4, v5, :cond_15

    .line 387
    const-string v4, "Ignore invalid proxy settings while reading"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 388
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_9

    .line 383
    :cond_15
    const-string v4, "BUG: Found UNASSIGNED proxy on file, use NONE"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 384
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 385
    goto :goto_9

    .line 380
    :cond_16
    iput-object v10, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 381
    goto :goto_9

    .line 375
    :cond_17
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v13}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 376
    .local v4, "proxyPacProperties":Landroid/net/ProxyInfo;
    iput-object v10, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 377
    iput-object v4, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 378
    goto :goto_9

    .line 369
    .end local v4    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :cond_18
    const/4 v6, 0x2

    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v12, v14, v15}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    .local v4, "proxyInfo":Landroid/net/ProxyInfo;
    iput-object v10, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 372
    iput-object v4, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;
    :try_end_16
    .catch Ljava/io/EOFException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 373
    goto :goto_9

    .line 345
    .end local v3    # "config":Landroid/net/IpConfiguration;
    .end local v4    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_19
    const/4 v6, 0x2

    .line 394
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "uniqueToken":Ljava/lang/String;
    .end local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v10    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v11    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v12    # "proxyHost":Ljava/lang/String;
    .end local v13    # "pacFileUrl":Ljava/lang/String;
    .end local v14    # "proxyPort":I
    .end local v15    # "exclusionList":Ljava/lang/String;
    :goto_9
    const/4 v7, 0x1

    move-object/from16 v4, p0

    move v5, v6

    move/from16 v3, v17

    const/4 v6, 0x3

    goto/16 :goto_2

    .line 338
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "uniqueToken":Ljava/lang/String;
    .restart local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v10    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v11    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v12    # "proxyHost":Ljava/lang/String;
    .restart local v13    # "pacFileUrl":Ljava/lang/String;
    .restart local v14    # "proxyPort":I
    .restart local v15    # "exclusionList":Ljava/lang/String;
    :cond_1a
    const/4 v6, 0x2

    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore unknown key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "while reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/io/EOFException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 342
    :goto_a
    const/4 v7, 0x1

    move-object/from16 v4, p0

    move v5, v6

    move/from16 v3, v17

    const/4 v6, 0x3

    goto/16 :goto_3

    .line 340
    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    move/from16 v17, v3

    :goto_b
    const/4 v6, 0x2

    :goto_c
    move-object v3, v0

    goto :goto_d

    .end local v7    # "key":Ljava/lang/String;
    .local v17, "key":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v7, v17

    const/4 v6, 0x2

    move/from16 v17, v3

    move-object v3, v0

    .line 341
    .end local v17    # "key":Ljava/lang/String;
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "key":Ljava/lang/String;
    :goto_d
    :try_start_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore invalid address while reading"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/EOFException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 343
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x1

    move-object/from16 v4, p0

    move v5, v6

    move/from16 v3, v17

    const/4 v6, 0x3

    goto/16 :goto_3

    .line 399
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "uniqueToken":Ljava/lang/String;
    .end local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v10    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v11    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v12    # "proxyHost":Ljava/lang/String;
    .end local v13    # "pacFileUrl":Ljava/lang/String;
    .end local v14    # "proxyPort":I
    .end local v15    # "exclusionList":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_f

    .line 396
    :catch_7
    move-exception v0

    move-object v3, v0

    .line 397
    .local v3, "e":Ljava/io/IOException;
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 399
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1c

    .line 401
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    .line 402
    :goto_e
    goto :goto_12

    :catch_8
    move-exception v0

    goto :goto_e

    .line 399
    :goto_f
    if-eqz v2, :cond_1b

    .line 401
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    .line 402
    :goto_10
    goto :goto_11

    :catch_9
    move-exception v0

    goto :goto_10

    .line 404
    :cond_1b
    :goto_11
    throw v3

    .line 395
    :catch_a
    move-exception v0

    .line 399
    if-eqz v2, :cond_1c

    .line 401
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    goto :goto_e

    .line 406
    :cond_1c
    :goto_12
    return-object v1
.end method

.method public static readIpConfigurations(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .line 204
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 211
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v1

    return-object v1

    .line 205
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 209
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v1
.end method

.method private static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z

    move-result v0

    return v0
.end method

.method public static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z
    .locals 8
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/IpConfiguration;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 84
    .local v0, "written":Z
    :try_start_0
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    iget-object v2, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v2, "ipAssignment"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_0

    .line 118
    :try_start_1
    const-string v1, "Ignore invalid ip assignment while writing"

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 116
    :cond_0
    goto/16 :goto_1

    .line 110
    :cond_1
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 111
    iget-object v1, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    iget-object v1, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    iget-object v1, p2, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 89
    .local v1, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v1, :cond_5

    .line 90
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_3

    .line 91
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 92
    .local v2, "ipAddress":Landroid/net/LinkAddress;
    const-string/jumbo v6, "linkAddress"

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    .end local v2    # "ipAddress":Landroid/net/LinkAddress;
    :cond_3
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_4

    .line 97
    const-string v2, "gateway"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 100
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    :cond_4
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 103
    .local v6, "inetAddr":Ljava/net/InetAddress;
    const-string v7, "dns"

    invoke-virtual {p0, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    .end local v6    # "inetAddr":Ljava/net/InetAddress;
    goto :goto_0

    .line 107
    :cond_5
    const/4 v0, 0x1

    .line 108
    nop

    .line 122
    .end local v1    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :goto_1
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v2, "proxySettings"

    if-eq v1, v5, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v4, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 155
    :try_start_2
    const-string v1, "Ignore invalid proxy settings while writing"

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 153
    :cond_6
    goto :goto_2

    .line 147
    :cond_7
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    iget-object v1, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    .line 150
    goto :goto_2

    .line 139
    :cond_8
    iget-object v1, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 140
    .local v1, "proxyPacProperties":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 141
    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v2, "proxyPac"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    .line 145
    goto :goto_2

    .line 124
    .end local v1    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :cond_9
    iget-object v1, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 125
    .local v1, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "exclusionList":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 127
    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "proxyHost"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v2, "proxyPort"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    if-eqz v3, :cond_a

    .line 133
    const-string v2, "exclusionList"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    :cond_a
    const/4 v0, 0x1

    .line 137
    nop

    .line 159
    .end local v1    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v3    # "exclusionList":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_c

    .line 160
    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    if-ge p3, v4, :cond_b

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    .line 164
    :cond_b
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :cond_c
    :goto_3
    goto :goto_4

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure in writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 170
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_4
    const-string v1, "eos"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    return v0
.end method


# virtual methods
.method public writeIpAndProxyConfigurationsToFile(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;

    invoke-direct {v1, p2}, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 189
    return-void
.end method

.method public writeIpConfigurations(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p2, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;

    invoke-direct {v1, p2}, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 199
    return-void
.end method
