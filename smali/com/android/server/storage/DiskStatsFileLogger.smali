.class public Lcom/android/server/storage/DiskStatsFileLogger;
.super Ljava/lang/Object;
.source "DiskStatsFileLogger.java"


# static fields
.field public static final APP_CACHES_KEY:Ljava/lang/String; = "cacheSizes"

.field public static final APP_CACHE_AGG_KEY:Ljava/lang/String; = "cacheSize"

.field public static final APP_DATA_KEY:Ljava/lang/String; = "appDataSizes"

.field public static final APP_DATA_SIZE_AGG_KEY:Ljava/lang/String; = "appDataSize"

.field public static final APP_SIZES_KEY:Ljava/lang/String; = "appSizes"

.field public static final APP_SIZE_AGG_KEY:Ljava/lang/String; = "appSize"

.field public static final AUDIO_KEY:Ljava/lang/String; = "audioSize"

.field public static final DOWNLOADS_KEY:Ljava/lang/String; = "downloadsSize"

.field public static final LAST_QUERY_TIMESTAMP_KEY:Ljava/lang/String; = "queryTime"

.field public static final MISC_KEY:Ljava/lang/String; = "otherSize"

.field public static final PACKAGE_NAMES_KEY:Ljava/lang/String; = "packageNames"

.field public static final PHOTOS_KEY:Ljava/lang/String; = "photosSize"

.field public static final SYSTEM_KEY:Ljava/lang/String; = "systemSize"

.field private static final TAG:Ljava/lang/String; = "DiskStatsLogger"

.field public static final VIDEOS_KEY:Ljava/lang/String; = "videosSize"


# instance fields
.field private mDownloadsSize:J

.field private mPackageStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

.field private mSystemSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V
    .locals 2
    .param p1, "result"    # Lcom/android/server/storage/FileCollector$MeasurementResult;
    .param p2, "downloadsResult"    # Lcom/android/server/storage/FileCollector$MeasurementResult;
    .param p4, "systemSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;J)V"
        }
    .end annotation

    .line 76
    .local p3, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageStats;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 78
    invoke-virtual {p2}, Lcom/android/server/storage/FileCollector$MeasurementResult;->totalAccountedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    .line 79
    iput-wide p4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    .line 80
    iput-object p3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    .line 81
    return-void
.end method

