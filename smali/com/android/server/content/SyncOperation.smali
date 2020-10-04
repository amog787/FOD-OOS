.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"


# static fields
.field public static final NO_JOB_ID:I = -0x1

.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public expectedRuntime:J

.field public final extras:Landroid/os/Bundle;

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field public final owningPackage:Ljava/lang/String;

.field public final owningUid:I

.field public final periodMillis:J

.field public final reason:I

.field retries:I

.field public final sourcePeriodicId:I

.field public syncExemptionFlag:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 57
    const-string v0, "DataSettingsChanged"

    const-string v1, "AccountsUpdated"

    const-string v2, "ServiceChanged"

    const-string v3, "Periodic"

    const-string v4, "IsSyncable"

    const-string v5, "AutoSync"

    const-string v6, "MasterSyncAuto"

    const-string v7, "UserStart"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "owningUid"    # I
    .param p4, "owningPackage"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "source"    # I
    .param p7, "provider"    # Ljava/lang/String;
    .param p8, "extras"    # Landroid/os/Bundle;
    .param p9, "allowParallelSyncs"    # Z
    .param p10, "syncExemptionFlag"    # I

    .line 108
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object v9, p1

    move v10, p2

    move-object/from16 v11, p7

    invoke-direct {v1, p1, v11, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v0, p0

    move v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 158
    iget v0, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 159
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 160
    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 161
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 162
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 163
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 164
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    .line 165
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 166
    iget v0, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 167
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 168
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 169
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 170
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 16
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "periodMillis"    # J
    .param p4, "flexMillis"    # J

    .line 120
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v7, Landroid/os/Bundle;

    iget-object v1, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v7, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget-boolean v9, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iget v10, v0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v1 .. v15}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 123
    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V
    .locals 15
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "owningUid"    # I
    .param p3, "owningPackage"    # Ljava/lang/String;
    .param p4, "reason"    # I
    .param p5, "source"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "allowParallelSyncs"    # Z
    .param p8, "syncExemptionFlag"    # I

    .line 115
    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "owningUid"    # I
    .param p3, "owningPackage"    # Ljava/lang/String;
    .param p4, "reason"    # I
    .param p5, "source"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "allowParallelSyncs"    # Z
    .param p8, "isPeriodic"    # Z
    .param p9, "sourcePeriodicId"    # I
    .param p10, "periodMillis"    # J
    .param p12, "flexMillis"    # J
    .param p14, "syncExemptionFlag"    # I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 130
    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 131
    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 132
    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 133
    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 135
    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 136
    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 137
    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 138
    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 139
    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 141
    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 142
    iput p14, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 143
    return-void
.end method

.method static extrasToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 499
    if-nez p0, :cond_0

    .line 500
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    return-void

    .line 503
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 505
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 507
    :cond_1
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    return-void
.end method

