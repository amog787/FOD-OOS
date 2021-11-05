.class public final Lcom/android/server/pm/dex/DexoptUtils;
.super Ljava/lang/Object;
.source "DexoptUtils.java"


# static fields
.field private static final SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DexoptUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/internal/os/ClassLoaderFactory;->getPathClassLoaderName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "classpath"    # Ljava/lang/String;
    .param p1, "classLoaderName"    # Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    move-object v0, p1

    .line 301
    .local v0, "classLoaderDexoptEncoding":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string v0, "PCL"

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    const-string v0, "DLC"

    goto :goto_0

    .line 306
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

    .line 308
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

    .line 316
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

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 327
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 328
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

    .line 289
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

    .line 271
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 276
    .local v3, "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 272
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

    .line 252
    .local p0, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const-string/jumbo v0, "{"

    .line 253
    .local v0, "sharedLibrariesContext":Ljava/lang/String;
    const/4 v1, 0x1

    .line 254
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

    .line 255
    .local v3, "info":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_0

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibrary(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .end local v3    # "info":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_0

    .line 261
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method private static encodeSharedLibrary(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "sharedLibrary"    # Landroid/content/pm/SharedLibraryInfo;

    .line 241
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    .line 242
    invoke-static {v1, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "classLoaderSpec":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
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

    .line 248
    :cond_0
    return-object v1
.end method

.method public static getClassLoaderContext(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Landroid/content/pm/SharedLibraryInfo;

    .line 186
    const-string v0, ""

    .line 187
    .local v0, "sharedLibrariesContext":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    sget-object v1, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v2, v1, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClassLoaderContexts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[Z)[Ljava/lang/String;
    .locals 15
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pathsWithCode"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;[Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 74
    .local p1, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const-string v0, ""

    .line 75
    .local v0, "sharedLibrariesContext":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 76
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    nop

    .line 80
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, ""

    invoke-static {v2, v1, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "baseApkContextClassLoader":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 83
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v4

    return-object v2

    .line 89
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptUtils;->getSplitRelativeCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "splitRelativeCodePaths":[Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "baseApkName":Ljava/lang/String;
    move-object v7, v6

    .line 99
    .local v7, "baseClassPath":Ljava/lang/String;
    array-length v8, v3

    add-int/2addr v8, v5

    new-array v5, v8, [Ljava/lang/String;

    .line 100
    .local v5, "classLoaderContexts":[Ljava/lang/String;
    aget-boolean v8, p2, v4

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    move-object v8, v1

    goto :goto_0

    :cond_2
    move-object v8, v9

    :goto_0
    aput-object v8, v5, v4

    .line 102
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v4

    .line 104
    .local v4, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v4, :cond_9

    .line 106
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_6

    .line 138
    :cond_3
    array-length v8, v3

    new-array v8, v8, [Ljava/lang/String;

    .line 139
    .local v8, "splitClassLoaderEncodingCache":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v11, v3

    if-ge v10, v11, :cond_4

    .line 140
    aget-object v11, v3, v10

    .line 141
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitClassLoaderNames()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v10

    .line 140
    invoke-static {v11, v12}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 139
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 143
    .end local v10    # "i":I
    :cond_4
    nop

    .line 144
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v10

    .line 143
    invoke-static {v7, v10}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, "splitDependencyOnBase":Ljava/lang/String;
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 150
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 151
    .local v12, "splitIndex":I
    aget-boolean v13, p2, v12

    if-eqz v13, :cond_5

    .line 153
    invoke-static {v12, v8, v4, v5, v10}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .end local v12    # "splitIndex":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 161
    .end local v11    # "i":I
    :cond_6
    const/4 v11, 0x1

    .restart local v11    # "i":I
    :goto_3
    array-length v12, v5

    if-ge v11, v12, :cond_c

    .line 162
    nop

    .line 163
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitClassLoaderNames()[Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v11, -0x1

    aget-object v12, v12, v13

    .line 162
    invoke-static {v2, v12}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "splitClassLoader":Ljava/lang/String;
    aget-boolean v13, p2, v11

    if-eqz v13, :cond_8

    .line 167
    aget-object v13, v5, v11

    if-nez v13, :cond_7

    .line 168
    move-object v13, v12

    goto :goto_4

    .line 170
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v5, v11

    .line 169
    invoke-static {v12, v14}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    aput-object v13, v5, v11

    goto :goto_5

    .line 174
    :cond_8
    aput-object v9, v5, v11

    .line 161
    .end local v12    # "splitClassLoader":Ljava/lang/String;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 110
    .end local v8    # "splitClassLoaderEncodingCache":[Ljava/lang/String;
    .end local v10    # "splitDependencyOnBase":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_9
    :goto_6
    move-object v2, v7

    .line 111
    .local v2, "classpath":Ljava/lang/String;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_7
    array-length v10, v5

    if-ge v8, v10, :cond_b

    .line 112
    aget-boolean v10, p2, v8

    if-eqz v10, :cond_a

    .line 113
    nop

    .line 114
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v10

    .line 113
    invoke-static {v2, v10, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    goto :goto_8

    .line 116
    :cond_a
    aput-object v9, v5, v8

    .line 125
    :goto_8
    add-int/lit8 v10, v8, -0x1

    aget-object v10, v3, v10

    invoke-static {v2, v10}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 127
    .end local v2    # "classpath":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_b
    nop

    .line 179
    :cond_c
    return-object v5
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

    .line 220
    .local p2, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-nez p0, :cond_0

    .line 221
    return-object p4

    .line 224
    :cond_0
    aget-object v0, p3, p0

    if-eqz v0, :cond_1

    .line 225
    aget-object v0, p3, p0

    return-object v0

    .line 228
    :cond_1
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 229
    .local v0, "parent":I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "parentDependencies":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 234
    move-object v2, v1

    goto :goto_0

    .line 235
    :cond_2
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    invoke-static {v2, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 236
    .local v2, "splitContext":Ljava/lang/String;
    aput-object v2, p3, p0

    .line 237
    return-object v2
.end method

.method private static getSplitRelativeCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)[Ljava/lang/String;
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 404
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "baseCodePath":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "splitCodePaths":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 407
    .local v2, "splitRelativeCodePaths":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 408
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .local v4, "pathFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 411
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "basePath":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 413
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

    .line 407
    .end local v4    # "pathFile":Ljava/io/File;
    .end local v5    # "basePath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
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

    .line 358
    .local p0, "classLoadersNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 362
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 367
    const-string v0, ""

    .line 371
    .local v0, "parentContext":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 372
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "classpath":Ljava/lang/String;
    nop

    .line 378
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v0, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .end local v2    # "classpath":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_1
    :goto_1
    return-object v3

    .line 382
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    .local v2, "loadingClassLoader":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 384
    return-object v3

    .line 386
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "loadedDexPaths":[Ljava/lang/String;
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 388
    .local v3, "loadedDexPathsContext":[Ljava/lang/String;
    const-string v4, ""

    .line 389
    .local v4, "currentLoadedDexPathClasspath":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 390
    aget-object v6, v1, v5

    .line 391
    .local v6, "dexPath":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, "currentContext":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 394
    invoke-static {v4, v6}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    .end local v6    # "dexPath":Ljava/lang/String;
    .end local v7    # "currentContext":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 396
    .end local v5    # "i":I
    :cond_4
    return-object v3

    .line 363
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

    .line 359
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the class loader names and the dex paths do not match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
