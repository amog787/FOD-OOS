.class Lcom/android/server/pm/dex/PackageDynamicCodeLoading;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageDynamicCodeLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;,
        Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
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
.field private static final FIELD_SEPARATOR:C = ':'

.field static final FILE_TYPE_DEX:I = 0x44

.field static final FILE_TYPE_NATIVE:I = 0x4e

.field private static final FILE_VERSION_HEADER:Ljava/lang/String; = "DCL1"

.field static final MAX_FILES_PER_OWNER:I = 0x64

.field private static final PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PACKAGE_PREFIX:Ljava/lang/String; = "P:"

.field private static final PACKAGE_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "PackageDynamicCodeLoading"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    nop

    .line 82
    const-string v0, "([A-Z]):([0-9]+):([^:]*):(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 94
    const-string/jumbo v0, "package-dcl.list"

    const-string v1, "PackageDynamicCodeLoading_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    .line 95
    return-void
.end method

.method static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 435
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 436
    return-object p0

    .line 439
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 440
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 443
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 444
    .local v5, "c":C
    if-eq v5, v3, :cond_3

    if-eq v5, v2, :cond_2

    if-eq v5, v0, :cond_1

    .line 455
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 446
    :cond_1
    const-string v6, "\\\\"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    goto :goto_1

    .line 452
    :cond_2
    const-string v6, "\\r"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    goto :goto_1

    .line 449
    :cond_3
    const-string v6, "\\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    nop

    .line 440
    .end local v5    # "c":C
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 459
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isValidFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .line 127
    const/16 v0, 0x44

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_0

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

