.class public Lcom/android/server/pm/parsing/PackageCacher;
.super Ljava/lang/Object;
.source "PackageCacher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageCacher"

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    .line 54
    return-void
.end method

.method public static fromCacheEntryStatic([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 4
    .param p0, "bytes"    # [B

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 76
    .local v0, "p":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    .line 80
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    .line 83
    new-instance v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    invoke-direct {v2, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;)V

    .line 85
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    sget-object v3, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 89
    return-object v2
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 2
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "cacheFile"    # Ljava/io/File;

    .line 123
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 124
    .local v1, "pkg":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 125
    .local v2, "cache":Landroid/system/StructStat;
    iget-wide v3, v1, Landroid/system/StructStat;->st_mtime:J

    iget-wide v5, v2, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 126
    .end local v1    # "pkg":Landroid/system/StructStat;
    .end local v2    # "cache":Landroid/system/StructStat;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "ee":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    if-eq v2, v3, :cond_1

    .line 138
    const-string v2, "Error while stating package cache : "

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_1
    return v0
.end method

.method static synthetic lambda$cleanCachedResult$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toCacheEntryStatic(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, "p":Landroid/os/Parcel;
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    .line 104
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 109
    .local v2, "serialized":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    return-object v2
.end method


# virtual methods
.method public cacheResult(Ljava/io/File;ILcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .locals 7
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "parsed"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 176
    const-string v0, "PackageCacher"

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "cacheKey":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete cache file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntry(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 187
    .local v3, "cacheEntry":[B
    if-nez v3, :cond_1

    .line 188
    return-void

    .line 191
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 192
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 196
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 191
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "cacheEntry":[B
    .end local p0    # "this":Lcom/android/server/pm/parsing/PackageCacher;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "flags":I
    .end local p3    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :goto_0
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 193
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "cacheKey":Ljava/lang/String;
    .restart local v2    # "cacheFile":Ljava/io/File;
    .restart local v3    # "cacheEntry":[B
    .restart local p0    # "this":Lcom/android/server/pm/parsing/PackageCacher;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "flags":I
    .restart local p3    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :catch_0
    move-exception v4

    .line 194
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_6
    const-string v5, "Error writing cache entry."

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 199
    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "cacheEntry":[B
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_1
    goto :goto_2

    .line 197
    :catchall_2
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Error saving package cache."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public cleanCachedResult(Ljava/io/File;)V
    .locals 7
    .param p1, "packageFile"    # Ljava/io/File;

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/pm/parsing/-$$Lambda$PackageCacher$m5SLKIgIcu0a0YKFji5p6LENHas;

    invoke-direct {v2, v0}, Lcom/android/server/pm/parsing/-$$Lambda$PackageCacher$m5SLKIgIcu0a0YKFji5p6LENHas;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 209
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 210
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to clean cache file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageCacher"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method

.method protected fromCacheEntry([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1
    .param p1, "bytes"    # [B

    .line 69
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntryStatic([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public getCachedResult(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 6
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v1, "cacheFile":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/android/server/pm/parsing/PackageCacher;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    return-object v2

    .line 159
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 160
    .local v3, "bytes":[B
    invoke-virtual {p0, v3}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntry([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 161
    .end local v3    # "bytes":[B
    :catchall_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "PackageCacher"

    const-string v5, "Error reading package cache: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 167
    return-object v2
.end method

.method protected toCacheEntry(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 94
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntryStatic(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object v0

    return-object v0
.end method
