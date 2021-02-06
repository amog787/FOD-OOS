.class public Lcom/android/server/rollback/AppDataRollbackHelper;
.super Ljava/lang/Object;
.source "AppDataRollbackHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 1
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 50
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/ApexManager;)V
    .locals 0
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "apexManager"    # Lcom/android/server/pm/ApexManager;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 56
    iput-object p2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 57
    return-void
.end method

.method private doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z
    .locals 9
    .param p1, "packageRollbackInfo"    # Landroid/content/rollback/PackageRollbackInfo;
    .param p2, "userId"    # I
    .param p3, "rollbackId"    # I
    .param p4, "appId"    # I
    .param p5, "seInfo"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 159
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    goto :goto_1

    .line 166
    :cond_0
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 168
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v0, p2, p3, v2}, Lcom/android/server/pm/ApexManager;->restoreCeData(IILjava/lang/String;)Z

    goto :goto_1

    .line 177
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    move v5, p2

    move v6, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 181
    goto :goto_0

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v4, p4

    move-object v5, p5

    move v6, p2

    move v7, p3

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    nop

    .line 195
    :goto_0
    nop

    .line 197
    :cond_4
    :goto_1
    return v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "ie":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to restore/wipe app data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v2, "RollbackManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    const/4 v1, 0x0

    return v1
.end method