.method private static read(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    .local p1, "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 374
    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "versionLine":Ljava/lang/String;
    const-string v2, "DCL1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 379
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "line":Ljava/lang/String;
    const-string v3, "P:"

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 384
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 385
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    .line 389
    .local v5, "packageInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 391
    goto :goto_2

    .line 393
    :cond_2
    invoke-static {v2, v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->readFileInfo(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V

    goto :goto_1

    .line 396
    :cond_3
    :goto_2
    iget-object v6, v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 397
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :cond_4
    goto :goto_0

    .line 400
    :cond_5
    return-void

    .line 376
    .end local v2    # "line":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect version line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static readFileInfo(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V
    .locals 8
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "output"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    :try_start_0
    sget-object v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 405
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Malformed line: "

    if-eqz v1, :cond_2

    .line 409
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 410
    .local v1, "type":C
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 411
    .local v3, "user":I
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "packages":[Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "path":Ljava/lang/String;
    array-length v6, v4

    if-eqz v6, :cond_1

    .line 417
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->isValidFileType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    new-instance v6, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v3, v4, v7}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(CI[Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    nop

    .line 427
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "type":C
    .end local v3    # "user":I
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    return-void

    .line 418
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    .restart local v1    # "type":C
    .restart local v3    # "user":I
    .restart local v4    # "packages":[Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown file type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "line":Ljava/lang/String;
    .end local p1    # "output":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    throw v2

    .line 415
    .restart local p0    # "line":Ljava/lang/String;
    .restart local p1    # "output":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :cond_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "line":Ljava/lang/String;
    .end local p1    # "output":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    throw v6

    .line 406
    .end local v1    # "type":C
    .end local v3    # "user":I
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .restart local p0    # "line":Ljava/lang/String;
    .restart local p1    # "output":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "line":Ljava/lang/String;
    .end local p1    # "output":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .restart local p0    # "line":Ljava/lang/String;
    .restart local p1    # "output":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "escaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "start":I
    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 472
    .local v2, "finish":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 473
    return-object p0

    .line 476
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 478
    .local v4, "result":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5

    .line 482
    invoke-virtual {v4, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v1, :cond_4

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x72

    if-ne v5, v6, :cond_2

    .line 488
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    goto :goto_0

    .line 494
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad escape in: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_3
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    goto :goto_0

    .line 485
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    nop

    .line 497
    :goto_0
    add-int/lit8 v0, v2, 0x2

    .line 498
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 499
    if-ne v2, v3, :cond_1

    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 501
    nop

    .line 504
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 480
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected \\ in: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static write(Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 12
    .param p0, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    .local p1, "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 304
    .local v0, "writer":Ljava/io/PrintWriter;
    const-string v1, "DCL1"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 306
    .local v2, "packageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    const-string v3, "P:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    iget-object v3, v3, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    .line 310
    .local v3, "mFileUsageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 311
    .local v5, "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 312
    .local v6, "path":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 314
    .local v7, "dynamicCodeFile":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    iget-char v8, v7, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 315
    const/16 v8, 0x3a

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 316
    iget v9, v7, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 317
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 319
    const-string v9, ""

    .line 320
    .local v9, "prefix":Ljava/lang/String;
    iget-object v10, v7, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 321
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    const-string v9, ","

    .line 324
    .end local v11    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 326
    :cond_0
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 327
    invoke-static {v6}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    .end local v5    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "dynamicCodeFile":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .end local v9    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 329
    .end local v2    # "packageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    .end local v3    # "mFileUsageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    :cond_1
    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 332
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v1

    if-nez v1, :cond_3

    .line 335
    return-void

    .line 333
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Writer failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

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

.method getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 149
    .local v1, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    move-object v2, v3

    :goto_0
    monitor-exit v0

    return-object v2

    .line 150
    .end local v1    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maybeWriteAsync()V
    .locals 1

    .line 244
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method read()V
    .locals 1

    .line 341
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method read(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v0, "newPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    invoke-static {p1, v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read(Ljava/io/InputStream;Ljava/util/Map;)V

    .line 365
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    .line 367
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected final readInternal(Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Void;

    .line 346
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 348
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 350
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 351
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 357
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "PackageDynamicCodeLoading"

    const-string v4, "Failed to parse dynamic usage for secondary code files."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 358
    throw v2

    .line 352
    :catch_1
    move-exception v2

    .line 357
    :goto_1
    nop

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 358
    nop

    .line 359
    return-void
.end method

.method record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 4
    .param p1, "owningPackageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileType"    # I
    .param p4, "ownerUserId"    # I
    .param p5, "loadingPackageName"    # Ljava/lang/String;

    .line 113
    invoke-static {p3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->isValidFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 118
    .local v1, "packageInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    if-nez v1, :cond_0

    .line 119
    new-instance v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    move-object v1, v2

    .line 120
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    int-to-char v2, p3

    invoke-static {v1, p2, v2, p4, p5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->access$100(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;CILjava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 123
    .end local v1    # "packageInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad file type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 201
    .local v1, "packageDynamicCode":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 202
    monitor-exit v0

    return v2

    .line 204
    :cond_0
    invoke-static {v1, p2, p3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->access$400(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    iget-object v2, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 210
    :cond_2
    monitor-exit v0

    return v2

    .line 212
    .end local v1    # "packageDynamicCode":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUserPackage(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 179
    .local v1, "packageDynamicCode":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 180
    monitor-exit v0

    return v2

    .line 182
    :cond_0
    invoke-static {v1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->access$300(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    iget-object v2, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_1
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 188
    :cond_2
    monitor-exit v0

    return v2

    .line 190
    .end local v1    # "packageDynamicCode":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method syncData(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 222
    .local p1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 224
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 227
    .local v3, "packageUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v3, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 230
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 231
    .local v4, "packageDynamicCode":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    invoke-static {v4, p1, v3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->access$500(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/util/Map;Ljava/util/Set;)V

    .line 232
    iget-object v5, v4, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 236
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    .end local v3    # "packageUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "packageDynamicCode":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    :cond_1
    :goto_1
    goto :goto_0

    .line 237
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;>;"
    :cond_2
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

.method write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 274
    .local v1, "copiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 275
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    new-instance v4, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    .line 276
    .local v4, "copiedValue":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    .end local v4    # "copiedValue":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    goto :goto_0

    .line 278
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-static {p1, v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->write(Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 281
    return-void

    .line 278
    .end local v1    # "copiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected final writeInternal(Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Void;

    .line 256
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 257
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 259
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->write(Ljava/io/OutputStream;)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 264
    const-string v3, "PackageDynamicCodeLoading"

    const-string v4, "Failed to write dynamic usage for secondary code files."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method writeNow()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->writeNow(Ljava/lang/Object;)V

    .line 252
    return-void
.end method
