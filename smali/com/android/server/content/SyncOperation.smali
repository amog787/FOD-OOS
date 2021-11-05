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

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field private volatile mImmutableExtras:Landroid/os/Bundle;

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

    .line 115
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

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 166
    iget v0, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 167
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 168
    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 169
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 170
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 174
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 175
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    .line 176
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 177
    iget v0, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 178
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 179
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 180
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 181
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 16
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "periodMillis"    # J
    .param p4, "flexMillis"    # J

    .line 127
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget-boolean v9, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iget v10, v0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v1 .. v15}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 130
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

    .line 122
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

    .line 124
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

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 138
    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 139
    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 140
    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 141
    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 143
    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 144
    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 145
    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 146
    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 147
    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 149
    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 150
    iput p14, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 151
    return-void
.end method

.method private static extrasToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 549
    if-nez p0, :cond_0

    .line 550
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    return-void

    .line 553
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
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

    .line 555
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 557
    :cond_1
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    return-void
.end method

.method static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .locals 36
    .param p0, "jobExtras"    # Landroid/os/PersistableBundle;

    .line 262
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 263
    return-object v1

    .line 276
    :cond_0
    const-string v2, "SyncManagerJob"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    return-object v1

    .line 280
    :cond_1
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "accountName":Ljava/lang/String;
    const-string v4, "accountType"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "accountType":Ljava/lang/String;
    const-string/jumbo v6, "provider"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "provider":Ljava/lang/String;
    const-string/jumbo v7, "userId"

    const v8, 0x7fffffff

    invoke-virtual {v0, v7, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 284
    .local v7, "userId":I
    const-string/jumbo v9, "owningUid"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 285
    .local v9, "owningUid":I
    const-string/jumbo v10, "owningPackage"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 286
    .local v25, "owningPackage":Ljava/lang/String;
    const-string/jumbo v10, "reason"

    invoke-virtual {v0, v10, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 287
    .local v26, "reason":I
    const-string/jumbo v10, "source"

    invoke-virtual {v0, v10, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 288
    .local v8, "source":I
    const-string v10, "allowParallelSyncs"

    invoke-virtual {v0, v10, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 289
    .local v27, "allowParallelSyncs":Z
    const-string/jumbo v10, "isPeriodic"

    invoke-virtual {v0, v10, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 290
    .local v28, "isPeriodic":Z
    const/4 v10, -0x1

    const-string/jumbo v11, "sourcePeriodicId"

    invoke-virtual {v0, v11, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 291
    .local v29, "initiatedBy":I
    const-string/jumbo v10, "periodMillis"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 292
    .local v30, "periodMillis":J
    const-string v10, "flexMillis"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 293
    .local v32, "flexMillis":J
    const-string/jumbo v10, "syncExemptionFlag"

    invoke-virtual {v0, v10, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 295
    .local v3, "syncExemptionFlag":I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v15, v10

    .line 297
    .local v15, "extras":Landroid/os/Bundle;
    const-string/jumbo v10, "syncExtras"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v14

    .line 298
    .local v14, "syncExtras":Landroid/os/PersistableBundle;
    if-eqz v14, :cond_2

    .line 299
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 302
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

    .line 303
    .local v11, "key":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v12, "ACCOUNT:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 304
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 305
    .local v12, "newKey":Ljava/lang/String;
    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v13

    .line 306
    .local v13, "accountsBundle":Landroid/os/PersistableBundle;
    move-object/from16 v16, v10

    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v17, v11

    .end local v11    # "key":Ljava/lang/String;
    .local v17, "key":Ljava/lang/String;
    invoke-virtual {v13, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 307
    move-object/from16 v18, v1

    invoke-virtual {v13, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    .line 308
    .local v1, "account":Landroid/accounts/Account;
    invoke-virtual {v15, v12, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 303
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v12    # "newKey":Ljava/lang/String;
    .end local v13    # "accountsBundle":Landroid/os/PersistableBundle;
    .end local v17    # "key":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .line 310
    .end local v11    # "key":Ljava/lang/String;
    :goto_1
    move-object/from16 v10, v16

    move-object/from16 v1, v18

    goto :goto_0

    .line 312
    :cond_4
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .restart local v1    # "account":Landroid/accounts/Account;
    new-instance v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v11, v1, v6, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 315
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
    move v15, v8

    move-object/from16 v16, v35

    move/from16 v17, v27

    move/from16 v18, v28

    move/from16 v19, v29

    move-wide/from16 v20, v30

    move-wide/from16 v22, v32

    move/from16 v24, v3

    invoke-direct/range {v10 .. v24}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 318
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    const-string/jumbo v10, "jobId"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 319
    const-string v10, "expectedRuntime"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 320
    const-string/jumbo v10, "retries"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/content/SyncOperation;->retries:I

    .line 321
    return-object v4
.end method

.method static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    .line 462
    const/4 v0, 0x1

    if-ltz p1, :cond_3

    .line 463
    if-eqz p0, :cond_2

    .line 464
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v2, v0, :cond_0

    .line 466
    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0

    .line 468
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 470
    return-object v0

    .line 472
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 474
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 477
    :cond_3
    neg-int v1, p1

    sub-int/2addr v1, v0

    .line 478
    .local v1, "index":I
    sget-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v2, v0

    if-lt v1, v2, :cond_4

    .line 479
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 481
    :cond_4
    aget-object v0, v0, v1

    return-object v0
.end method

.method private removeExtra(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 590
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    return-void

    .line 593
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 594
    .local v1, "clone":Landroid/os/Bundle;
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 595
    iput-object v1, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 596
    return-void
.end method

.method private toKey()Ljava/lang/String;
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 363
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " account {name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v2, " isPeriodic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 372
    const-string v2, " period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    const-string v2, " flex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 374
    const-string v2, " extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method areExtrasEqual(Landroid/os/Bundle;Z)Z
    .locals 1
    .param p1, "other"    # Landroid/os/Bundle;
    .param p2, "includeSyncSettings"    # Z

    .line 545
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-static {v0, p1, p2}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .locals 17

    .line 155
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    return-object v1

    .line 158
    :cond_0
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v5, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v7, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v8, v0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-boolean v9, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    iget-wide v12, v0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v14, v0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 161
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    return-object v1
.end method

.method dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "shorter"    # Z
    .param p3, "appStates"    # Lcom/android/server/content/SyncAdapterStateFetcher;
    .param p4, "logSafe"    # Z

    .line 390
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 391
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "JobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    if-eqz p4, :cond_0

    const-string v3, "***"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 396
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v3, " u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 398
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 400
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    sget-object v4, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-wide v4, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 404
    const-string v4, " ExpectedIn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-wide v4, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 405
    invoke-static {v1, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 408
    :cond_1
    const/4 v4, 0x0

    const-string v5, "expedited"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 409
    const-string v4, " EXPEDITED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_2
    iget v4, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ExemptionFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 418
    :cond_3
    const-string v4, " STANDBY-EXEMPTED(TOP)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    goto :goto_1

    .line 415
    :cond_4
    const-string v4, " STANDBY-EXEMPTED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    goto :goto_1

    .line 413
    :cond_5
    nop

    .line 424
    :goto_1
    const-string v4, " Reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget v4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v4}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-boolean v4, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_6

    .line 427
    const-string v4, " (period="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-wide v4, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v1, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 429
    const-string v4, " flex="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-wide v4, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-static {v1, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 431
    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_6
    iget v4, p0, Lcom/android/server/content/SyncOperation;->retries:I

    if-lez v4, :cond_7

    .line 434
    const-string v4, " Retries="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget v4, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    :cond_7
    if-nez p2, :cond_9

    .line 438
    const-string v4, " Owner={"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget v4, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    if-eqz p3, :cond_8

    .line 443
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget v3, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 445
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 444
    invoke-virtual {p3, v3, v4}, Lcom/android/server/content/SyncAdapterStateFetcher;->getStandbyBucket(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget v3, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {p3, v3}, Lcom/android/server/content/SyncAdapterStateFetcher;->isAppActive(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 449
    const-string v3, " [ACTIVE]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_8
    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 458
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method enableBackoff()V
    .locals 1

    .line 517
    const-string v0, "ignore_backoff"

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncOperation;->removeExtra(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method enableTwoWaySync()V
    .locals 1

    .line 502
    const-string/jumbo v0, "upload"

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncOperation;->removeExtra(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method findPriority()I
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/16 v0, 0x14

    return v0

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const/16 v0, 0xa

    return v0

    .line 358
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getClonedExtras()Landroid/os/Bundle;
    .locals 2

    .line 599
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getExtrasAsString()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/content/SyncOperation;->extrasToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasDoNotRetry()Z
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "do_not_retry"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method hasIgnoreBackoff()Z
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method hasRequireCharging()Z
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "require_charging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isAppStandbyExempted()Z
    .locals 1

    .line 541
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

    .line 330
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 331
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

    .line 332
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

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 331
    :goto_0
    return v1
.end method

.method isDerivedFromFailedPeriodicSync()Z
    .locals 2

    .line 349
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

    .line 491
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "expedited"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isIgnoreSettings()Z
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "ignore_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInitialization()Z
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isManual()Z
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isNotAllowedOnMetered()Z
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v1, "allow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isReasonPeriodic()Z
    .locals 2

    .line 339
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

.method isUpload()Z
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "upload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .line 343
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 344
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

    .line 343
    :goto_0
    return v1
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "event"    # I

    .line 577
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 578
    .local v0, "logArray":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 579
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 580
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 581
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 582
    return-object v0
.end method

.method toJobInfoExtras()Landroid/os/PersistableBundle;
    .locals 11

    .line 200
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 202
    .local v0, "jobInfoExtras":Landroid/os/PersistableBundle;
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 204
    .local v1, "syncExtrasBundle":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 205
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "accountType"

    const-string v6, "accountName"

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 206
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 207
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Landroid/accounts/Account;

    if-eqz v8, :cond_0

    .line 208
    move-object v8, v7

    check-cast v8, Landroid/accounts/Account;

    .line 209
    .local v8, "account":Landroid/accounts/Account;
    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 210
    .local v9, "accountBundle":Landroid/os/PersistableBundle;
    iget-object v10, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v6, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v6, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACCOUNT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 215
    .end local v8    # "account":Landroid/accounts/Account;
    .end local v9    # "accountBundle":Landroid/os/PersistableBundle;
    goto :goto_1

    :cond_0
    instance-of v5, v7, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 216
    move-object v5, v7

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 217
    :cond_1
    instance-of v5, v7, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 218
    move-object v5, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 219
    :cond_2
    instance-of v5, v7, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 220
    move-object v5, v7

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 221
    :cond_3
    instance-of v5, v7, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 222
    move-object v5, v7

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 223
    :cond_4
    instance-of v5, v7, Ljava/lang/Double;

    if-eqz v5, :cond_5

    .line 224
    move-object v5, v7

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 225
    :cond_5
    instance-of v5, v7, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 226
    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_6
    if-nez v7, :cond_7

    .line 228
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_7
    const-string v5, "SyncManager"

    const-string v6, "Unknown extra type."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :goto_1
    goto/16 :goto_0

    .line 233
    :cond_8
    const-string/jumbo v3, "syncExtras"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 235
    const/4 v3, 0x1

    const-string v4, "SyncManagerJob"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-string/jumbo v4, "provider"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const-string/jumbo v4, "userId"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 241
    iget v3, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    const-string/jumbo v4, "owningUid"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 242
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    const-string/jumbo v4, "owningPackage"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v3, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 244
    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    const-string/jumbo v4, "source"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 245
    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const-string v4, "allowParallelSyncs"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    iget v3, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v4, "jobId"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 247
    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const-string/jumbo v4, "isPeriodic"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    iget v3, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const-string/jumbo v4, "sourcePeriodicId"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 249
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-string/jumbo v5, "periodMillis"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 250
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const-string v5, "flexMillis"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 251
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-string v5, "expectedRuntime"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 252
    iget v3, p0, Lcom/android/server/content/SyncOperation;->retries:I

    const-string/jumbo v4, "retries"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 253
    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const-string/jumbo v4, "syncExemptionFlag"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 254
    return-object v0
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 2

    .line 385
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 381
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wakeLockName()Ljava/lang/String;
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 568
    return-object v0

    .line 570
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
