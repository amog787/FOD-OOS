.class Lcom/android/server/rollback/RollbackStore;
.super Ljava/lang/Object;
.source "RollbackStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mRollbackDataDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "rollbackDataDir"    # Ljava/io/File;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 79
    return-void
.end method

.method static backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "sourceFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .local v1, "targetDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 258
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    .local v2, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    invoke-static {v3, v4, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 262
    return-void
.end method

.method private static ceSnapshotInodesFromJson(Lorg/json/JSONArray;)Landroid/util/SparseLongArray;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 172
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 173
    .local v0, "ceSnapshotInodes":Landroid/util/SparseLongArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 174
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 175
    .local v2, "entry":Lorg/json/JSONObject;
    const-string v3, "userId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ceSnapshotInode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 173
    .end local v2    # "entry":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static ceSnapshotInodesToJson(Landroid/util/SparseLongArray;)Lorg/json/JSONArray;
    .locals 6
    .param p0, "ceSnapshotInodes"    # Landroid/util/SparseLongArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 160
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 161
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 162
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v2, "entryJson":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    const-string v4, "userId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    const-string v5, "ceSnapshotInode"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 161
    .end local v2    # "entryJson":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static convertToIntArray(Lorg/json/JSONArray;)Landroid/util/IntArray;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 110
    .local v0, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    return-object v1
.end method

.method private static convertToJsonArray(Landroid/util/IntArray;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "intArray"    # Landroid/util/IntArray;

    .line 121
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 123
    invoke-virtual {p0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static convertToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 131
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 132
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 133
    .local v2, "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v3, "jo":Lorg/json/JSONObject;
    iget v4, v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    const-string v5, "userId"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    iget v4, v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    const-string v5, "appId"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    iget-object v4, v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    const-string v5, "seInfo"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 138
    .end local v2    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v3    # "jo":Lorg/json/JSONObject;
    goto :goto_0

    .line 140
    :cond_0
    return-object v0
.end method

.method private static convertToRestoreInfoArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "restoreInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 149
    .local v2, "jo":Lorg/json/JSONObject;
    new-instance v3, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 150
    const-string v4, "userId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 151
    const-string v5, "appId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 152
    const-string v6, "seInfo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "jo":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V
    .locals 5
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 282
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 283
    .local v1, "info":Landroid/content/rollback/PackageRollbackInfo;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    .local v2, "targetDir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 285
    .end local v1    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v2    # "targetDir":Ljava/io/File;
    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method static deleteRollback(Lcom/android/server/rollback/Rollback;)V
    .locals 1
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 318
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 319
    return-void
.end method

.method private static extensionVersionsFromJson(Lorg/json/JSONArray;)Landroid/util/SparseIntArray;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 194
    if-nez p0, :cond_0

    .line 195
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 198
    .local v0, "extensionVersions":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 199
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 200
    .local v2, "entry":Lorg/json/JSONObject;
    nop

    .line 201
    const-string v3, "sdkVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "extensionVersion"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 200
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 198
    .end local v2    # "entry":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static extensionVersionsToJson(Landroid/util/SparseIntArray;)Lorg/json/JSONArray;
    .locals 5
    .param p0, "extensionVersions"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 182
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 183
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 184
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v2, "entryJson":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    const-string v4, "sdkVersion"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-string v4, "extensionVersion"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    .end local v2    # "entryJson":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    .local v0, "targetDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 271
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    return-object v1

    .line 272
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static loadRollback(Ljava/io/File;)Lcom/android/server/rollback/Rollback;
    .locals 3
    .param p0, "backupDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "rollback.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .local v0, "rollbackJsonFile":Ljava/io/File;
    new-instance v1, Lorg/json/JSONObject;

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, "dataJson":Lorg/json/JSONObject;
    invoke-static {v1, p0}, Lcom/android/server/rollback/RollbackStore;->rollbackFromJson(Lorg/json/JSONObject;Ljava/io/File;)Lcom/android/server/rollback/Rollback;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 332
    .end local v0    # "rollbackJsonFile":Ljava/io/File;
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static packageRollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/PackageRollbackInfo;
    .locals 21
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 391
    move-object/from16 v0, p0

    .line 392
    const-string v1, "versionRolledBackFrom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 391
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v1

    .line 393
    .local v1, "versionRolledBackFrom":Landroid/content/pm/VersionedPackage;
    nop

    .line 394
    const-string v2, "versionRolledBackTo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 393
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v12

    .line 396
    .local v12, "versionRolledBackTo":Landroid/content/pm/VersionedPackage;
    nop

    .line 397
    const-string v2, "pendingBackups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 396
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->convertToIntArray(Lorg/json/JSONArray;)Landroid/util/IntArray;

    move-result-object v13

    .line 398
    .local v13, "pendingBackups":Landroid/util/IntArray;
    nop

    .line 399
    const-string v2, "pendingRestores"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 398
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->convertToRestoreInfoArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v14

    .line 401
    .local v14, "pendingRestores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    const-string v2, "isApex"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 402
    .local v15, "isApex":Z
    const-string v2, "isApkInApex"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 405
    .local v16, "isApkInApex":Z
    const-string v2, "installedUsers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->convertToIntArray(Lorg/json/JSONArray;)Landroid/util/IntArray;

    move-result-object v17

    .line 406
    .local v17, "snapshottedUsers":Landroid/util/IntArray;
    nop

    .line 407
    const-string v2, "ceSnapshotInodes"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 406
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->ceSnapshotInodesFromJson(Lorg/json/JSONArray;)Landroid/util/SparseLongArray;

    move-result-object v18

    .line 410
    .local v18, "ceSnapshotInodes":Landroid/util/SparseLongArray;
    const-string v2, "rollbackDataPolicy"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 413
    .local v19, "rollbackDataPolicy":I
    new-instance v20, Landroid/content/rollback/PackageRollbackInfo;

    move-object/from16 v2, v20

    move-object v3, v1

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v15

    move/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Landroid/util/IntArray;Ljava/util/ArrayList;ZZLandroid/util/IntArray;Landroid/util/SparseLongArray;I)V

    return-object v20
.end method

.method private static packageRollbackInfosFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 448
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->packageRollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/PackageRollbackInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static removeFile(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 459
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 461
    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 460
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 467
    :cond_1
    return-void
.end method

.method static rollbackFromJson(Lorg/json/JSONObject;Ljava/io/File;)Lcom/android/server/rollback/Rollback;
    .locals 12
    .param p0, "dataJson"    # Lorg/json/JSONObject;
    .param p1, "backupDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 340
    new-instance v11, Lcom/android/server/rollback/Rollback;

    .line 341
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/RollbackInfo;

    move-result-object v1

    .line 343
    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v3

    .line 344
    const-string v0, "stagedSessionId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 345
    const-string v0, "state"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/Rollback;->rollbackStateFromString(Ljava/lang/String;)I

    move-result v5

    .line 346
    const-string v0, "apkSessionId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 347
    const-string v0, "restoreUserDataInProgress"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 348
    const-string v0, "userId"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 349
    const-string v0, "installerPackageName"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    const-string v0, "extensionVersions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->extensionVersionsFromJson(Lorg/json/JSONArray;)Landroid/util/SparseIntArray;

    move-result-object v10

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/rollback/Rollback;-><init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IIIZILjava/lang/String;Landroid/util/SparseIntArray;)V

    .line 340
    return-object v11
.end method

.method private static rollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/RollbackInfo;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 217
    new-instance v6, Landroid/content/rollback/RollbackInfo;

    .line 218
    const-string v0, "rollbackId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    const-string v0, "packages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->packageRollbackInfosFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 220
    const-string v0, "isStaged"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 221
    const-string v0, "causePackages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->versionedPackagesFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 222
    const-string v0, "committedSessionId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    .line 217
    return-object v6
.end method

.method private static rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "rollback"    # Landroid/content/rollback/RollbackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    const-string v2, "rollbackId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    const-string v2, "isStaged"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 211
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->versionedPackagesToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "causePackages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v1

    const-string v2, "committedSessionId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    return-object v0
.end method

.method static saveRollback(Lcom/android/server/rollback/Rollback;)V
    .locals 5
    .param p0, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 294
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 295
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "info"

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v1, "stagedSessionId"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 298
    const-string v1, "state"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v1, "apkSessionId"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getApkSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    const-string v1, "restoreUserDataInProgress"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 301
    const-string v1, "userId"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string v1, "installerPackageName"

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v1, "extensionVersions"

    .line 304
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->extensionVersionsToJson(Landroid/util/SparseIntArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 303
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "rollback.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 307
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save rollback for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static toJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 437
    .local p0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 438
    .local v0, "json":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 439
    .local v2, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/rollback/PackageRollbackInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 440
    .end local v2    # "info":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 441
    :cond_0
    return-object v0
.end method

.method private static toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/VersionedPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 354
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 355
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v1

    const-string v3, "longVersionCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 357
    return-object v0
.end method

.method private static toJson(Landroid/content/rollback/PackageRollbackInfo;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "info"    # Landroid/content/rollback/PackageRollbackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 367
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 368
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "versionRolledBackFrom"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "versionRolledBackTo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v1

    .line 372
    .local v1, "pendingBackups":Landroid/util/IntArray;
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v2

    .line 373
    .local v2, "pendingRestores":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Landroid/util/IntArray;

    move-result-object v3

    .line 374
    .local v3, "snapshottedUsers":Landroid/util/IntArray;
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->convertToJsonArray(Landroid/util/IntArray;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "pendingBackups"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->convertToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "pendingRestores"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v4

    const-string v5, "isApex"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 378
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v4

    const-string v5, "isApkInApex"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 381
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->convertToJsonArray(Landroid/util/IntArray;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "installedUsers"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getCeSnapshotInodes()Landroid/util/SparseLongArray;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->ceSnapshotInodesToJson(Landroid/util/SparseLongArray;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "ceSnapshotInodes"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v4

    const-string v5, "rollbackDataPolicy"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    return-object v0
.end method

.method private static versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 361
    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "longVersionCode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 363
    .local v1, "longVersionCode":J
    new-instance v3, Landroid/content/pm/VersionedPackage;

    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    return-object v3
.end method

.method private static versionedPackagesFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 431
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static versionedPackagesToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 420
    .local p0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 421
    .local v0, "json":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 422
    .local v2, "pkg":Landroid/content/pm/VersionedPackage;
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 423
    .end local v2    # "pkg":Landroid/content/pm/VersionedPackage;
    goto :goto_0

    .line 424
    :cond_0
    return-object v0
.end method


# virtual methods
.method createNonStagedRollback(IILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;
    .locals 9
    .param p1, "rollbackId"    # I
    .param p2, "userId"    # I
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "packageSessionIds"    # [I
    .param p5, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 231
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    .local v2, "backupDir":Ljava/io/File;
    new-instance v8, Lcom/android/server/rollback/Rollback;

    const/4 v3, -0x1

    move-object v0, v8

    move v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    return-object v8
.end method

.method createStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;
    .locals 9
    .param p1, "rollbackId"    # I
    .param p2, "stagedSessionId"    # I
    .param p3, "userId"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "packageSessionIds"    # [I
    .param p6, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 243
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v2, "backupDir":Ljava/io/File;
    new-instance v8, Lcom/android/server/rollback/Rollback;

    move-object v0, v8

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    return-object v8
.end method

.method loadRollbacks()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    iget-object v1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 87
    iget-object v1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 88
    .local v4, "rollbackDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    :try_start_0
    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->loadRollback(Ljava/io/File;)Lcom/android/server/rollback/Rollback;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 91
    :catch_0
    move-exception v5

    .line 92
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read rollback at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RollbackManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 87
    .end local v4    # "rollbackDir":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    return-object v0
.end method
