.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
.super Ljava/lang/Object;
.source "RecoverySnapshotStorage.java"


# static fields
.field private static final ROOT_PATH:Ljava/lang/String; = "system"

.field private static final STORAGE_PATH:Ljava/lang/String; = "recoverablekeystore/snapshots/"

.field private static final TAG:Ljava/lang/String; = "RecoverySnapshotStorage"


# instance fields
.field private final mSnapshotByUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/keystore/recovery/KeyChainSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final rootDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDirectory"    # Ljava/io/File;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    .line 75
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->rootDirectory:Ljava/io/File;

    .line 76
    return-void
.end method

.method private getSnapshotFile(I)Ljava/io/File;
    .locals 3
    .param p1, "uid"    # I

    .line 164
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getStorageFolder()Ljava/io/File;

    move-result-object v0

    .line 165
    .local v0, "folder":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getSnapshotFileName(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .line 170
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d.xml"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorageFolder()Ljava/io/File;
    .locals 3

    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->rootDirectory:Ljava/io/File;

    const-string/jumbo v2, "recoverablekeystore/snapshots/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    return-object v0
.end method

.method public static newInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .locals 4

    .line 69
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    new-instance v1, Ljava/io/File;

    .line 70
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;-><init>(Ljava/io/File;)V

    .line 69
    return-object v0
.end method

.method private readFromDisk(I)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object v0

    .line 152
    .local v0, "snapshotFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserialize(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    return-object v2

    .line 151
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "snapshotFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .end local p1    # "uid":I
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "snapshotFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .restart local p1    # "uid":I
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 159
    throw v1
.end method

.method private writeToDisk(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "snapshot"    # Landroid/security/keystore/recovery/KeyChainSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object v0

    .line 129
    .local v0, "snapshotFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    nop

    .line 138
    return-void

    .line 128
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "snapshotFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .end local p1    # "uid":I
    .end local p2    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "snapshotFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .restart local p1    # "uid":I
    .restart local p2    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 136
    throw v1
.end method


# virtual methods
.method public declared-synchronized get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 8
    .param p1, "uid"    # I

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/KeyChainSnapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .local v0, "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    if-eqz v0, :cond_0

    .line 100
    monitor-exit p0

    return-object v0

    .line 104
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->readFromDisk(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 105
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "RecoverySnapshotStorage"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Error reading snapshot for %d from disk"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 97
    .end local v0    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "snapshot"    # Landroid/security/keystore/recovery/KeyChainSnapshot;

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->writeToDisk(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    goto :goto_0

    .line 86
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "RecoverySnapshotStorage"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Error persisting snapshot for %d to disk"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    .end local p1    # "uid":I
    .end local p2    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(I)V
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 114
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
