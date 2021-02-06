.class Lcom/android/server/pm/CompilerStats;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "CompilerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CompilerStats$PackageStats;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPILER_STATS_VERSION:I = 0x1

.field private static final COMPILER_STATS_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__COMPILER_STATS__"


# instance fields
.field private final packageStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/CompilerStats$PackageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 124
    const-string/jumbo v0, "package-cstats.list"

    const-string v1, "CompilerStats_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    .line 126
    return-void
.end method


# virtual methods
.method public createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 142
    :try_start_0
    new-instance v1, Lcom/android/server/pm/CompilerStats$PackageStats;

    invoke-direct {v1, p1}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "newStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v0

    return-object v1

    .line 145
    .end local v1    # "newStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deletePackageStats(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CompilerStats$PackageStats;

    .line 151
    .local v1, "existingStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-eqz v1, :cond_0

    .line 152
    monitor-exit v0

    return-object v1

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 156
    .end local v1    # "existingStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CompilerStats$PackageStats;

    monitor-exit v0

    return-object v1

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maybeWriteAsync()Z
    .locals 1

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->maybeWriteAsync(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method read()V
    .locals 1

    .line 280
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->read(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public read(Ljava/io/Reader;)Z
    .locals 10
    .param p1, "r"    # Ljava/io/Reader;

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    .local v1, "in":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "versionLine":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 214
    const-string v3, "PACKAGE_MANAGER__COMPILER_STATS__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    const-string v3, "PACKAGE_MANAGER__COMPILER_STATS__"

    .line 218
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 219
    .local v3, "version":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 227
    .end local v3    # "version":I
    new-instance v3, Lcom/android/server/pm/CompilerStats$PackageStats;

    const-string v5, "fake package"

    invoke-direct {v3, v5}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, "currentPackage":Lcom/android/server/pm/CompilerStats$PackageStats;
    const/4 v5, 0x0

    .line 230
    .local v5, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_2

    .line 231
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 233
    .local v6, "colonIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-eq v6, v4, :cond_0

    .line 236
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "codePath":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 238
    .local v8, "time":J
    invoke-virtual {v3, v7, v8, v9}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    .line 239
    .end local v6    # "colonIndex":I
    .end local v7    # "codePath":Ljava/lang/String;
    .end local v8    # "time":J
    goto :goto_0

    .line 234
    .restart local v6    # "colonIndex":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .end local p1    # "r":Ljava/io/Reader;
    throw v4

    .line 240
    .end local v6    # "colonIndex":I
    .restart local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .restart local p1    # "r":Ljava/io/Reader;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    goto :goto_0

    .line 246
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "versionLine":Ljava/lang/String;
    .end local v3    # "currentPackage":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    nop

    .line 248
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 221
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "versionLine":Ljava/lang/String;
    .local v3, "version":I
    :cond_3
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .end local p1    # "r":Ljava/io/Reader;
    throw v4

    .line 215
    .end local v3    # "version":I
    .restart local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .restart local p1    # "r":Ljava/io/Reader;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid version line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .end local p1    # "r":Ljava/io/Reader;
    throw v3

    .line 212
    .restart local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .restart local p1    # "r":Ljava/io/Reader;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No version line found."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .end local p1    # "r":Ljava/io/Reader;
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "versionLine":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .restart local p1    # "r":Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "PackageManager"

    const-string v3, "Error parsing compiler stats"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected readInternal(Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Void;

    .line 285
    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 286
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 288
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/server/pm/CompilerStats;->read(Ljava/io/Reader;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    throw v2

    .line 290
    :catch_0
    move-exception v2

    .line 292
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    nop

    .line 294
    return-void
.end method

.method public setPackageStats(Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stats"    # Lcom/android/server/pm/CompilerStats$PackageStats;

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(Ljava/io/Writer;)V
    .locals 9
    .param p1, "out"    # Ljava/io/Writer;

    .line 178
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 180
    .local v0, "fpw":Lcom/android/internal/util/FastPrintWriter;
    const-string v1, "PACKAGE_MANAGER__COMPILER_STATS__"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 183
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CompilerStats$PackageStats;

    .line 185
    .local v3, "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->access$000(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->access$000(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    invoke-virtual {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->access$000(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 190
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 191
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_1

    .line 193
    :cond_0
    monitor-exit v4

    .line 194
    .end local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    goto :goto_0

    .line 193
    .restart local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "fpw":Lcom/android/internal/util/FastPrintWriter;
    .end local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .end local p1    # "out":Ljava/io/Writer;
    :try_start_2
    throw v2

    .line 195
    .end local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v0    # "fpw":Lcom/android/internal/util/FastPrintWriter;
    .restart local p0    # "this":Lcom/android/server/pm/CompilerStats;
    .restart local p1    # "out":Ljava/io/Writer;
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 198
    return-void

    .line 195
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Void;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 263
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 266
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 267
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 268
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/CompilerStats;->write(Ljava/io/Writer;)V

    .line 269
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 270
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 275
    :cond_0
    const-string v3, "PackageManager"

    const-string v4, "Failed to write compiler stats"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method writeNow()V
    .locals 1

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->writeNow(Ljava/lang/Object;)V

    .line 254
    return-void
.end method
