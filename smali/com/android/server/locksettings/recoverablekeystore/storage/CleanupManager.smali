.class public Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
.super Ljava/lang/Object;
.source "CleanupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CleanupManager"


# instance fields
.field private final mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private mSerialNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Landroid/os/UserManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshotStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p3, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p4, "userManager"    # Landroid/os/UserManager;
    .param p5, "applicationKeyStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 73
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 74
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    .line 75
    iput-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 76
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "snapshotStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p2, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p3, "applicationKeyStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 56
    new-instance v6, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 60
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Landroid/os/UserManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)V

    .line 56
    return-object v6
.end method

.method private removeAllKeysForRecoveryAgent(II)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    move-result v0

    .line 167
    .local v0, "generationId":I
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getAllKeys(III)Ljava/util/Map;

    move-result-object v1

    .line 168
    .local v1, "allKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 171
    .local v3, "alias":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_1

    .line 172
    :catch_0
    move-exception v4

    .line 174
    .local v4, "e":Landroid/os/ServiceSpecificException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while removing recoverable key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CleanupManager"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "e":Landroid/os/ServiceSpecificException;
    :goto_1
    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method private removeDataForUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing data for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CleanupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryAgents(I)Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "recoveryAgents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 154
    .local v2, "uid":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->remove(I)V

    .line 155
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->removeAllKeysForRecoveryAgent(II)V

    .line 156
    .end local v2    # "uid":Ljava/lang/Integer;
    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromAllTables(I)V

    .line 159
    return-void
.end method

.method private storeUserSerialNumber(IJ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "userSerialNumber"    # J

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing serial number for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CleanupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setUserSerialNumber(IJ)J

    .line 140
    return-void
.end method


# virtual methods
.method public declared-synchronized registerRecoveryAgent(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->verifyKnownUsers()V

    .line 87
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 88
    .local v0, "storedSerialNumber":Ljava/lang/Long;
    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v0, v3

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    .line 93
    monitor-exit p0

    return-void

    .line 96
    .restart local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    .line 97
    .local v3, "currentSerialNumber":J
    cmp-long v1, v3, v1

    if-eqz v1, :cond_3

    .line 98
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    :cond_3
    monitor-exit p0

    return-void

    .line 81
    .end local v0    # "storedSerialNumber":Ljava/lang/Long;
    .end local v3    # "currentSerialNumber":J
    .end local p1    # "userId":I
    .end local p2    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized verifyKnownUsers()V
    .locals 11

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getUserSerialNumbers()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    .line 107
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager$1;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V

    .line 108
    .local v0, "deletedUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 110
    .local v3, "userId":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 111
    .local v4, "storedSerialNumber":Ljava/lang/Long;
    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    .line 112
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v4, v7

    .line 114
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    :cond_0
    iget-object v7, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    .line 115
    .local v7, "currentSerialNumber":J
    cmp-long v9, v7, v5

    if-nez v9, :cond_1

    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->removeDataForUser(I)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v5, v9, v5

    if-nez v5, :cond_2

    .line 121
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 124
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->removeDataForUser(I)V

    .line 127
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V

    .line 129
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v3    # "userId":Ljava/lang/Integer;
    .end local v4    # "storedSerialNumber":Ljava/lang/Long;
    .end local v7    # "currentSerialNumber":J
    :cond_3
    :goto_1
    goto :goto_0

    .line 131
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 132
    .local v2, "deletedUser":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    nop

    .end local v2    # "deletedUser":Ljava/lang/Integer;
    goto :goto_2

    .line 134
    :cond_5
    monitor-exit p0

    return-void

    .line 105
    .end local v0    # "deletedUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
