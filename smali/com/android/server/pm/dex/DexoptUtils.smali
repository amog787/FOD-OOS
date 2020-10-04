.class public final Lcom/android/server/pm/dex/DexoptUtils;
.super Ljava/lang/Object;
.source "DexoptUtils.java"


# static fields
.field private static final SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DexoptUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/internal/os/ClassLoaderFactory;->getPathClassLoaderName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "classpath"    # Ljava/lang/String;
    .param p1, "classLoaderName"    # Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    move-object v0, p1

    .line 295
    .local v0, "classLoaderDexoptEncoding":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v0, "PCL"

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    const-string v0, "DLC"

    goto :goto_0

    .line 300
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported classLoaderName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexoptUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classpath"    # Ljava/lang/String;
    .param p1, "classLoaderName"    # Ljava/lang/String;
    .param p2, "sharedLibraries"    # Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cl1"    # Ljava/lang/String;
    .param p1, "cl2"    # Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 321
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 322
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classpath"    # Ljava/lang/String;
    .param p1, "newElement"    # Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static encodeClasspath([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "classpathElements"    # [Ljava/lang/String;

    .line 265
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 270
    .local v3, "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 266
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private static encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 246
    .local p0, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const-string/jumbo v0, "{"

    .line 247
    .local v0, "sharedLibrariesContext":Ljava/lang/String;
    const/4 v1, 0x1

    .line 248
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    .line 249
    .local v3, "info":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_0

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    const/4 v1, 0x0

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibrary(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .end local v3    # "info":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_0

    .line 255
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    return-object v0
.end method

.method private static encodeSharedLibrary(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "sharedLibrary"    # Landroid/content/pm/SharedLibraryInfo;

    .line 235
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 236
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    .line 236
    invoke-static {v1, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "classLoaderSpec":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    :cond_0
    return-object v1
.end method

.method public static getClassLoaderContext(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Landroid/content/pm/SharedLibraryInfo;

    .line 180
    const-string v0, ""

    .line 181
    .local v0, "sharedLibrariesContext":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    sget-object v1, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v2, v1, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;Ljava/util/List;[Z)[Ljava/lang/String;
    .locals 16
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pathsWithCode"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;[Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    .local p1, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    move-object/from16 v0, p0

    const-string v1, ""

    .line 73
    .local v1, "sharedLibrariesContext":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v3, v2, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "baseApkContextClassLoader":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 81
    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    return-object v3

    .line 87
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/dex/DexoptUtils;->getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "splitRelativeCodePaths":[Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "baseApkName":Ljava/lang/String;
    move-object v8, v7

    .line 97
    .local v8, "baseClassPath":Ljava/lang/String;
    array-length v9, v4

    add-int/2addr v9, v6

    new-array v6, v9, [Ljava/lang/String;

    .line 98
    .local v6, "classLoaderContexts":[Ljava/lang/String;
    aget-boolean v9, p2, v5

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    move-object v9, v2

    goto :goto_0

    :cond_2
    move-object v9, v10

    :goto_0
    aput-object v9, v6, v5

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-nez v5, :cond_3

    goto :goto_6

    .line 132
    :cond_3
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/String;

    .line 133
    .local v5, "splitClassLoaderEncodingCache":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v11, v4

    if-ge v9, v11, :cond_4

    .line 134
    aget-object v11, v4, v9

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v12, v12, v9

    invoke-static {v11, v12}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v9

    .line 133
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 137
    .end local v9    # "i":I
    :cond_4
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "splitDependencyOnBase":Ljava/lang/String;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 144
    .local v11, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_2
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 145
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 146
    .local v13, "splitIndex":I
    aget-boolean v14, p2, v13

    if-eqz v14, :cond_5

    .line 148
    invoke-static {v13, v5, v11, v6, v9}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .end local v13    # "splitIndex":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 156
    .end local v12    # "i":I
    :cond_6
    const/4 v12, 0x1

    .restart local v12    # "i":I
    :goto_3
    array-length v13, v6

    if-ge v12, v13, :cond_c

    .line 157
    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    add-int/lit8 v14, v12, -0x1

    aget-object v13, v13, v14

    invoke-static {v3, v13}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, "splitClassLoader":Ljava/lang/String;
    aget-boolean v14, p2, v12

    if-eqz v14, :cond_8

    .line 161
    aget-object v14, v6, v12

    if-nez v14, :cond_7

    .line 162
    move-object v14, v13

    goto :goto_4

    .line 164
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v6, v12

    .line 163
    invoke-static {v13, v15}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_4
    aput-object v14, v6, v12

    goto :goto_5

    .line 168
    :cond_8
    aput-object v10, v6, v12

    .line 156
    .end local v13    # "splitClassLoader":Ljava/lang/String;
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 104
    .end local v5    # "splitClassLoaderEncodingCache":[Ljava/lang/String;
    .end local v9    # "splitDependencyOnBase":Ljava/lang/String;
    .end local v11    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v12    # "i":I
    :cond_9
    :goto_6
    move-object v3, v8

    .line 105
    .local v3, "classpath":Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_7
    array-length v9, v6

    if-ge v5, v9, :cond_b

    .line 106
    aget-boolean v9, p2, v5

    if-eqz v9, :cond_a

    .line 107
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v3, v9, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    goto :goto_8

    .line 110
    :cond_a
    aput-object v10, v6, v5

    .line 119
    :goto_8
    add-int/lit8 v9, v5, -0x1

    aget-object v9, v4, v9

    invoke-static {v3, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 121
    .end local v3    # "classpath":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_b
    nop

    .line 173
    :cond_c
    return-object v6
.end method

.method private static getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I
    .param p1, "splitClassLoaderEncodingCache"    # [Ljava/lang/String;
    .param p3, "classLoaderContexts"    # [Ljava/lang/String;
    .param p4, "splitDependencyOnBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 214
    .local p2, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-nez p0, :cond_0

    .line 215
    return-object p4

    .line 218
    :cond_0
    aget-object v0, p3, p0

    if-eqz v0, :cond_1

    .line 219
    aget-object v0, p3, p0

    return-object v0

    .line 222
    :cond_1
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 223
    .local v0, "parent":I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "parentDependencies":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 228
    move-object v2, v1

    goto :goto_0

    .line 229
    :cond_2
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    invoke-static {v2, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 230
    .local v2, "splitContext":Ljava/lang/String;
    aput-object v2, p3, p0

    .line 231
    return-object v2
.end method

.method private static getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .locals 8
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 398
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "baseCodePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "splitCodePaths":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 401
    .local v2, "splitRelativeCodePaths":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 402
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v4, "pathFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 405
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "basePath":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 407
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split paths have different base paths: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DexoptUtils"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v4    # "pathFile":Ljava/io/File;
    .end local v5    # "basePath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method static processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 352
    .local p0, "classLoadersNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 356
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 361
    const-string v0, ""

    .line 365
    .local v0, "parentContext":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 366
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "classpath":Ljava/lang/String;
    nop

    .line 372
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v0, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .end local v2    # "classpath":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    :cond_1
    :goto_1
    return-object v3

    .line 376
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 377
    .local v2, "loadingClassLoader":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 378
    return-object v3

    .line 380
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "loadedDexPaths":[Ljava/lang/String;
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 382
    .local v3, "loadedDexPathsContext":[Ljava/lang/String;
    const-string v4, ""

    .line 383
    .local v4, "currentLoadedDexPathClasspath":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 384
    aget-object v6, v1, v5

    .line 385
    .local v6, "dexPath":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, "currentContext":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 388
    invoke-static {v4, v6}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    .end local v6    # "dexPath":Ljava/lang/String;
    .end local v7    # "currentContext":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 390
    .end local v5    # "i":I
    :cond_4
    return-object v3

    .line 357
    .end local v0    # "parentContext":Ljava/lang/String;
    .end local v1    # "loadedDexPaths":[Ljava/lang/String;
    .end local v2    # "loadingClassLoader":Ljava/lang/String;
    .end local v3    # "loadedDexPathsContext":[Ljava/lang/String;
    .end local v4    # "currentLoadedDexPathClasspath":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty classLoadersNames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the class loader names and the dex paths do not match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