.method static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .locals 36
    .param p0, "jobExtras"    # Landroid/os/PersistableBundle;

    .line 248
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 249
    return-object v1

    .line 262
    :cond_0
    const/4 v2, 0x0

    const-string v3, "SyncManagerJob"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    return-object v1

    .line 266
    :cond_1
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "accountName":Ljava/lang/String;
    const-string v4, "accountType"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "accountType":Ljava/lang/String;
    const-string/jumbo v6, "provider"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "provider":Ljava/lang/String;
    const v7, 0x7fffffff

    const-string/jumbo v8, "userId"

    invoke-virtual {v0, v8, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 270
    .local v8, "userId":I
    const-string/jumbo v9, "owningUid"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 271
    .local v9, "owningUid":I
    const-string/jumbo v10, "owningPackage"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 272
    .local v25, "owningPackage":Ljava/lang/String;
    const-string/jumbo v10, "reason"

    invoke-virtual {v0, v10, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 273
    .local v26, "reason":I
    const-string/jumbo v10, "source"

    invoke-virtual {v0, v10, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 274
    .local v7, "source":I
    const-string v10, "allowParallelSyncs"

    invoke-virtual {v0, v10, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 275
    .local v27, "allowParallelSyncs":Z
    const-string/jumbo v10, "isPeriodic"

    invoke-virtual {v0, v10, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 276
    .local v28, "isPeriodic":Z
    const/4 v10, -0x1

    const-string/jumbo v11, "sourcePeriodicId"

    invoke-virtual {v0, v11, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 277
    .local v29, "initiatedBy":I
    const-string/jumbo v10, "periodMillis"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 278
    .local v30, "periodMillis":J
    const-string v10, "flexMillis"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 279
    .local v32, "flexMillis":J
    const-string/jumbo v10, "syncExemptionFlag"

    invoke-virtual {v0, v10, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 281
    .local v2, "syncExemptionFlag":I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v15, v10

    .line 283
    .local v15, "extras":Landroid/os/Bundle;
    const-string/jumbo v10, "syncExtras"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v14

    .line 284
    .local v14, "syncExtras":Landroid/os/PersistableBundle;
    if-eqz v14, :cond_2

    .line 285
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 288
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 289
    .local v11, "key":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v12, "ACCOUNT:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 290
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 291
    .local v12, "newKey":Ljava/lang/String;
    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v13

    .line 292
    .local v13, "accountsBundle":Landroid/os/PersistableBundle;
    move-object/from16 v16, v10

    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v17, v11

    .end local v11    # "key":Ljava/lang/String;
    .local v17, "key":Ljava/lang/String;
    invoke-virtual {v13, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 293
    move-object/from16 v18, v1

    invoke-virtual {v13, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    .line 294
    .local v1, "account":Landroid/accounts/Account;
    invoke-virtual {v15, v12, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 289
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v12    # "newKey":Ljava/lang/String;
    .end local v13    # "accountsBundle":Landroid/os/PersistableBundle;
    .end local v17    # "key":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .line 296
    .end local v11    # "key":Ljava/lang/String;
    :goto_1
    move-object/from16 v10, v16

    move-object/from16 v1, v18

    goto :goto_0

    .line 298
    :cond_4
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .restart local v1    # "account":Landroid/accounts/Account;
    new-instance v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v11, v1, v6, v8}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 301
    .local v11, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    new-instance v4, Lcom/android/server/content/SyncOperation;

    move-object v10, v4

    move v12, v9

    move-object/from16 v13, v25

    move-object/from16 v34, v14

    .end local v14    # "syncExtras":Landroid/os/PersistableBundle;
    .local v34, "syncExtras":Landroid/os/PersistableBundle;
    move/from16 v14, v26

    move-object/from16 v35, v15

    .end local v15    # "extras":Landroid/os/Bundle;
    .local v35, "extras":Landroid/os/Bundle;
    move v15, v7

    move-object/from16 v16, v35

    move/from16 v17, v27

    move/from16 v18, v28

    move/from16 v19, v29

    move-wide/from16 v20, v30

    move-wide/from16 v22, v32

    move/from16 v24, v2

    invoke-direct/range {v10 .. v24}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 304
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    const-string/jumbo v10, "jobId"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 305
    const-string v10, "expectedRuntime"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 306
    const-string/jumbo v10, "retries"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/content/SyncOperation;->retries:I

    .line 307
    return-object v4
.end method

.method static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    .line 446
    const/4 v0, 0x1

    if-ltz p1, :cond_3

    .line 447
    if-eqz p0, :cond_2

    .line 448
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v2, v0, :cond_0

    .line 450
    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0

    .line 452
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 454
    return-object v0

    .line 456
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 458
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 461
    :cond_3
    neg-int v1, p1

    sub-int/2addr v1, v0

    .line 462
    .local v1, "index":I
    sget-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v2, v0

    if-lt v1, v2, :cond_4

    .line 463
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 465
    :cond_4
    aget-object v0, v0, v1

    return-object v0
.end method

.method private toKey()Ljava/lang/String;
    .locals 3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " account {name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, " isPeriodic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 357
    const-string v1, " period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, " flex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .locals 17

    .line 147
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_0

    .line 148
    const/4 v1, 0x0

    return-object v1

    .line 150
    :cond_0
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v5, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v7, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v8, Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v9, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    iget-wide v12, v0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v14, v0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 153
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    return-object v1
.end method

.method dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "shorter"    # Z
    .param p3, "appStates"    # Lcom/android/server/content/SyncAdapterStateFetcher;
    .param p4, "logSafe"    # Z

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    if-eqz p4, :cond_0

    const-string v2, "***"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v2, " u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    sget-object v3, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 388
    const-string v3, " ExpectedIn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 389
    invoke-static {v0, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 392
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v4, 0x0

    const-string v5, "expedited"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    const-string v3, " EXPEDITED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_2
    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ExemptionFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 402
    :cond_3
    const-string v3, " STANDBY-EXEMPTED(TOP)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    goto :goto_1

    .line 399
    :cond_4
    const-string v3, " STANDBY-EXEMPTED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    goto :goto_1

    .line 397
    :cond_5
    nop

    .line 408
    :goto_1
    const-string v3, " Reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget v3, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v3}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v3, :cond_6

    .line 411
    const-string v3, " (period="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v0, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 413
    const-string v3, " flex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-static {v0, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 415
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_6
    iget v3, p0, Lcom/android/server/content/SyncOperation;->retries:I

    if-lez v3, :cond_7

    .line 418
    const-string v3, " Retries="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget v3, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    :cond_7
    if-nez p2, :cond_9

    .line 422
    const-string v3, " Owner={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget v3, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v0, v3}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    if-eqz p3, :cond_8

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget v2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 429
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 428
    invoke-virtual {p3, v2, v3}, Lcom/android/server/content/SyncAdapterStateFetcher;->getStandbyBucket(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget v2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {p3, v2}, Lcom/android/server/content/SyncAdapterStateFetcher;->isAppActive(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 433
    const-string v2, " [ACTIVE]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_8
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 442
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method findPriority()I
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/16 v0, 0x14

    return v0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const/16 v0, 0xa

    return v0

    .line 344
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method ignoreBackoff()Z
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isAppStandbyExempted()Z
    .locals 1

    .line 495
    iget v0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConflict(Lcom/android/server/content/SyncOperation;)Z
    .locals 3
    .param p1, "toRun"    # Lcom/android/server/content/SyncOperation;

    .line 316
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 317
    .local v0, "other":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 317
    :goto_0
    return v1
.end method

.method isDerivedFromFailedPeriodicSync()Z
    .locals 2

    .line 335
    iget v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isExpedited()Z
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "expedited"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isIgnoreSettings()Z
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInitialization()Z
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isManual()Z
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isNotAllowedOnMetered()Z
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "allow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isReasonPeriodic()Z
    .locals 2

    .line 325
    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .line 329
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 330
    invoke-static {v0, v2, v1}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 329
    :goto_0
    return v1
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "event"    # I

    .line 527
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 528
    .local v0, "logArray":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 529
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 530
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 531
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 532
    return-object v0
.end method

.method toJobInfoExtras()Landroid/os/PersistableBundle;
    .locals 10

    .line 188
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 190
    .local v0, "jobInfoExtras":Landroid/os/PersistableBundle;
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 191
    .local v1, "syncExtrasBundle":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "accountType"

    const-string v5, "accountName"

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 193
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Landroid/accounts/Account;

    if-eqz v7, :cond_0

    .line 194
    move-object v7, v6

    check-cast v7, Landroid/accounts/Account;

    .line 195
    .local v7, "account":Landroid/accounts/Account;
    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    .line 196
    .local v8, "accountBundle":Landroid/os/PersistableBundle;
    iget-object v9, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v5, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACCOUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 201
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v8    # "accountBundle":Landroid/os/PersistableBundle;
    goto :goto_1

    :cond_0
    instance-of v4, v6, Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 202
    move-object v4, v6

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 203
    :cond_1
    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 204
    move-object v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 205
    :cond_2
    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 206
    move-object v4, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 207
    :cond_3
    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 208
    move-object v4, v6

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 209
    :cond_4
    instance-of v4, v6, Ljava/lang/Double;

    if-eqz v4, :cond_5

    .line 210
    move-object v4, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 211
    :cond_5
    instance-of v4, v6, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 212
    move-object v4, v6

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_6
    if-nez v6, :cond_7

    .line 214
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_7
    const-string v4, "SyncManager"

    const-string v5, "Unknown extra type."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_1
    goto/16 :goto_0

    .line 219
    :cond_8
    const-string/jumbo v2, "syncExtras"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 221
    const/4 v2, 0x1

    const-string v3, "SyncManagerJob"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-string/jumbo v3, "provider"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 227
    iget v2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    const-string/jumbo v3, "owningUid"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 228
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    const-string/jumbo v3, "owningPackage"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const-string/jumbo v3, "reason"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 230
    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    const-string/jumbo v3, "source"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 231
    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const-string v3, "allowParallelSyncs"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v3, "jobId"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 233
    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const-string/jumbo v3, "isPeriodic"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    iget v2, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const-string/jumbo v3, "sourcePeriodicId"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 235
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-string/jumbo v4, "periodMillis"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 236
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const-string v4, "flexMillis"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 237
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-string v4, "expectedRuntime"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 238
    iget v2, p0, Lcom/android/server/content/SyncOperation;->retries:I

    const-string/jumbo v3, "retries"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 239
    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const-string/jumbo v3, "syncExemptionFlag"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 240
    return-object v0
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 2

    .line 370
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 366
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wakeLockName()Ljava/lang/String;
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 518
    return-object v0

    .line 520
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0
.end method