.method private addAppsToJson(Lorg/json/JSONObject;)V
    .locals 26
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 117
    move-object/from16 v0, p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 118
    .local v1, "names":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 119
    .local v2, "appSizeList":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 120
    .local v3, "appDataSizeList":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .local v4, "cacheSizeList":Lorg/json/JSONArray;
    const-wide/16 v5, 0x0

    .line 123
    .local v5, "appSizeSum":J
    const-wide/16 v7, 0x0

    .line 124
    .local v7, "appDataSizeSum":J
    const-wide/16 v9, 0x0

    .line 125
    .local v9, "cacheSizeSum":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v11

    .line 126
    .local v11, "isExternal":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/storage/DiskStatsFileLogger;->filterOnlyPrimaryUser()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 127
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageStats;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageStats;

    .line 128
    .local v14, "stat":Landroid/content/pm/PackageStats;
    move-object v15, v12

    move-object/from16 v16, v13

    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageStats;>;"
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageStats;>;"
    iget-wide v12, v14, Landroid/content/pm/PackageStats;->codeSize:J

    .line 129
    .local v12, "appSize":J
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "appDataSizeList":Lorg/json/JSONArray;
    .end local v4    # "cacheSizeList":Lorg/json/JSONArray;
    .local v17, "appDataSizeList":Lorg/json/JSONArray;
    .local v18, "cacheSizeList":Lorg/json/JSONArray;
    iget-wide v3, v14, Landroid/content/pm/PackageStats;->dataSize:J

    .line 130
    .local v3, "appDataSize":J
    move-object/from16 v19, v1

    .end local v1    # "names":Lorg/json/JSONArray;
    .local v19, "names":Lorg/json/JSONArray;
    iget-wide v0, v14, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 131
    .local v0, "cacheSize":J
    if-eqz v11, :cond_0

    .line 132
    move-wide/from16 v20, v9

    .end local v9    # "cacheSizeSum":J
    .local v20, "cacheSizeSum":J
    iget-wide v9, v14, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v12, v9

    .line 133
    iget-wide v9, v14, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v3, v9

    .line 134
    iget-wide v9, v14, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v9

    goto :goto_1

    .line 131
    .end local v20    # "cacheSizeSum":J
    .restart local v9    # "cacheSizeSum":J
    :cond_0
    move-wide/from16 v20, v9

    .line 136
    .end local v9    # "cacheSizeSum":J
    .restart local v20    # "cacheSizeSum":J
    :goto_1
    add-long/2addr v5, v12

    .line 137
    add-long/2addr v7, v3

    .line 138
    add-long v9, v20, v0

    .line 140
    .end local v20    # "cacheSizeSum":J
    .restart local v9    # "cacheSizeSum":J
    move-wide/from16 v22, v5

    .end local v5    # "appSizeSum":J
    .local v22, "appSizeSum":J
    iget-object v5, v14, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v6, v19

    .end local v19    # "names":Lorg/json/JSONArray;
    .local v6, "names":Lorg/json/JSONArray;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 142
    move-object/from16 v5, v17

    .end local v17    # "appDataSizeList":Lorg/json/JSONArray;
    .local v5, "appDataSizeList":Lorg/json/JSONArray;
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 143
    move-wide/from16 v24, v3

    move-object/from16 v3, v18

    .end local v18    # "cacheSizeList":Lorg/json/JSONArray;
    .local v3, "cacheSizeList":Lorg/json/JSONArray;
    .local v24, "appDataSize":J
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 144
    .end local v0    # "cacheSize":J
    .end local v12    # "appSize":J
    .end local v14    # "stat":Landroid/content/pm/PackageStats;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageStats;>;"
    .end local v24    # "appDataSize":J
    move-object/from16 v0, p1

    move-object v4, v3

    move-object v3, v5

    move-object v1, v6

    move-object v12, v15

    move-wide/from16 v5, v22

    goto :goto_0

    .line 145
    .end local v6    # "names":Lorg/json/JSONArray;
    .end local v22    # "appSizeSum":J
    .restart local v1    # "names":Lorg/json/JSONArray;
    .local v3, "appDataSizeList":Lorg/json/JSONArray;
    .restart local v4    # "cacheSizeList":Lorg/json/JSONArray;
    .local v5, "appSizeSum":J
    :cond_1
    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide/from16 v20, v9

    .end local v4    # "cacheSizeList":Lorg/json/JSONArray;
    .end local v9    # "cacheSizeSum":J
    .local v0, "names":Lorg/json/JSONArray;
    .local v1, "appDataSizeList":Lorg/json/JSONArray;
    .local v3, "cacheSizeList":Lorg/json/JSONArray;
    .restart local v20    # "cacheSizeSum":J
    const-string/jumbo v4, "packageNames"

    move-object/from16 v9, p1

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v4, "appSizes"

    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v4, "cacheSizes"

    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v4, "appDataSizes"

    invoke-virtual {v9, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v4, "appSize"

    invoke-virtual {v9, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 150
    const-string v4, "cacheSize"

    move-wide/from16 v12, v20

    .end local v20    # "cacheSizeSum":J
    .local v12, "cacheSizeSum":J
    invoke-virtual {v9, v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string v4, "appDataSize"

    invoke-virtual {v9, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    return-void
.end method

.method private filterOnlyPrimaryUser()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 161
    .local v0, "packageMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageStats;>;"
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageStats;

    .line 162
    .local v2, "stat":Landroid/content/pm/PackageStats;
    iget v3, v2, Landroid/content/pm/PackageStats;->userHandle:I

    if-eqz v3, :cond_0

    .line 163
    goto :goto_0

    .line 166
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageStats;

    .line 167
    .local v3, "existingStats":Landroid/content/pm/PackageStats;
    if-eqz v3, :cond_1

    .line 168
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 169
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->codeSize:J

    .line 170
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->dataSize:J

    .line 171
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 172
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 173
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    goto :goto_1

    .line 175
    :cond_1
    iget-object v4, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    new-instance v5, Landroid/content/pm/PackageStats;

    invoke-direct {v5, v2}, Landroid/content/pm/PackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .end local v2    # "stat":Landroid/content/pm/PackageStats;
    .end local v3    # "existingStats":Landroid/content/pm/PackageStats;
    :goto_1
    goto :goto_0

    .line 178
    :cond_2
    return-object v0
.end method

.method private getJsonRepresentation()Lorg/json/JSONObject;
    .locals 4

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "queryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v1, "photosSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v1, "videosSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    const-string v1, "audioSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    const-string v1, "downloadsSize"

    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v1, "systemSize"

    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v1, "otherSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    invoke-direct {p0, v0}, Lcom/android/server/storage/DiskStatsFileLogger;->addAppsToJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 113
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DiskStatsLogger"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public dumpToFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 90
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/storage/DiskStatsFileLogger;->getJsonRepresentation()Lorg/json/JSONObject;

    move-result-object v1

    .line 91
    .local v1, "representation":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 95
    return-void
.end method
