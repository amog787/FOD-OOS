.class public Lcom/android/server/rollback/AppDataRollbackHelper;
.super Ljava/lang/Object;
.source "AppDataRollbackHelper.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 52
    return-void
.end method

.method private static computePendingBackups(ILjava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation

    .line 167
    .local p1, "pendingBackupPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/rollback/PackageRollbackInfo;>;"
    .local p2, "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "rd":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 170
    .local v2, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 171
    .local v4, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v5

    .line 172
    .local v5, "pendingBackupUsers":Landroid/util/IntArray;
    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {v5, p0}, Landroid/util/IntArray;->indexOf(I)I

    move-result v6

    .line 174
    .local v6, "idx":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 175
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v4    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v5    # "pendingBackupUsers":Landroid/util/IntArray;
    .end local v6    # "idx":I
    :cond_0
    goto :goto_1

    .line 182
    .end local v2    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_1
    goto :goto_0

    .line 183
    :cond_2
    return-object v0
.end method

.method private static computePendingRestores(ILjava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation

    .line 197
    .local p1, "pendingRestorePackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/rollback/PackageRollbackInfo;>;"
    .local p2, "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "rd":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 200
    .local v2, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 201
    .local v4, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v4, p0}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v5

    .line 202
    .local v5, "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    if-eqz v5, :cond_0

    .line 203
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 205
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v4    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v5    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    :cond_0
    goto :goto_1

    .line 209
    .end local v2    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_1
    goto :goto_0

    .line 211
    :cond_2
    return-object v0
.end method


# virtual methods
.method public commitPendingBackupAndRestoreForUser(ILjava/util/List;)Ljava/util/Set;
    .locals 22
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation

    .line 224
    .local p2, "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 225
    .local v11, "pendingBackupPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/rollback/PackageRollbackInfo;>;"
    invoke-static {v9, v11, v10}, Lcom/android/server/rollback/AppDataRollbackHelper;->computePendingBackups(ILjava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 228
    .local v12, "pendingBackups":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    .line 229
    .local v13, "pendingRestorePackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/rollback/PackageRollbackInfo;>;"
    invoke-static {v9, v13, v10}, Lcom/android/server/rollback/AppDataRollbackHelper;->computePendingRestores(ILjava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 234
    .local v14, "pendingRestores":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    nop

    .line 235
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 236
    .local v15, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/rollback/PackageRollbackInfo;>;>;"
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 238
    .local v0, "backupPackage":Landroid/content/rollback/PackageRollbackInfo;
    nop

    .line 239
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 240
    .local v2, "restorePackage":Landroid/content/rollback/PackageRollbackInfo;
    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v0, v9}, Landroid/content/rollback/PackageRollbackInfo;->removePendingBackup(I)V

    .line 242
    invoke-virtual {v0, v9}, Landroid/content/rollback/PackageRollbackInfo;->removePendingRestoreInfo(I)V

    .line 243
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    .line 244
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v0    # "backupPackage":Landroid/content/rollback/PackageRollbackInfo;
    .end local v2    # "restorePackage":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v8, "RollbackManager"

    if-nez v0, :cond_4

    .line 249
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 250
    .local v3, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v0, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 251
    .local v5, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v6

    .line 252
    .local v6, "pendingBackupUsers":Landroid/util/IntArray;
    invoke-virtual {v6, v9}, Landroid/util/IntArray;->indexOf(I)I

    move-result v7

    .line 253
    .local v7, "idx":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    .line 255
    :try_start_0
    iget-object v0, v1, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v16, v2

    :try_start_1
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v4

    :try_start_2
    iget-object v4, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 256
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v18, v3

    .end local v3    # "data":Lcom/android/server/rollback/RollbackData;
    .local v18, "data":Lcom/android/server/rollback/RollbackData;
    const/4 v3, 0x2

    .line 255
    :try_start_3
    invoke-virtual {v0, v2, v9, v4, v3}, Lcom/android/server/pm/Installer;->snapshotAppData(Ljava/lang/String;III)J

    move-result-wide v2

    .line 257
    .local v2, "ceSnapshotInode":J
    invoke-virtual {v5, v9, v2, v3}, Landroid/content/rollback/PackageRollbackInfo;->putCeSnapshotInode(IJ)V

    .line 258
    invoke-virtual {v6, v7}, Landroid/util/IntArray;->remove(I)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 263
    .end local v2    # "ceSnapshotInode":J
    goto :goto_5

    .line 259
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v18    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v3    # "data":Lcom/android/server/rollback/RollbackData;
    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    :goto_3
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .line 260
    .end local v3    # "data":Lcom/android/server/rollback/RollbackData;
    .local v0, "ie":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v18    # "data":Lcom/android/server/rollback/RollbackData;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create app data snapshot for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v8, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 253
    .end local v0    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    .end local v18    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v3    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .line 265
    .end local v3    # "data":Lcom/android/server/rollback/RollbackData;
    .end local v5    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v6    # "pendingBackupUsers":Landroid/util/IntArray;
    .end local v7    # "idx":I
    .restart local v18    # "data":Lcom/android/server/rollback/RollbackData;
    :goto_5
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto :goto_2

    .line 250
    .end local v18    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v3    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 266
    .end local v3    # "data":Lcom/android/server/rollback/RollbackData;
    goto/16 :goto_1

    .line 269
    :cond_4
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 270
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/rollback/RollbackData;

    .line 271
    .local v7, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v0, v7, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/rollback/PackageRollbackInfo;

    .line 272
    .local v6, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v6, v9}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v5

    .line 273
    .local v5, "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    if-eqz v5, :cond_5

    .line 275
    :try_start_4
    iget-object v2, v1, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v5, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    iget-object v0, v5, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 276
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_6

    const/16 v18, 0x2

    .line 275
    move-object/from16 v19, v5

    .end local v5    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .local v19, "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    move-object v5, v0

    move-object/from16 v20, v6

    .end local v6    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .local v20, "info":Landroid/content/rollback/PackageRollbackInfo;
    move/from16 v6, p1

    move-object/from16 v21, v7

    .end local v7    # "data":Lcom/android/server/rollback/RollbackData;
    .local v21, "data":Lcom/android/server/rollback/RollbackData;
    move v7, v1

    move-object v1, v8

    move/from16 v8, v18

    :try_start_5
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 278
    move-object/from16 v3, v19

    move-object/from16 v2, v20

    .end local v19    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v20    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .local v2, "info":Landroid/content/rollback/PackageRollbackInfo;
    .local v3, "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    :try_start_6
    invoke-virtual {v2, v3}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_4

    .line 282
    goto :goto_9

    .line 279
    :catch_4
    move-exception v0

    goto :goto_8

    .end local v2    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v3    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .restart local v19    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .restart local v20    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :catch_5
    move-exception v0

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    .end local v19    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v20    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v2    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v3    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    goto :goto_8

    .end local v2    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v3    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v21    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v5    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .restart local v6    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v7    # "data":Lcom/android/server/rollback/RollbackData;
    :catch_6
    move-exception v0

    move-object v3, v5

    move-object v2, v6

    move-object/from16 v21, v7

    move-object v1, v8

    .line 280
    .end local v5    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v6    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v7    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v0    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v2    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v3    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .restart local v21    # "data":Lcom/android/server/rollback/RollbackData;
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to restore app data snapshot for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 273
    .end local v0    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    .end local v2    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v3    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v21    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v5    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .restart local v6    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v7    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_5
    move-object v3, v5

    move-object v2, v6

    move-object/from16 v21, v7

    move-object v1, v8

    .line 284
    .end local v5    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v6    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v7    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v21    # "data":Lcom/android/server/rollback/RollbackData;
    :goto_9
    move-object v8, v1

    move-object/from16 v7, v21

    move-object/from16 v1, p0

    goto :goto_7

    .line 271
    .end local v21    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v7    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_6
    move-object/from16 v21, v7

    move-object v1, v8

    .line 285
    .end local v7    # "data":Lcom/android/server/rollback/RollbackData;
    move-object/from16 v1, p0

    goto/16 :goto_6

    .line 288
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 289
    .local v0, "changed":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/rollback/RollbackData;>;"
    invoke-interface {v0, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 290
    return-object v0
.end method

.method public destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V
    .locals 11
    .param p1, "rollbackId"    # I
    .param p2, "packageRollbackInfo"    # Landroid/content/rollback/PackageRollbackInfo;
    .param p3, "user"    # I

    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, "storageFlags":I
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getCeSnapshotInodes()Landroid/util/SparseLongArray;

    move-result-object v1

    .line 140
    .local v1, "ceSnapshotInodes":Landroid/util/SparseLongArray;
    invoke-virtual {v1, p3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    .line 141
    .local v9, "ceSnapshotInode":J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-lez v2, :cond_0

    .line 142
    or-int/lit8 v0, v0, 0x2

    .line 145
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v4, p3

    move-wide v5, v9

    move v7, p1

    move v8, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppDataSnapshot(Ljava/lang/String;IJII)Z

    .line 147
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v1, p3}, Landroid/util/SparseLongArray;->delete(I)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "ie":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete app data snapshot for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    const-string v4, "RollbackManager"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v2    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    return-void
.end method

.method public isUserCredentialLocked(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 298
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0
.end method

.method public restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z
    .locals 16
    .param p1, "rollbackId"    # I
    .param p2, "packageRollbackInfo"    # Landroid/content/rollback/PackageRollbackInfo;
    .param p3, "userId"    # I
    .param p4, "appId"    # I
    .param p5, "seInfo"    # Ljava/lang/String;

    .line 95
    move-object/from16 v1, p0

    move/from16 v9, p3

    const/4 v0, 0x1

    .line 97
    .local v0, "storageFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v10

    .line 98
    .local v10, "pendingBackups":Landroid/util/IntArray;
    invoke-virtual/range {p2 .. p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v11

    .line 99
    .local v11, "pendingRestores":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    const/4 v2, 0x0

    .line 104
    .local v2, "changedRollbackData":Z
    if-eqz v10, :cond_0

    invoke-virtual {v10, v9}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 105
    invoke-virtual {v10, v9}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/util/IntArray;->remove(I)V

    .line 106
    const/4 v2, 0x1

    move/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v0

    move v15, v2

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v1, v9}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    new-instance v3, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct {v3, v9, v12, v13}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v2, 0x1

    move v14, v0

    move v15, v2

    goto :goto_0

    .line 117
    :cond_1
    move/from16 v12, p4

    move-object/from16 v13, p5

    or-int/lit8 v0, v0, 0x2

    move v14, v0

    move v15, v2

    .line 122
    .end local v0    # "storageFlags":I
    .end local v2    # "changedRollbackData":Z
    .local v14, "storageFlags":I
    .local v15, "changedRollbackData":Z
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual/range {p2 .. p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p1

    move v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ie":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore app data snapshot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v3, "RollbackManager"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    :goto_1
    return v15
.end method

.method public snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;)V
    .locals 9
    .param p1, "snapshotId"    # I
    .param p2, "packageRollbackInfo"    # Landroid/content/rollback/PackageRollbackInfo;

    .line 59
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getInstalledUsers()Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    .line 60
    .local v0, "installedUsers":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 62
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v4

    const-string v5, "RollbackManager"

    if-eqz v4, :cond_0

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isn\'t unlocked, skipping CE userdata backup."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v4, 0x1

    .line 67
    .local v4, "storageFlags":I
    invoke-virtual {p2, v3}, Landroid/content/rollback/PackageRollbackInfo;->addPendingBackup(I)V

    goto :goto_1

    .line 69
    .end local v4    # "storageFlags":I
    :cond_0
    const/4 v4, 0x3

    .line 73
    .restart local v4    # "storageFlags":I
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 74
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v6, v7, v3, p1, v4}, Lcom/android/server/pm/Installer;->snapshotAppData(Ljava/lang/String;III)J

    move-result-wide v6

    .line 75
    .local v6, "ceSnapshotInode":J
    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_1

    .line 76
    invoke-virtual {p2, v3, v6, v7}, Landroid/content/rollback/PackageRollbackInfo;->putCeSnapshotInode(IJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v6    # "ceSnapshotInode":J
    :cond_1
    goto :goto_2

    .line 78
    :catch_0
    move-exception v6

    .line 79
    .local v6, "ie":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create app data snapshot for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", userId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-static {v5, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v3    # "user":I
    .end local v4    # "storageFlags":I
    .end local v6    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method
