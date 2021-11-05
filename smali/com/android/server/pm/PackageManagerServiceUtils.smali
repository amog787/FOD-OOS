.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# static fields
.field private static final FSVERITY_DISABLED:I = 0x0

.field private static final FSVERITY_ENABLED:I = 0x2

.field private static final FSVERITY_LEGACY:I = 0x1

.field public static final REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEVEN_DAYS_IN_MILLISECONDS:J = 0x240c8400L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    sget-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4;

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .param p4, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 160
    .local p0, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageSetting;>;"
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .local p2, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .local p3, "sortTemp":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 161
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 167
    invoke-interface {p2, p3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 169
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 170
    .restart local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    nop

    .line 173
    invoke-virtual {p4, v1}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibraries(Lcom/android/server/pm/PackageSetting;)Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "deps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 176
    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-interface {p2, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 179
    .end local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "deps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    goto :goto_1

    .line 181
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 182
    return-void
.end method

.method public static buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "baseFilename"    # Ljava/lang/String;
    .param p1, "splitFilenameArray"    # [Ljava/lang/String;

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1021
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "baseFilePath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v3

    .line 1024
    .local v3, "baseRootHash":[B
    const-string v4, "0"

    if-nez v3, :cond_0

    .line 1025
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1027
    :cond_0
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    :goto_0
    if-eqz p1, :cond_4

    array-length v5, p1

    if-nez v5, :cond_1

    goto :goto_3

    .line 1033
    :cond_1
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_3

    .line 1034
    aget-object v6, p1, v5

    .line 1035
    .local v6, "splitFilename":Ljava/lang/String;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, "splitFilePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v8

    .line 1038
    .local v8, "splitRootHash":[B
    const-string v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    if-nez v8, :cond_2

    .line 1040
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1042
    :cond_2
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .end local v6    # "splitFilename":Ljava/lang/String;
    .end local v7    # "splitFilePath":Ljava/lang/String;
    .end local v8    # "splitRootHash":[B
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1045
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1030
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "abiOverride"    # Ljava/lang/String;

    .line 882
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 885
    .local v0, "packageFile":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 886
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v1, p1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 887
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to calculate installed size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static checkISA(Ljava/lang/String;)Z
    .locals 6
    .param p0, "isa"    # Ljava/lang/String;

    .line 327
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 328
    .local v4, "abi":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    const/4 v0, 0x1

    return v0

    .line 327
    .end local v4    # "abi":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_1
    return v2
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 459
    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 460
    if-nez p1, :cond_0

    .line 461
    goto :goto_0

    .line 462
    :cond_0
    const/4 v0, -0x1

    .line 460
    :goto_0
    return v0

    .line 465
    :cond_1
    if-nez p1, :cond_2

    .line 466
    const/4 v0, -0x2

    return v0

    .line 469
    :cond_2
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_3

    .line 470
    return v3

    .line 474
    :cond_3
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_5

    .line 475
    aget-object v0, p0, v2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    move v3, v2

    goto :goto_1

    .line 477
    :cond_4
    nop

    .line 475
    :goto_1
    return v3

    .line 480
    :cond_5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 481
    .local v0, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_6

    aget-object v5, p0, v4

    .line 482
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 484
    :cond_6
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 485
    .local v1, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_7

    aget-object v6, p1, v5

    .line 486
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 489
    :cond_7
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 490
    return v2

    .line 492
    :cond_8
    return v3
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "codePath"    # Ljava/lang/String;

    .line 823
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 824
    .local v0, "compressedFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 969
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v2, v3

    const/16 v3, 0x1a4

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 971
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 972
    const/4 v2, 0x0

    .line 974
    .local v2, "source":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 975
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 978
    nop

    .line 979
    return-void

    .line 977
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 978
    throw v3

    .line 964
    .end local v0    # "targetFile":Ljava/io/File;
    .end local v1    # "targetFd":Ljava/io/FileDescriptor;
    .end local v2    # "source":Ljava/io/FileInputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyPackage(Ljava/lang/String;Ljava/io/File;)I
    .locals 6
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/io/File;

    .line 940
    if-nez p0, :cond_0

    .line 941
    const/4 v0, -0x3

    return v0

    .line 945
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    .local v0, "packageFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 947
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v2, v1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    const-string v3, "base.apk"

    invoke-static {v2, p1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 948
    iget-object v2, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 949
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 950
    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "split_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 954
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 955
    .end local v0    # "packageFile":Ljava/io/File;
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy package at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v1, -0x4

    return v1
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 759
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v1, ", dst: "

    if-eqz v0, :cond_0

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompress file; src: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 760
    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .local v0, "fileIn":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 768
    .local v2, "fileOut":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v0, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 769
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 770
    const/4 v3, 0x1

    .line 771
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 770
    return v3

    .line 764
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileIn":Ljava/io/InputStream;
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "dstFile":Ljava/io/File;
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "fileOut":Ljava/io/OutputStream;
    .restart local v0    # "fileIn":Ljava/io/InputStream;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "dstFile":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 771
    .end local v0    # "fileIn":Ljava/io/InputStream;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decompress file; src: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 776
    .end local v0    # "e":Ljava/io/IOException;
    const/16 v0, -0x6e

    return v0
.end method

.method public static deriveAbiOverride(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    .locals 2
    .param p0, "abiOverride"    # Ljava/lang/String;
    .param p1, "settings"    # Lcom/android/server/pm/PackageSetting;

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "cpuAbiOverride":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/4 v0, 0x0

    goto :goto_0

    .line 437
    :cond_0
    if-eqz p0, :cond_1

    .line 438
    move-object v0, p0

    goto :goto_0

    .line 439
    :cond_1
    if-eqz p1, :cond_2

    .line 440
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    .line 442
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 359
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v0, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 361
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1

    .line 362
    const-string v2, "ignored: updated version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    const-wide v2, 0x20900000007L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 366
    .end local v0    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 359
    .restart local v0    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 365
    .end local v0    # "in":Ljava/io/BufferedReader;
    .restart local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catch_0
    move-exception v0

    .line 367
    :goto_2
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 370
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .local v0, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 372
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_2

    .line 373
    const-string v2, "ignored: updated version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    .end local v1    # "line":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 380
    .end local v0    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 370
    .restart local v0    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pw":Ljava/io/PrintWriter;
    .end local p1    # "msg":Ljava/lang/String;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 379
    .end local v0    # "in":Ljava/io/BufferedReader;
    .restart local p0    # "pw":Ljava/io/PrintWriter;
    .restart local p1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 381
    :goto_2
    return-void
.end method

.method public static enforceShellRestriction(Landroid/os/UserManagerInternal;Ljava/lang/String;II)V
    .locals 3
    .param p0, "userManager"    # Landroid/os/UserManagerInternal;
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userHandle"    # I

    .line 405
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_2

    .line 406
    if-ltz p3, :cond_1

    .line 407
    invoke-virtual {p0, p1, p3}, Landroid/os/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1
    :goto_0
    if-gez p3, :cond_2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to check shell permission for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 413
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    return-void
.end method

.method public static enforceSystemOrPhoneCaller(Ljava/lang/String;I)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "callingUid"    # I

    .line 423
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1
    :goto_0
    return-void
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 9
    .param p0, "codePath"    # Ljava/lang/String;

    .line 780
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, "stubCodePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "stubName":Ljava/lang/String;
    const-string v2, "-Stub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 797
    .local v3, "idx":I
    const/4 v4, 0x0

    if-ltz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    if-eq v5, v2, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 802
    .local v2, "stubParentDir":Ljava/io/File;
    const-string v5, "PackageManager"

    if-nez v2, :cond_1

    .line 803
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-object v4

    .line 807
    :cond_1
    new-instance v4, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 808
    .local v4, "compressedPath":Ljava/io/File;
    new-instance v6, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v4, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 815
    .local v6, "files":[Ljava/io/File;
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    .line 816
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCompressedFiles["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_2
    return-object v6

    .line 798
    .end local v2    # "stubParentDir":Ljava/io/File;
    .end local v4    # "compressedPath":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    :cond_3
    :goto_0
    return-object v4
.end method

.method public static getLastModifiedTime(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    .line 340
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "baseFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 342
    .local v2, "maxModifiedTime":J
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 343
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 344
    new-instance v5, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v5, "splitFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 343
    .end local v5    # "splitFile":Ljava/io/File;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 348
    .end local v4    # "i":I
    :cond_1
    return-wide v2
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "abiOverride"    # Ljava/lang/String;

    .line 832
    new-instance v0, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 833
    .local v0, "ret":Landroid/content/pm/PackageInfoLite;
    const/4 v1, -0x2

    const-string v2, "PackageManager"

    if-nez p1, :cond_0

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 836
    return-object v0

    .line 839
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .local v3, "packageFile":Ljava/io/File;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v4

    .line 844
    .local v4, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v4, p3}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    .local v8, "sizeBytes":J
    nop

    .line 857
    iget-object v6, v4, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget v7, v4, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    move-object v5, p0

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/android/internal/content/PackageHelper;->resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I

    move-result v1

    .line 860
    .local v1, "recommendedInstallLocation":I
    iget-object v2, v4, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 861
    iget-object v2, v4, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 862
    iget v2, v4, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 863
    iget v2, v4, Landroid/content/pm/PackageParser$PackageLite;->versionCodeMajor:I

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    .line 864
    iget v2, v4, Landroid/content/pm/PackageParser$PackageLite;->baseRevisionCode:I

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 865
    iget-object v2, v4, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v2, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 866
    iget v2, v4, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 867
    iget-object v2, v4, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object v2, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 868
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 869
    iget-boolean v2, v4, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    .line 870
    iget-boolean v2, v4, Landroid/content/pm/PackageParser$PackageLite;->debuggable:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    .line 872
    return-object v0

    .line 845
    .end local v1    # "recommendedInstallLocation":I
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    .end local v8    # "sizeBytes":J
    :catch_0
    move-exception v4

    .line 846
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse package at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 849
    const/4 v1, -0x6

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 851
    :cond_1
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 854
    :goto_0
    return-object v0
.end method

.method private static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 124
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 125
    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 126
    .local v1, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 128
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 131
    :cond_0
    return-object v1
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 1
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 189
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;
    .locals 13
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 196
    .local p0, "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 197
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    .local v1, "remainingPkgSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v2, "sortTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    sget-object v3, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$6Hiu23bVWNI_UB8JjRQOmllFVE8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$6Hiu23bVWNI_UB8JjRQOmllFVE8;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 209
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    move-result-object v4

    .line 211
    .local v4, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$miSwAI7tlaWPbDunujMxV7oiAWA;

    invoke-direct {v5, v4}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$miSwAI7tlaWPbDunujMxV7oiAWA;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v5, v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 215
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v5

    .line 216
    .local v5, "dexManager":Lcom/android/server/pm/dex/DexManager;
    new-instance v6, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$CznOu58qzp1xBXuz65vwZNf-2YQ;

    invoke-direct {v6, v5}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$CznOu58qzp1xBXuz65vwZNf-2YQ;-><init>(Lcom/android/server/pm/dex/DexManager;)V

    invoke-static {v6, v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const-string v7, "PackageManager"

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 225
    if-eqz p2, :cond_0

    .line 226
    const-string v6, "Looking at historical package use"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    sget-object v6, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w;

    invoke-static {v1, v6}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 233
    .local v6, "lastUsed":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_1

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Taking package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " as reference in time use"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v8

    .line 238
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v8

    .line 240
    .local v8, "estimatedPreviousSystemUseTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_2

    .line 241
    const-wide/32 v10, 0x240c8400

    sub-long v10, v8, v10

    .line 242
    .local v10, "cutoffTime":J
    new-instance v12, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$sV6Dy76F46JIA9ovYV5QyhvLuQ4;

    .end local v10    # "cutoffTime":J
    .local v12, "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {v12, v10, v11}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$sV6Dy76F46JIA9ovYV5QyhvLuQ4;-><init>(J)V

    .line 244
    goto :goto_0

    .line 246
    .end local v12    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    sget-object v12, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Nz561xT8r_YIT6_Lm5bJ67n8gRs;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Nz561xT8r_YIT6_Lm5bJ67n8gRs;

    .line 248
    .restart local v12    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageSetting;>;"
    :goto_0
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 249
    .end local v6    # "lastUsed":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "estimatedPreviousSystemUseTime":J
    goto :goto_1

    .line 251
    .end local v12    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageSetting;>;"
    :cond_3
    sget-object v12, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$kGgIy61AI0hVhikc5IBRoH-OqgM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$kGgIy61AI0hVhikc5IBRoH-OqgM;

    .line 253
    .restart local v12    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageSetting;>;"
    :goto_1
    invoke-static {v12, v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 256
    if-eqz p2, :cond_4

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packages to be dexopted: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packages skipped from dexopt: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_4
    return-object v0
.end method

.method public static getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;
    .locals 2
    .param p0, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 987
    nop

    .line 988
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 989
    .local v0, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 990
    const/4 v1, 0x0

    return-object v1

    .line 992
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    return-object v1
.end method

.method private static getRootHash(Ljava/lang/String;)[B
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .line 1057
    nop

    .line 1058
    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v0

    .line 1059
    .local v0, "baseFileSignature":[B
    if-eqz v0, :cond_2

    .line 1062
    nop

    .line 1063
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v1

    .line 1064
    .local v1, "signature":Landroid/os/incremental/V4Signature;
    iget-object v2, v1, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    if-eqz v2, :cond_1

    .line 1067
    iget-object v2, v1, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    .line 1068
    invoke-static {v2}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v2

    .line 1069
    .local v2, "hashInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v3, v2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1072
    iget-object v3, v2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    return-object v3

    .line 1070
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Root has not present"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v3

    .line 1065
    .end local v2    # "hashInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Hashing info not present"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v2

    .line 1060
    .end local v1    # "signature":Landroid/os/incremental/V4Signature;
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File signature not present"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    .end local v0    # "baseFileSignature":[B
    .restart local p0    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "ignore":Ljava/io/IOException;
    const-string v1, "PackageManager"

    const-string v2, "ERROR: could not load root hash from incremental install"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v0    # "ignore":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .locals 4

    .line 352
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 353
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "uiderrors.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 355
    .local v2, "fname":Ljava/io/File;
    return-object v2
.end method

.method static isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method static isApkVerityEnabled()Z
    .locals 3

    .line 592
    sget v0, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 593
    const-string/jumbo v0, "ro.apk_verity.mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 592
    :cond_1
    return v1
.end method

.method public static isDowngradePermitted(IZ)Z
    .locals 5
    .param p0, "installFlags"    # I
    .param p1, "isAppDebuggable"    # Z

    .line 918
    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 920
    .local v0, "downgradeRequested":Z
    :goto_0
    if-nez v0, :cond_1

    .line 921
    return v2

    .line 923
    :cond_1
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    .line 924
    .local v3, "isDebuggable":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 925
    return v1

    .line 927
    :cond_4
    const/high16 v4, 0x100000

    and-int/2addr v4, p0

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1
.end method

.method static isLegacyApkVerityEnabled()Z
    .locals 3

    .line 598
    const-string/jumbo v0, "ro.apk_verity.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z
    .locals 5
    .param p0, "firstInstallTime"    # J
    .param p2, "currentTimeInMillis"    # J
    .param p4, "thresholdTimeinMillis"    # J
    .param p6, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p7, "latestPackageUseTimeInMillis"    # J
    .param p9, "latestForegroundPackageUseTimeInMillis"    # J

    .line 276
    sub-long v0, p2, p0

    cmp-long v0, v0, p4

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 277
    return v1

    .line 281
    :cond_0
    sub-long v2, p2, p9

    cmp-long v0, v2, p4

    const/4 v2, 0x1

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 285
    .local v0, "isActiveInForeground":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 286
    return v1

    .line 291
    :cond_2
    sub-long v3, p2, p7

    cmp-long v3, v3, p4

    if-gez v3, :cond_3

    .line 294
    invoke-virtual {p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 296
    .local v3, "isActiveInBackgroundAndUsedByOtherPackages":Z
    :goto_1
    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method static synthetic lambda$getPackagesForDexopt$2(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$3(Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "pkgNames"    # Landroid/util/ArraySet;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 211
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$4(Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "dexManager"    # Lcom/android/server/pm/dex/DexManager;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 217
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v0

    .line 217
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$5(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I
    .locals 4
    .param p0, "pkgSetting1"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "pkgSetting2"    # Lcom/android/server/pm/PackageSetting;

    .line 230
    nop

    .line 231
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 232
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 230
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$6(JLcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "cutoffTime"    # J
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 242
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$7(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$8(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$sortPackagesByUsageDate$1(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I
    .locals 4
    .param p0, "pkgSetting1"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "pkgSetting2"    # Lcom/android/server/pm/PackageSetting;

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 146
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 144
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 116
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .locals 8
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 384
    const-string v0, "PackageManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    .line 387
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 388
    .local v0, "fname":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 389
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 390
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 391
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "dateString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 394
    nop

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    .line 394
    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    nop

    .end local v0    # "fname":Ljava/io/File;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "dateString":Ljava/lang/String;
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 400
    :goto_0
    return-void
.end method

.method public static makeDirRecursive(Ljava/io/File;I)V
    .locals 5
    .param p0, "targetDir"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 999
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 1000
    .local v0, "targetDirPath":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    .line 1002
    .local v1, "directoriesCount":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 1003
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    .line 1004
    .local v3, "currentDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1005
    goto :goto_1

    .line 1007
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 1008
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1002
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1010
    .end local v2    # "i":I
    .end local v3    # "currentDir":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z
    .locals 4
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 564
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/16 v3, 0x8

    .line 567
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated system app mismatches cert on /system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    return v0

    .line 570
    :cond_1
    :goto_0
    return v2
.end method

.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageSignatures"    # Lcom/android/server/pm/PackageSignatures;
    .param p2, "parsedSignatures"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 503
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 504
    .local v0, "existingSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 505
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 504
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 507
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 508
    .local v1, "scannedCompatSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    iget-object v2, p2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 510
    .local v6, "sig":Landroid/content/pm/Signature;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 511
    .local v7, "chainSignatures":[Landroid/content/pm/Signature;
    array-length v8, v7

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 512
    .local v10, "chainSig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    nop

    .end local v10    # "chainSig":Landroid/content/pm/Signature;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 516
    .end local v7    # "chainSignatures":[Landroid/content/pm/Signature;
    :cond_1
    goto :goto_3

    .line 514
    :catch_0
    move-exception v7

    .line 515
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v6    # "sig":Landroid/content/pm/Signature;
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 519
    :cond_2
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 521
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 522
    const/4 v2, 0x1

    return v2

    .line 523
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 528
    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 532
    :cond_4
    return v3
.end method

.method private static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "existingSignatures"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p2, "parsedSignatures"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p3, "flags"    # I

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapabilityRecover(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovered effectively matching certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    const/4 v1, 0x1

    return v1

    .line 549
    :cond_0
    goto :goto_0

    .line 547
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 550
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recover certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 552
    const/4 v1, 0x0

    return v1
.end method

.method public static packagesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 312
    .local p0, "pkgSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 315
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ee":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 139
    .local p0, "pkgSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$X1ShBJjcdw7NZGmmKd5HWXujgg8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$X1ShBJjcdw7NZGmmKd5HWXujgg8;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    return-void
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$SigningDetails;ZZ)Z
    .locals 10
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "parsedSignatures"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p3, "compareCompat"    # Z
    .param p4, "compareRecover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 617
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 618
    .local v1, "compatMatch":Z
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const-string v3, "Package "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_8

    .line 620
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2, v2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    const/16 v6, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 623
    invoke-virtual {v2, p2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    .line 626
    .local v2, "match":Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    .line 627
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v7, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    .line 629
    move v1, v2

    .line 631
    :cond_2
    if-nez v2, :cond_5

    if-eqz p4, :cond_5

    .line 632
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0, v7, p2, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 637
    invoke-static {v0, p2, v7, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v5

    :goto_3
    move v2, v6

    .line 644
    :cond_5
    if-nez v2, :cond_6

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 645
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    .line 648
    :cond_6
    if-nez v2, :cond_8

    .line 660
    new-array v6, v5, [I

    const/16 v7, 0xf

    aput v7, v6, v4

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 661
    invoke-static {v6}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " signatures do not match the previously installed version, use system reserve app!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 665
    :cond_7
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, -0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures do not match previously installed version; ignoring!"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 673
    .end local v2    # "match":Z
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 674
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v6, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v2, v6, :cond_16

    .line 682
    nop

    .line 684
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 683
    const/4 v6, 0x2

    invoke-virtual {p2, v2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 686
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v2, p2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move v2, v4

    goto :goto_6

    :cond_a
    :goto_5
    move v2, v5

    .line 692
    .restart local v2    # "match":Z
    :goto_6
    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ne v7, v5, :cond_b

    .line 693
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 694
    const/4 v2, 0x1

    .line 696
    :cond_b
    if-nez v2, :cond_c

    if-eqz p3, :cond_c

    .line 697
    nop

    .line 698
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 697
    invoke-static {v0, v7, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    .line 700
    :cond_c
    if-nez v2, :cond_f

    if-eqz p4, :cond_f

    .line 701
    nop

    .line 703
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 702
    invoke-static {v0, v7, p2, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 708
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 706
    invoke-static {v0, p2, v7, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    move v4, v5

    :cond_e
    move v2, v4

    .line 710
    or-int/2addr v1, v2

    .line 712
    :cond_f
    const/4 v4, -0x8

    if-eqz v2, :cond_15

    .line 722
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 723
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 727
    .local v7, "shUidPkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 728
    goto :goto_7

    .line 730
    :cond_10
    nop

    .line 731
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v8

    .line 734
    .local v8, "shUidSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    invoke-virtual {p2, v8}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 735
    invoke-virtual {p2, v8, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_8

    .line 737
    :cond_11
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " revoked the sharedUserId capability from the signing key used to sign "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 744
    .end local v7    # "shUidPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "shUidSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :cond_12
    :goto_8
    goto :goto_7

    .line 748
    :cond_13
    nop

    .line 749
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 748
    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->hasCommonAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_9

    .line 750
    :cond_14
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has a signing lineage that diverges from the lineage of the sharedUserId"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 713
    :cond_15
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no signatures that match those in shared user "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring!"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 755
    .end local v2    # "match":Z
    :cond_16
    :goto_9
    return v1
.end method