.method private doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z
    .locals 6
    .param p1, "packageRollbackInfo"    # Landroid/content/rollback/PackageRollbackInfo;
    .param p2, "userId"    # I
    .param p3, "rollbackId"    # I
    .param p4, "flags"    # I

    .line 129
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 133
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v0, p2, p3, v2}, Lcom/android/server/pm/ApexManager;->snapshotCeData(IILjava/lang/String;)J

    move-result-wide v2

    .line 134
    .local v2, "ceSnapshotInode":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 135
    invoke-virtual {p1, p2, v2, v3}, Landroid/content/rollback/PackageRollbackInfo;->putCeSnapshotInode(IJ)V

    .line 139
    .end local v2    # "ceSnapshotInode":J
    goto :goto_0

    .line 137
    .restart local v2    # "ceSnapshotInode":J
    :cond_0
    return v1

    .line 143
    .end local v2    # "ceSnapshotInode":J
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 144
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/android/server/pm/Installer;->snapshotAppData(Ljava/lang/String;III)J

    move-result-wide v2

    .line 145
    .restart local v2    # "ceSnapshotInode":J
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p1, p2, v2, v3}, Landroid/content/rollback/PackageRollbackInfo;->putCeSnapshotInode(IJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2    # "ceSnapshotInode":J
    :cond_2
    nop

    .line 154
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ie":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create app data snapshot for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    const-string v3, "RollbackManager"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    return v1
.end method


# virtual methods
.method commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z
    .locals 17
    .param p1, "userId"    # I
    .param p2, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 242
    move/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v0, 0x0

    .line 243
    .local v0, "foundBackupOrRestore":Z
    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/content/rollback/PackageRollbackInfo;

    .line 244
    .local v10, "info":Landroid/content/rollback/PackageRollbackInfo;
    const/4 v1, 0x0

    .line 245
    .local v1, "hasPendingBackup":Z
    const/4 v2, 0x0

    .line 246
    .local v2, "hasPendingRestore":Z
    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v11

    .line 247
    .local v11, "pendingBackupUsers":Landroid/util/IntArray;
    if-eqz v11, :cond_0

    .line 248
    invoke-virtual {v11, v7}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 249
    const/4 v1, 0x1

    .line 250
    const/4 v0, 0x1

    move v12, v1

    goto :goto_1

    .line 254
    :cond_0
    move v12, v1

    .end local v1    # "hasPendingBackup":Z
    .local v12, "hasPendingBackup":Z
    :goto_1
    invoke-virtual {v10, v7}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v13

    .line 255
    .local v13, "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    if-eqz v13, :cond_1

    .line 256
    const/4 v2, 0x1

    .line 257
    const/4 v0, 0x1

    move v14, v0

    move v15, v2

    goto :goto_2

    .line 255
    :cond_1
    move v14, v0

    move v15, v2

    .line 260
    .end local v0    # "foundBackupOrRestore":Z
    .end local v2    # "hasPendingRestore":Z
    .local v14, "foundBackupOrRestore":Z
    .local v15, "hasPendingRestore":Z
    :goto_2
    if-eqz v12, :cond_2

    if-eqz v15, :cond_2

    .line 263
    invoke-virtual {v10, v7}, Landroid/content/rollback/PackageRollbackInfo;->removePendingBackup(I)V

    .line 264
    invoke-virtual {v10, v7}, Landroid/content/rollback/PackageRollbackInfo;->removePendingRestoreInfo(I)V

    .line 265
    goto :goto_4

    .line 268
    :cond_2
    if-eqz v12, :cond_3

    .line 269
    invoke-virtual {v11, v7}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    .line 270
    .local v0, "idx":I
    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 271
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    const/4 v2, 0x2

    .line 270
    move-object/from16 v6, p0

    invoke-direct {v6, v10, v7, v1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    invoke-virtual {v11, v0}, Landroid/util/IntArray;->remove(I)V

    goto :goto_3

    .line 268
    .end local v0    # "idx":I
    :cond_3
    move-object/from16 v6, p0

    .line 276
    :cond_4
    :goto_3
    if-eqz v15, :cond_5

    iget-object v0, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    iget v4, v13, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    iget-object v5, v13, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 278
    invoke-virtual {v10, v13}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V

    .line 280
    .end local v10    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v11    # "pendingBackupUsers":Landroid/util/IntArray;
    .end local v12    # "hasPendingBackup":Z
    .end local v13    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .end local v15    # "hasPendingRestore":Z
    :cond_5
    nop

    .line 243
    :goto_4
    move v0, v14

    goto :goto_0

    .line 281
    .end local v14    # "foundBackupOrRestore":Z
    .local v0, "foundBackupOrRestore":Z
    :cond_6
    return v0
.end method

.method public destroyApexDeSnapshots(I)V
    .locals 1
    .param p1, "rollbackId"    # I

    .line 230
    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->destroyDeSnapshots(I)Z

    .line 231
    return-void
.end method

.method public destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V
    .locals 11
    .param p1, "rollbackId"    # I
    .param p2, "packageRollbackInfo"    # Landroid/content/rollback/PackageRollbackInfo;
    .param p3, "user"    # I

    .line 208
    const/4 v0, 0x1

    .line 209
    .local v0, "storageFlags":I
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getCeSnapshotInodes()Landroid/util/SparseLongArray;

    move-result-object v1

    .line 210
    .local v1, "ceSnapshotInodes":Landroid/util/SparseLongArray;
    invoke-virtual {v1, p3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    .line 211
    .local v9, "ceSnapshotInode":J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-lez v2, :cond_0

    .line 212
    or-int/lit8 v0, v0, 0x2

    .line 215
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

    .line 217
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {v1, p3}, Landroid/util/SparseLongArray;->delete(I)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_1
    goto :goto_0

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "ie":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete app data snapshot for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    const-string v4, "RollbackManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v2    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    return-void
.end method

.method public isUserCredentialLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 289
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0
.end method

.method public restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z
    .locals 15
    .param p1, "rollbackId"    # I
    .param p2, "packageRollbackInfo"    # Landroid/content/rollback/PackageRollbackInfo;
    .param p3, "userId"    # I
    .param p4, "appId"    # I
    .param p5, "seInfo"    # Ljava/lang/String;

    .line 96
    move/from16 v7, p3

    const/4 v0, 0x1

    .line 98
    .local v0, "storageFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v8

    .line 99
    .local v8, "pendingBackups":Landroid/util/IntArray;
    invoke-virtual/range {p2 .. p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v9

    .line 100
    .local v9, "pendingRestores":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    const/4 v1, 0x0

    .line 105
    .local v1, "changedRollback":Z
    if-eqz v8, :cond_0

    invoke-virtual {v8, v7}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 106
    invoke-virtual {v8, v7}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IntArray;->remove(I)V

    .line 107
    const/4 v1, 0x1

    move-object v10, p0

    move/from16 v11, p4

    move-object/from16 v12, p5

    move v13, v0

    move v14, v1

    goto :goto_0

    .line 111
    :cond_0
    move-object v10, p0

    invoke-virtual {p0, v7}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    new-instance v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct {v2, v7, v11, v12}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v1, 0x1

    move v13, v0

    move v14, v1

    goto :goto_0

    .line 118
    :cond_1
    move/from16 v11, p4

    move-object/from16 v12, p5

    or-int/lit8 v0, v0, 0x2

    move v13, v0

    move v14, v1

    .line 122
    .end local v0    # "storageFlags":I
    .end local v1    # "changedRollback":Z
    .local v13, "storageFlags":I
    .local v14, "changedRollback":Z
    :goto_0
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    .line 124
    return v14
.end method

.method public snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V
    .locals 5
    .param p1, "rollbackId"    # I
    .param p2, "packageRollbackInfo"    # Landroid/content/rollback/PackageRollbackInfo;
    .param p3, "userIds"    # [I

    .line 68
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p3, v1

    .line 70
    .local v2, "user":I
    invoke-virtual {p0, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isn\'t unlocked, skipping CE userdata backup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RollbackManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v3, 0x1

    .line 75
    .local v3, "storageFlags":I
    invoke-virtual {p2, v2}, Landroid/content/rollback/PackageRollbackInfo;->addPendingBackup(I)V

    goto :goto_1

    .line 77
    .end local v3    # "storageFlags":I
    :cond_0
    const/4 v3, 0x3

    .line 80
    .restart local v3    # "storageFlags":I
    :goto_1
    invoke-direct {p0, p2, v2, p1, v3}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    .line 68
    .end local v2    # "user":I
    .end local v3    # "storageFlags":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method
