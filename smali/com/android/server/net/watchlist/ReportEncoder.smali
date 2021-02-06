.class Lcom/android/server/net/watchlist/ReportEncoder;
.super Ljava/lang/Object;
.source "ReportEncoder.java"


# static fields
.field private static final REPORT_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReportEncoder"

.field private static final WATCHLIST_HASH_SIZE:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeWatchlistReport(Lcom/android/server/net/watchlist/WatchlistConfig;[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)[B
    .locals 2
    .param p0, "config"    # Lcom/android/server/net/watchlist/WatchlistConfig;
    .param p1, "userSecret"    # [B
    .param p3, "aggregatedResult"    # Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistConfig;",
            "[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")[B"
        }
    .end annotation

    .line 55
    .local p2, "appDigestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 56
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    .line 55
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/PrivacyUtils;->createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;

    move-result-object v0

    .line 57
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {p0, v0}, Lcom/android/server/net/watchlist/ReportEncoder;->serializeReport(Lcom/android/server/net/watchlist/WatchlistConfig;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1
.end method

.method static serializeReport(Lcom/android/server/net/watchlist/WatchlistConfig;Ljava/util/Map;)[B
    .locals 12
    .param p0, "config"    # Lcom/android/server/net/watchlist/WatchlistConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)[B"
        }
    .end annotation

    .line 72
    .local p1, "encodedReportMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object v0

    .line 73
    .local v0, "watchlistHash":[B
    const/4 v1, 0x0

    const-string v2, "ReportEncoder"

    if-nez v0, :cond_0

    .line 74
    const-string v3, "No watchlist hash"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v1

    .line 77
    :cond_0
    array-length v3, v0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 78
    const-string v3, "Unexpected hash length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v1

    .line 81
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    .local v1, "reportOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10500000001L

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 86
    const-wide v3, 0x10900000002L

    .line 87
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 90
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 91
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 92
    .local v5, "key":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 93
    .local v6, "digest":[B
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 94
    .local v7, "encodedResult":Z
    const-wide v8, 0x20b00000003L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 95
    .local v8, "token":J
    const-wide v10, 0x10900000001L

    invoke-virtual {v2, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 96
    const-wide v10, 0x10800000002L

    invoke-virtual {v2, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 97
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 98
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "digest":[B
    .end local v7    # "encodedResult":Z
    .end local v8    # "token":J
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
