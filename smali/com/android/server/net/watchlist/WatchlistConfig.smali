.class Lcom/android/server/net/watchlist/WatchlistConfig;
.super Ljava/lang/Object;
.source "WatchlistConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;,
        Lcom/android/server/net/watchlist/WatchlistConfig$XmlTags;
    }
.end annotation


# static fields
.field private static final NETWORK_WATCHLIST_DB_FOR_TEST_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist_for_test.xml"

.field private static final NETWORK_WATCHLIST_DB_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist.xml"

.field private static final TAG:Ljava/lang/String; = "WatchlistConfig"

.field private static final sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;


# instance fields
.field private volatile mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field private volatile mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field private mIsSecureConfig:Z

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-direct {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>()V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 94
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>(Ljava/io/File;)V

    .line 95
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "xmlFile"    # Ljava/io/File;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 99
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 100
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 101
    return-void
.end method

.method private getCrc32(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 203
    .local v0, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 204
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method public static getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-object v0
.end method

.method private getSha256(Ljava/lang/String;)[B
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 211
    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    nop

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 217
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 212
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 155
    .local p3, "hashList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v0, :cond_0

    .line 158
    const-string v2, "hash"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 160
    .local v4, "hash":[B
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v4    # "hash":[B
    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {p1, v3, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method


# virtual methods
.method public containsDomain(Ljava/lang/String;)Z
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 168
    .local v0, "domainDigests":Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 170
    return v1

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)I

    move-result v2

    .line 174
    .local v2, "crc32":I
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulCrcs;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    return v1

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object v1

    .line 179
    .local v1, "sha256":[B
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v1}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v3

    return v3
.end method

.method public containsIp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 184
    .local v0, "ipDigests":Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    return v1

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)I

    move-result v2

    .line 190
    .local v2, "crc32":I
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulCrcs;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 191
    return v1

    .line 194
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object v1

    .line 195
    .local v1, "sha256":[B
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v1}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v3

    return v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object v0

    .line 273
    .local v0, "hash":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchlist config hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    const-string v1, "Domain CRC32 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulCrcs;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 279
    :cond_1
    const-string v1, "Domain SHA256 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 283
    :cond_2
    const-string v1, "Ip CRC32 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_3

    .line 286
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulCrcs;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 288
    :cond_3
    const-string v1, "Ip SHA256 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_4

    .line 290
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 292
    :cond_4
    return-void
.end method

.method public getWatchlistConfigHash()[B
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 231
    return-object v1

    .line 234
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WatchlistConfig"

    const-string v3, "Unable to get watchlist config hash"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public isConfigSecure()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    return v0
.end method

.method public reloadConfig()V
    .locals 15

    .line 107
    const-string/jumbo v0, "watchlist-config"

    const-string v1, "WatchlistConfig"

    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v3, "crc32DomainList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, "sha256DomainList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v5, "crc32IpList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v6, "sha256IpList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 118
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 120
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-interface {v7, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v9, :cond_6

    .line 122
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, "tagName":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x1

    sparse-switch v13, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v13, "crc32-ip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v12, v14

    goto :goto_1

    :sswitch_1
    const-string/jumbo v13, "sha256-ip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v12, v11

    goto :goto_1

    :sswitch_2
    const-string/jumbo v13, "sha256-domain"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v12, v9

    goto :goto_1

    :sswitch_3
    const-string v13, "crc32-domain"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_5

    if-eq v12, v14, :cond_4

    if-eq v12, v9, :cond_3

    if-eq v12, v11, :cond_2

    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 134
    :cond_2
    invoke-direct {p0, v7, v10, v6}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 135
    goto :goto_2

    .line 131
    :cond_3
    invoke-direct {p0, v7, v10, v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 132
    goto :goto_2

    .line 128
    :cond_4
    invoke-direct {p0, v7, v10, v5}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 129
    goto :goto_2

    .line 125
    :cond_5
    invoke-direct {p0, v7, v10, v3}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 126
    nop

    .line 140
    .end local v10    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 141
    :cond_6
    invoke-interface {v7, v11, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v8, Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-direct {v8, v3}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v9, v4}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v8, v9}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 144
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v8, Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-direct {v8, v5}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v9, v6}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v8, v9}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 146
    const-string v0, "Reload watchlist done"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v3    # "crc32DomainList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "sha256DomainList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "crc32IpList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v6    # "sha256IpList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    .end local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 111
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/net/watchlist/WatchlistConfig;
    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 147
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/net/watchlist/WatchlistConfig;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed parsing xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f059362 -> :sswitch_3
        -0xe260d6 -> :sswitch_2
        0x31cafa8d -> :sswitch_1
        0x6670a201 -> :sswitch_0
    .end sparse-switch
.end method

.method public removeTestModeConfig()V
    .locals 3

    .line 262
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WatchlistConfig"

    const-string v2, "Unable to delete test config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setTestMode(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "testConfigInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const-string v0, "WatchlistConfig"

    const-string v1, "Setting watchlist testing config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 256
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 257
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 258
    return-void
.end method
