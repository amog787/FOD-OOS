.class final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "PackageAbiHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "codePathString"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "codePath":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .local v1, "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 64
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 66
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 68
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 70
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 72
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 74
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 76
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const-string v2, "Can\'t canonicalize code path "

    const-string v3, "PackageManager"

    if-eqz v1, :cond_8

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "fullPath":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    .line 80
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .local v2, "codeRoot":Ljava/io/File;
    goto :goto_0

    .line 82
    .end local v2    # "codeRoot":Ljava/io/File;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 85
    .end local v4    # "parts":[Ljava/lang/String;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_0
    goto :goto_2

    .line 89
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 92
    .local v4, "parent":Ljava/io/File;
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object v6, v5

    .local v6, "tmp":Ljava/io/File;
    if-eqz v5, :cond_9

    .line 93
    move-object v1, v4

    .line 94
    move-object v4, v6

    goto :goto_1

    .line 96
    :cond_9
    move-object v5, v1

    .line 97
    .local v5, "codeRoot":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized code path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    move-object v1, v5

    .line 105
    .end local v4    # "parent":Ljava/io/File;
    .end local v5    # "codeRoot":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 99
    .end local v1    # "codeRoot":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "codePath"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 113
    return-object v0

    .line 115
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "codeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    return-object v2

    .line 119
    :cond_1
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Odd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t look like an APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object v0

    .line 120
    :cond_3
    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 121
    .local v0, "lastDot":I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "apkRoot"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "codeFile":Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v1

    const-string/jumbo v2, "lib"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 276
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "lib64"

    invoke-direct {v4, v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 278
    .local v1, "has64BitLibs":Z
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .local v2, "has32BitLibs":Z
    goto :goto_1

    .line 281
    .end local v1    # "has64BitLibs":Z
    .end local v2    # "has32BitLibs":Z
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    .local v1, "rootDir":Ljava/io/File;
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 283
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "isa":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .line 286
    .local v2, "has64BitLibs":Z
    goto :goto_0

    .line 287
    .end local v2    # "has64BitLibs":Z
    :cond_1
    const/4 v2, 0x0

    .line 289
    .restart local v2    # "has64BitLibs":Z
    :goto_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 290
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 291
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "isa":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 293
    .local v4, "has32BitLibs":Z
    move v1, v2

    move v2, v4

    goto :goto_1

    .line 294
    .end local v4    # "has32BitLibs":Z
    :cond_2
    const/4 v4, 0x0

    move v1, v2

    move v2, v4

    .line 298
    .local v1, "has64BitLibs":Z
    .local v2, "has32BitLibs":Z
    :goto_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 303
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 304
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 305
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 309
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 310
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 311
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 319
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v4

    if-nez v4, :cond_5

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_5
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 325
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 326
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v5, v5, v3

    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 328
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_6
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 329
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v5, v5, v3

    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 332
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 333
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    const/4 v5, 0x0

    .line 337
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :goto_2
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/16 v7, 0xf

    aput v7, v6, v3

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 338
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 339
    new-instance v3, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageAbiHelper$Abis;->associatePackageName(Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v3

    .line 339
    return-object v3

    .line 343
    :cond_8
    new-instance v3, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 15
    .param p0, "abis"    # Lcom/android/server/pm/PackageAbiHelper$Abis;
    .param p1, "appLib32InstallDir"    # Ljava/io/File;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "sourceDir"    # Ljava/lang/String;
    .param p4, "isSystemApp"    # Z
    .param p5, "isUpdatedSystemApp"    # Z

    .line 166
    move-object v0, p0

    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "codeFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 183
    .local v5, "bundledApp":Z
    :goto_0
    invoke-static {v1}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v6

    const-string/jumbo v7, "lib"

    if-eqz v6, :cond_5

    .line 185
    if-eqz v5, :cond_4

    .line 188
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "apkRoot":Ljava/lang/String;
    nop

    .line 190
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-static {v8}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v8

    .line 195
    .local v8, "is64Bit":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "apkName":Ljava/lang/String;
    const-string/jumbo v10, "lib64"

    if-eqz v8, :cond_1

    move-object v11, v10

    goto :goto_1

    :cond_1
    move-object v11, v7

    .line 197
    .local v11, "libDir":Ljava/lang/String;
    :goto_1
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    aput-object v11, v14, v4

    aput-object v9, v14, v3

    invoke-static {v12, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 198
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 200
    .local v12, "nativeLibraryRootDir":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 201
    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v10

    .line 202
    .local v7, "secondaryLibDir":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v13, v13, [Ljava/lang/String;

    aput-object v7, v13, v4

    aput-object v9, v13, v3

    invoke-static {v10, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 204
    .end local v7    # "secondaryLibDir":Ljava/lang/String;
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_3

    .line 205
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 207
    .end local v6    # "apkRoot":Ljava/lang/String;
    .end local v8    # "is64Bit":Z
    .end local v9    # "apkName":Ljava/lang/String;
    .end local v11    # "libDir":Ljava/lang/String;
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_3
    move-object/from16 v6, p1

    goto :goto_4

    .line 208
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "apkName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v6, p1

    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 211
    .restart local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v3, v4

    .line 214
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_4
    const/4 v4, 0x0

    .line 215
    .local v4, "nativeLibraryRootRequiresIsa":Z
    move-object v7, v12

    .local v7, "nativeLibraryDir":Ljava/lang/String;
    goto/16 :goto_6

    .line 218
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v4    # "nativeLibraryRootRequiresIsa":Z
    .end local v7    # "nativeLibraryDir":Ljava/lang/String;
    .end local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_5
    move-object/from16 v6, p1

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 219
    .restart local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v7, 0x1

    .line 221
    .local v7, "nativeLibraryRootRequiresIsa":Z
    new-instance v8, Ljava/io/File;

    .line 222
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "nativeLibraryDir":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 225
    new-instance v9, Ljava/io/File;

    iget-object v10, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 226
    invoke-static {v10}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .local v9, "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_5

    .line 228
    .end local v9    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    .line 233
    .restart local v9    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_5
    new-array v3, v3, [I

    const/16 v10, 0xf

    aput v10, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 234
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->packageName:Ljava/lang/String;

    .line 235
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 236
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "reserve-lib"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 238
    new-instance v3, Ljava/io/File;

    .line 239
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move v4, v7

    move-object v7, v3

    move-object v3, v9

    .end local v8    # "nativeLibraryDir":Ljava/lang/String;
    .local v3, "nativeLibraryDir":Ljava/lang/String;
    goto :goto_6

    .line 243
    .end local v3    # "nativeLibraryDir":Ljava/lang/String;
    .restart local v8    # "nativeLibraryDir":Ljava/lang/String;
    :cond_7
    move v4, v7

    move-object v7, v8

    move-object v3, v9

    .end local v8    # "nativeLibraryDir":Ljava/lang/String;
    .end local v9    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    .restart local v4    # "nativeLibraryRootRequiresIsa":Z
    .local v7, "nativeLibraryDir":Ljava/lang/String;
    :goto_6
    new-instance v8, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {v8, v12, v4, v7, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "copyRet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 130
    if-gez p1, :cond_1

    .line 131
    const/16 v0, -0x72

    if-eq p1, v0, :cond_1

    const/16 v0, -0x71

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Z)Landroid/util/Pair;
    .locals 23
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z
    .param p3, "cpuAbiOverride"    # Ljava/lang/String;
    .param p4, "extractLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageAbiHelper$Abis;",
            "Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 352
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    .line 367
    .local v9, "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xf

    aput v12, v0, v11

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/pm/PackageAbiHelper$Abis;->associatePackageName(Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 371
    :cond_0
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sAppLib32InstallDir:Ljava/io/File;

    .line 373
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v5

    .line 374
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    .line 371
    move-object v3, v9

    move/from16 v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    .line 379
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 380
    const/4 v0, 0x0

    move v4, v0

    .end local p4    # "extractLibs":Z
    .local v0, "extractLibs":Z
    goto :goto_0

    .line 383
    .end local v0    # "extractLibs":Z
    .restart local p4    # "extractLibs":Z
    :cond_1
    move/from16 v4, p4

    .end local p4    # "extractLibs":Z
    .local v4, "extractLibs":Z
    :goto_0
    iget-object v5, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 384
    .local v5, "nativeLibraryRootStr":Ljava/lang/String;
    iget-boolean v6, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 385
    .local v6, "useIsaSpecificSubdirs":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    .line 387
    .local v7, "onIncremental":Z
    const/4 v8, 0x0

    .line 388
    .local v8, "primaryCpuAbi":Ljava/lang/String;
    const/4 v13, 0x0

    .line 390
    .local v13, "secondaryCpuAbi":Ljava/lang/String;
    const/4 v14, 0x0

    .line 392
    .local v14, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    move-object v14, v0

    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "nativeLibraryRoot":Ljava/io/File;
    const/4 v8, 0x0

    .line 403
    const/4 v13, 0x0

    .line 404
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-string v12, "copyNativeBinaries"

    const-string v11, "findSupportedAbi"

    move-object/from16 p4, v11

    if-eqz v15, :cond_e

    .line 405
    const/16 v15, -0x72

    .line 406
    .local v15, "abi32":I
    const/16 v19, -0x72

    .line 407
    .local v19, "abi64":I
    :try_start_1
    sget-object v10, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v10, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-lez v10, :cond_3

    .line 408
    if-eqz v4, :cond_2

    .line 409
    const-wide/32 v10, 0x40000

    :try_start_2
    invoke-static {v10, v11, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 410
    sget-object v10, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v14, v0, v10, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v1

    move-object/from16 v21, v2

    move v15, v10

    move-object/from16 v10, p4

    .end local v15    # "abi32":I
    .local v10, "abi32":I
    goto :goto_1

    .line 517
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v10    # "abi32":I
    .end local v19    # "abi64":I
    :catchall_0
    move-exception v0

    move-object v11, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 p4, v4

    goto/16 :goto_e

    .line 514
    :catch_0
    move-exception v0

    move-object v11, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 p4, v4

    goto/16 :goto_c

    .line 414
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v15    # "abi32":I
    .restart local v19    # "abi64":I
    :cond_2
    move-object/from16 v10, p4

    move-object v11, v1

    move-object/from16 v21, v2

    const-wide/32 v1, 0x40000

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v11, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v21, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :try_start_3
    invoke-static {v1, v2, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 415
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v14, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v1

    .end local v15    # "abi32":I
    .local v1, "abi32":I
    move v15, v1

    .line 418
    .end local v1    # "abi32":I
    .restart local v15    # "abi32":I
    :goto_1
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 407
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :cond_3
    move-object/from16 v10, p4

    move-object v11, v1

    move-object/from16 v21, v2

    .line 422
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :goto_2
    const-string v1, "Shared library native lib extraction not supported"

    if-ltz v15, :cond_5

    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v4, :cond_4

    goto :goto_3

    .line 423
    :cond_4
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v10, -0x6e

    invoke-direct {v2, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "extractLibs":Z
    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 517
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v15    # "abi32":I
    .end local v19    # "abi64":I
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "extractLibs":Z
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v3

    move/from16 p4, v4

    goto/16 :goto_e

    .line 514
    :catch_1
    move-exception v0

    move-object/from16 v22, v3

    move/from16 p4, v4

    goto/16 :goto_c

    .line 427
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v15    # "abi32":I
    .restart local v19    # "abi64":I
    :cond_5
    :goto_3
    :try_start_5
    const-string v2, "Error unpackaging 32 bit native libs for multiarch app."

    invoke-static {v2, v15}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 430
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-lez v2, :cond_7

    .line 431
    if-eqz v4, :cond_6

    .line 432
    move-object/from16 v22, v3

    const-wide/32 v2, 0x40000

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .local v22, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :try_start_6
    invoke-static {v2, v3, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 433
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v14, v0, v2, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    move/from16 v19, v2

    .end local v19    # "abi64":I
    .local v2, "abi64":I
    goto :goto_4

    .line 437
    .end local v2    # "abi64":I
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v19    # "abi64":I
    :cond_6
    move-object/from16 v22, v3

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 438
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v2

    .end local v19    # "abi64":I
    .restart local v2    # "abi64":I
    move/from16 v19, v2

    .line 441
    .end local v2    # "abi64":I
    .restart local v19    # "abi64":I
    :goto_4
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v2, v19

    goto :goto_5

    .line 430
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :cond_7
    move-object/from16 v22, v3

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    move/from16 v2, v19

    .line 444
    .end local v19    # "abi64":I
    .restart local v2    # "abi64":I
    :goto_5
    const-string v3, "Error unpackaging 64 bit native libs for multiarch app."

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 447
    if-ltz v2, :cond_a

    .line 449
    if-eqz v4, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    .line 450
    :cond_8
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v10, -0x6e

    invoke-direct {v3, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v4    # "extractLibs":Z
    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v3

    .line 453
    .restart local v4    # "extractLibs":Z
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :cond_9
    :goto_6
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v2

    move-object v8, v1

    .line 456
    :cond_a
    if-ltz v15, :cond_d

    .line 457
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v15

    .line 458
    .local v1, "abi":Ljava/lang/String;
    if-ltz v2, :cond_c

    .line 459
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUse32BitAbi()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 460
    move-object v3, v8

    .line 461
    .end local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .local v3, "secondaryCpuAbi":Ljava/lang/String;
    move-object v8, v1

    move-object v13, v3

    goto :goto_7

    .line 463
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v13    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_b
    move-object v3, v1

    move-object v13, v3

    .end local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_7

    .line 466
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v13    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_c
    move-object v3, v1

    move-object v8, v3

    .line 469
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "abi64":I
    .end local v15    # "abi32":I
    :cond_d
    :goto_7
    move/from16 p4, v4

    goto/16 :goto_b

    .line 517
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v3

    move/from16 p4, v4

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    goto/16 :goto_e

    .line 514
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :catch_2
    move-exception v0

    move-object/from16 v22, v3

    move/from16 p4, v4

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    goto/16 :goto_c

    .line 517
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :catchall_3
    move-exception v0

    move-object v11, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 p4, v4

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    goto/16 :goto_e

    .line 514
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :catch_3
    move-exception v0

    move-object v11, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 p4, v4

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    goto/16 :goto_c

    .line 470
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :cond_e
    move-object/from16 v10, p4

    move-object v11, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    if-eqz p3, :cond_f

    .line 471
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v2, v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_8

    .line 517
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    :catchall_4
    move-exception v0

    move/from16 p4, v4

    goto/16 :goto_e

    .line 514
    :catch_4
    move-exception v0

    move/from16 p4, v4

    goto/16 :goto_c

    .line 471
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    :cond_f
    :try_start_7
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    :goto_8
    move-object v1, v2

    .line 477
    .local v1, "abiList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 478
    .local v2, "needsRenderScriptOverride":Z
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v3, v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-lez v3, :cond_10

    if-nez p3, :cond_10

    .line 479
    :try_start_8
    invoke-static {v14}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 480
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v1, v3

    .line 481
    const/4 v2, 0x1

    .line 485
    :cond_10
    if-eqz v4, :cond_11

    .line 486
    move/from16 p4, v4

    const-wide/32 v3, 0x40000

    .end local v4    # "extractLibs":Z
    .restart local p4    # "extractLibs":Z
    :try_start_9
    invoke-static {v3, v4, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 487
    invoke-static {v14, v0, v1, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v3

    .local v3, "copyRet":I
    goto :goto_9

    .line 490
    .end local v3    # "copyRet":I
    .end local p4    # "extractLibs":Z
    .restart local v4    # "extractLibs":Z
    :cond_11
    move/from16 p4, v4

    .end local v4    # "extractLibs":Z
    .restart local p4    # "extractLibs":Z
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 491
    invoke-static {v14, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v3

    .line 493
    .restart local v3    # "copyRet":I
    :goto_9
    const-wide/32 v19, 0x40000

    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 495
    const/16 v4, -0x72

    if-gez v3, :cond_13

    if-ne v3, v4, :cond_12

    goto :goto_a

    .line 496
    :cond_12
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error unpackaging native libs for app, errorCode="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v12, -0x6e

    invoke-direct {v4, v12, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    .end local p4    # "extractLibs":Z
    throw v4

    .line 500
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p4    # "extractLibs":Z
    :cond_13
    :goto_a
    if-ltz v3, :cond_15

    .line 502
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 506
    aget-object v4, v1, v3

    move-object v8, v4

    goto :goto_b

    .line 503
    :cond_14
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v10, "Shared library with native libs must be multiarch"

    const/16 v12, -0x6e

    invoke-direct {v4, v12, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    .end local p4    # "extractLibs":Z
    throw v4

    .line 507
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "tmpAbis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p4    # "extractLibs":Z
    :cond_15
    if-ne v3, v4, :cond_16

    if-eqz p3, :cond_16

    .line 509
    move-object/from16 v8, p3

    goto :goto_b

    .line 510
    :cond_16
    if-eqz v2, :cond_17

    .line 511
    const/4 v4, 0x0

    aget-object v10, v1, v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object v8, v10

    .line 517
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v1    # "abiList":[Ljava/lang/String;
    .end local v2    # "needsRenderScriptOverride":Z
    .end local v3    # "copyRet":I
    :cond_17
    :goto_b
    goto :goto_d

    .line 514
    :catch_5
    move-exception v0

    goto :goto_c

    .line 517
    .end local p4    # "extractLibs":Z
    .restart local v4    # "extractLibs":Z
    :catchall_5
    move-exception v0

    move/from16 p4, v4

    .end local v4    # "extractLibs":Z
    .restart local p4    # "extractLibs":Z
    goto/16 :goto_e

    .line 514
    .end local p4    # "extractLibs":Z
    .restart local v4    # "extractLibs":Z
    :catch_6
    move-exception v0

    move/from16 p4, v4

    .end local v4    # "extractLibs":Z
    .restart local p4    # "extractLibs":Z
    goto :goto_c

    .line 517
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local p4    # "extractLibs":Z
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "extractLibs":Z
    :catchall_6
    move-exception v0

    move-object v11, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 p4, v4

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "extractLibs":Z
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local p4    # "extractLibs":Z
    goto :goto_e

    .line 514
    .end local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local p4    # "extractLibs":Z
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "extractLibs":Z
    :catch_7
    move-exception v0

    move-object v11, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 p4, v4

    .line 515
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "extractLibs":Z
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v11    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local p4    # "extractLibs":Z
    :goto_c
    :try_start_a
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get canonical file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 517
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_d
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 518
    move-object v0, v13

    move-object v1, v14

    .line 523
    .end local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .local v0, "secondaryCpuAbi":Ljava/lang/String;
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    new-instance v2, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v2, v8, v0}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .local v2, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0xf

    const/4 v10, 0x0

    aput v4, v3, v10

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 527
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 528
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageAbiHelper$Abis;->associatePackageName(Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 531
    :cond_18
    new-instance v3, Landroid/util/Pair;

    sget-object v14, Lcom/android/server/pm/PackageManagerService;->sAppLib32InstallDir:Ljava/io/File;

    .line 533
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v17

    .line 532
    move-object v13, v2

    move/from16 v18, p2

    invoke-static/range {v13 .. v18}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    return-object v3

    .line 517
    .end local v0    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v2    # "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .restart local v13    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :catchall_7
    move-exception v0

    :goto_e
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 518
    throw v0
.end method

.method public getAdjustedAbiForSharedUser(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 8
    .param p2, "scannedPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 554
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    .line 555
    .local v0, "requiredInstructionSet":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 556
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 558
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 563
    .local v1, "requirer":Lcom/android/server/pm/PackageSetting;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 568
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 569
    goto :goto_0

    .line 571
    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 572
    goto :goto_0

    .line 575
    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 576
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, "instructionSet":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instruction set mismatch, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    if-nez v1, :cond_3

    const-string v6, "[caller]"

    goto :goto_1

    :cond_3
    move-object v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " whereas "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "errorMessage":Ljava/lang/String;
    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v5    # "errorMessage":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_5

    .line 588
    move-object v0, v4

    .line 589
    move-object v1, v3

    .line 591
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "instructionSet":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 593
    :cond_6
    if-nez v0, :cond_7

    .line 594
    const/4 v2, 0x0

    return-object v2

    .line 597
    :cond_7
    if-eqz v1, :cond_8

    .line 602
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .local v2, "adjustedAbi":Ljava/lang/String;
    goto :goto_2

    .line 606
    .end local v2    # "adjustedAbi":Ljava/lang/String;
    :cond_8
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 608
    .restart local v2    # "adjustedAbi":Ljava/lang/String;
    :goto_2
    return-object v2
.end method

.method public getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 249
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "apkName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "apkRoot":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v2

    .line 255
    .local v2, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    return-object v2
.end method

.method public getNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "appLib32InstallDir"    # Ljava/io/File;

    .line 152
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v0, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xf

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageAbiHelper$Abis;->associatePackageName(Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 157
    :cond_0
    nop

    .line 158
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    .line 159
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v8

    .line 157
    move-object v3, v0

    move-object v4, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v1

    return-object v1
.end method
