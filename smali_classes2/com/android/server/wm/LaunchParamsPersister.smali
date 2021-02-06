.class Lcom/android/server/wm/LaunchParamsPersister;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;,
        Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
    }
.end annotation


# static fields
.field private static final ESCAPED_COMPONENT_SEPARATOR:C = '_'

.field private static final LAUNCH_PARAMS_DIRNAME:Ljava/lang/String; = "launch_params"

.field private static final LAUNCH_PARAMS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final ORIGINAL_COMPONENT_SEPARATOR:C = '/'

.field private static final TAG:Ljava/lang/String; = "LaunchParamsPersister"

.field private static final TAG_LAUNCH_PARAMS:Ljava/lang/String; = "launch_params"


# instance fields
.field private final mLaunchParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageList:Lcom/android/server/pm/PackageList;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mUserFolderGetter:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowLayoutAffinityMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 104
    sget-object v0, Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;Ljava/util/function/IntFunction;)V

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;Ljava/util/function/IntFunction;)V
    .locals 1
    .param p1, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/PersisterQueue;",
            "Lcom/android/server/wm/ActivityStackSupervisor;",
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p3, "userFolderGetter":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 110
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 111
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 112
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 113
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/LaunchParamsPersister;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/LaunchParamsPersister;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Landroid/content/ComponentName;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "launchParamAffinity"    # Ljava/lang/String;

    .line 269
    if-nez p2, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 273
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method private getLaunchParamFolder(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 361
    .local v0, "userFolder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "launch_params"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .locals 4
    .param p1, "launchParamFolder"    # Ljava/io/File;
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 354
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 355
    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "componentNameString":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "affinity"    # Ljava/lang/String;

    .line 272
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$removeRecordForPackage$2(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 346
    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->access$600(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadLaunchParams(I)V
    .locals 21
    .param p1, "userId"    # I

    .line 129
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 130
    .local v3, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    .line 131
    .local v4, "launchParamsFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v5, "LaunchParamsPersister"

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t find launch param folder for user "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 136
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v6, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    .line 138
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 139
    .local v7, "paramsFiles":[Ljava/io/File;
    new-instance v0, Landroid/util/ArrayMap;

    array-length v8, v7

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v0

    .line 141
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_9

    aget-object v13, v7, v11

    .line 144
    .local v13, "paramsFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is not a file."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_5

    .line 148
    :cond_1
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected params file name: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_5

    .line 153
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 154
    .local v14, "paramsFileName":Ljava/lang/String;
    nop

    .line 156
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v15, v16, v15

    .line 154
    invoke-virtual {v14, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v10, 0x5f

    const/16 v12, 0x2f

    .line 157
    invoke-virtual {v15, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "componentNameString":Ljava/lang/String;
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 160
    .local v12, "name":Landroid/content/ComponentName;
    if-nez v12, :cond_3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected file name: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_5

    .line 166
    :cond_3
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 169
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_5

    .line 173
    :cond_4
    const/4 v15, 0x0

    .line 175
    .local v15, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0

    .line 176
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    .line 177
    .local v0, "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 178
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 180
    :goto_1
    move-object/from16 v18, v4

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .local v18, "launchParamsFolder":Ljava/io/File;
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v4

    move-object/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v17, "event":I
    .local v19, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eq v4, v6, :cond_8

    const/4 v4, 0x3

    move/from16 v6, v17

    .end local v17    # "event":I
    .local v6, "event":I
    if-eq v6, v4, :cond_7

    .line 182
    const/4 v4, 0x2

    if-eq v6, v4, :cond_5

    .line 183
    move-object/from16 v4, v18

    move-object/from16 v6, v19

    goto :goto_1

    .line 186
    :cond_5
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "tagName":Ljava/lang/String;
    move/from16 v17, v6

    .end local v6    # "event":I
    .restart local v17    # "event":I
    const-string v6, "launch_params"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .local v20, "paramsFiles":[Ljava/io/File;
    :try_start_3
    const-string v7, "Unexpected tag name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_1

    .line 192
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_6
    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    invoke-virtual {v0, v13, v2}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 193
    .end local v4    # "tagName":Ljava/lang/String;
    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_1

    .line 202
    .end local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "event":I
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_6

    .line 198
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catch_0
    move-exception v0

    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_3

    .line 180
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "event":I
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_7
    move/from16 v17, v6

    move-object/from16 v20, v7

    .end local v6    # "event":I
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v17    # "event":I
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_2

    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_8
    move-object/from16 v20, v7

    .line 195
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    :goto_2
    invoke-virtual {v8, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v4, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-direct {v1, v12, v4}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 202
    .end local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "event":I
    goto :goto_4

    .line 198
    :catch_1
    move-exception v0

    goto :goto_3

    .line 202
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_6

    .line 198
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_3

    .line 202
    .end local v18    # "launchParamsFolder":Ljava/io/File;
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .local v4, "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v18    # "launchParamsFolder":Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_6

    .line 198
    .end local v18    # "launchParamsFolder":Ljava/io/File;
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v4    # "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 199
    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "launchParamsFolder":Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    :goto_3
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore launch params for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 202
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 203
    nop

    .line 143
    .end local v10    # "componentNameString":Ljava/lang/String;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v13    # "paramsFile":Ljava/io/File;
    .end local v14    # "paramsFileName":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p1

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 202
    .restart local v10    # "componentNameString":Ljava/lang/String;
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v13    # "paramsFile":Ljava/io/File;
    .restart local v14    # "paramsFileName":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v0

    :goto_6
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 203
    throw v0

    .line 206
    .end local v10    # "componentNameString":Ljava/lang/String;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v13    # "paramsFile":Ljava/io/File;
    .end local v14    # "paramsFileName":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "launchParamsFolder":Ljava/io/File;
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v4    # "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_9
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v18    # "launchParamsFolder":Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 207
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 209
    :cond_a
    return-void
.end method

.method private saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "params"    # Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 239
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 240
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 242
    iget-object v1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 243
    .local v1, "changed":Z
    iget-object v3, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 245
    iget v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v1, v3

    .line 246
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    iput v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 248
    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 249
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 250
    iget-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 252
    :cond_1
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 253
    iget-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 256
    :goto_1
    iget-object v2, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 257
    .local v2, "launchParamAffinity":Ljava/lang/String;
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 258
    iput-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 260
    if-eqz v1, :cond_2

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 264
    :cond_2
    return v1
.end method


# virtual methods
.method getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 15
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 277
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 278
    .local v4, "name":Landroid/content/ComponentName;
    :goto_0
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_1

    :cond_1
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 280
    .local v5, "userId":I
    :goto_1
    if-eqz v1, :cond_2

    .line 281
    iget-object v6, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .local v6, "windowLayoutAffinity":Ljava/lang/String;
    goto :goto_3

    .line 283
    .end local v6    # "windowLayoutAffinity":Ljava/lang/String;
    :cond_2
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 284
    .local v6, "layout":Landroid/content/pm/ActivityInfo$WindowLayout;
    if-nez v6, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    iget-object v7, v6, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_2
    move-object v6, v7

    .line 287
    .local v6, "windowLayoutAffinity":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 288
    iget-object v7, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 289
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    if-nez v7, :cond_4

    .line 290
    return-void

    .line 294
    :cond_4
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 297
    .local v8, "persistableParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    if-eqz v6, :cond_8

    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 298
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 299
    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 300
    .local v9, "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 301
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 302
    .local v11, "candidate":Landroid/content/ComponentName;
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 303
    .local v12, "candidateParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    if-nez v12, :cond_5

    .line 304
    goto :goto_5

    .line 307
    :cond_5
    if-eqz v8, :cond_6

    iget-wide v13, v12, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    iget-wide v1, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    cmp-long v1, v13, v1

    if-lez v1, :cond_7

    .line 309
    :cond_6
    move-object v8, v12

    .line 300
    .end local v11    # "candidate":Landroid/content/ComponentName;
    .end local v12    # "candidateParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_4

    .line 314
    .end local v9    # "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v10    # "i":I
    :cond_8
    if-nez v8, :cond_9

    .line 315
    return-void

    .line 318
    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 320
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_a

    .line 323
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iput-object v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 325
    :cond_a
    iget v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iput v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 326
    iget-object v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 327
    return-void
.end method

.method public synthetic lambda$saveTask$0$LaunchParamsPersister(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 225
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    return-object v0
.end method

.method onCleanupUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    return-void
.end method

.method onSystemReady()V
    .locals 3

    .line 116
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 117
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    .line 118
    return-void
.end method

.method onUnlockUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->loadLaunchParams(I)V

    .line 122
    return-void
.end method

.method removeRecordForPackage(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 333
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    .line 334
    .local v4, "launchParamsFolder":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 335
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_1

    .line 336
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 337
    .local v3, "name":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 338
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 339
    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v3    # "name":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 331
    .end local v2    # "userId":I
    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$Jn24e8Qu0NiiVH-qAilJf6vgADQ;

    invoke-direct {v4, p1}, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$Jn24e8Qu0NiiVH-qAilJf6vgADQ;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 349
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 350
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method saveTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 212
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 213
    return-void
.end method

.method saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 216
    iget-object v6, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 217
    .local v6, "name":Landroid/content/ComponentName;
    iget v7, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 219
    .local v7, "userId":I
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 220
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    if-nez v0, :cond_0

    .line 221
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 222
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v0

    goto :goto_0

    .line 220
    :cond_0
    move-object v8, v0

    .line 225
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    :goto_0
    new-instance v0, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$zTtSbQ0CQIRmtys80G-dcYpMGXg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$zTtSbQ0CQIRmtys80G-dcYpMGXg;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    invoke-virtual {v8, v6, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 226
    .local v9, "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/wm/LaunchParamsPersister;->saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result v10

    .line 228
    .local v10, "changed":Z
    iget-object v0, v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 230
    if-eqz v10, :cond_1

    .line 231
    iget-object v11, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v12, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, v7

    move-object v3, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 235
    :cond_1
    return-void
.end method
