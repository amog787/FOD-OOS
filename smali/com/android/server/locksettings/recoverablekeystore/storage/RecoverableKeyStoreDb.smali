.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreDb.java"


# static fields
.field private static final CERT_PATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field private static final IDLE_TIMEOUT_SECONDS:I = 0x1e

.field private static final LAST_SYNCED_AT_UNSYNCED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreDb"


# instance fields
.field private final mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

.field private final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V
    .locals 1
    .param p1, "keyStoreDbHelper"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 83
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 84
    return-void
.end method

.method private static decodeCertPath([B)Ljava/security/cert/CertPath;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1362
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 1367
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "PkiPath"

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1

    .line 1363
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decodeX509Key([B)Ljava/security/PublicKey;
    .locals 3
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1349
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1351
    .local v0, "publicKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1352
    :catch_0
    move-exception v1

    .line 1354
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private ensureRecoveryServiceMetadataEntryExists(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 1306
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1307
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1308
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1312
    return-void
.end method

.method private ensureRootOfTrustEntryExists(IILjava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;

    .line 1319
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1320
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1321
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    const-string/jumbo v2, "root_alias"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string/jumbo v2, "root_of_trust"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1326
    return-void
.end method

.method private ensureUserMetadataEntryExists(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1333
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1334
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1335
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1336
    const-string/jumbo v2, "user_metadata"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1338
    return-void
.end method

.method private getBytes(IILjava/lang/String;)[B
    .locals 17
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 1002
    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 1004
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v12, 0x0

    aput-object v0, v5, v12

    const-string/jumbo v0, "user_id"

    const/4 v13, 0x1

    aput-object v0, v5, v13

    const-string/jumbo v0, "uid"

    const/4 v14, 0x2

    aput-object v0, v5, v14

    const/4 v0, 0x3

    aput-object v1, v5, v0

    .line 1009
    .local v5, "projection":[Ljava/lang/String;
    const-string/jumbo v15, "user_id = ? AND uid = ?"

    .line 1012
    .local v15, "selection":Ljava/lang/String;
    new-array v7, v14, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    .line 1015
    .local v7, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v4, "recovery_service_metadata"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    move-object v6, v15

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1024
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    .local v4, "count":I
    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 1026
    nop

    .line 1042
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1026
    :cond_0
    return-object v6

    .line 1028
    :cond_1
    if-le v4, v13, :cond_3

    .line 1029
    :try_start_1
    const-string v8, "RecoverableKeyStoreDb"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v0, v0, [Ljava/lang/Object;

    .line 1032
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v14

    .line 1030
    invoke-static {v9, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    nop

    .line 1042
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1033
    :cond_2
    return-object v6

    .line 1035
    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1036
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1037
    .local v0, "idx":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    .line 1038
    nop

    .line 1042
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1038
    :cond_4
    return-object v6

    .line 1040
    :cond_5
    :try_start_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1042
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1040
    :cond_6
    return-object v6

    .line 1014
    .end local v0    # "idx":I
    .end local v4    # "count":I
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_7

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw v4
.end method

.method private getBytes(IILjava/lang/String;Ljava/lang/String;)[B
    .locals 17
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .line 1082
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    .end local p3    # "rootAlias":Ljava/lang/String;
    .local v3, "rootAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 1085
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v13, 0x0

    aput-object v0, v6, v13

    const-string/jumbo v0, "user_id"

    const/4 v14, 0x1

    aput-object v0, v6, v14

    const-string/jumbo v0, "uid"

    const/4 v15, 0x2

    aput-object v0, v6, v15

    const-string/jumbo v0, "root_alias"

    const/4 v11, 0x3

    aput-object v0, v6, v11

    const/4 v0, 0x4

    aput-object v2, v6, v0

    .line 1091
    .local v6, "projection":[Ljava/lang/String;
    const-string/jumbo v16, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1095
    .local v16, "selection":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    aput-object v3, v8, v15

    .line 1098
    .local v8, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v5, "root_of_trust"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v4, v12

    move-object/from16 v7, v16

    move v15, v11

    move-object v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1107
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    .local v0, "count":I
    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 1109
    nop

    .line 1125
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1109
    :cond_0
    return-object v5

    .line 1111
    :cond_1
    if-le v0, v14, :cond_3

    .line 1112
    :try_start_1
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v11, v15, [Ljava/lang/Object;

    .line 1115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v11, v14

    .line 1113
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1112
    invoke-static {v7, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    nop

    .line 1125
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1116
    :cond_2
    return-object v5

    .line 1118
    :cond_3
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1119
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1120
    .local v7, "idx":I
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_5

    .line 1121
    nop

    .line 1125
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1121
    :cond_4
    return-object v5

    .line 1123
    :cond_5
    :try_start_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1125
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1123
    :cond_6
    return-object v5

    .line 1097
    .end local v0    # "count":I
    .end local v7    # "idx":I
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_7

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw v5
.end method

.method private getLong(IILjava/lang/String;)Ljava/lang/Long;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 922
    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 924
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v12, 0x0

    aput-object v0, v5, v12

    const-string/jumbo v0, "user_id"

    const/4 v13, 0x1

    aput-object v0, v5, v13

    const-string/jumbo v0, "uid"

    const/4 v14, 0x2

    aput-object v0, v5, v14

    const/4 v0, 0x3

    aput-object v1, v5, v0

    .line 929
    .local v5, "projection":[Ljava/lang/String;
    const-string/jumbo v15, "user_id = ? AND uid = ?"

    .line 932
    .local v15, "selection":Ljava/lang/String;
    new-array v7, v14, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    .line 935
    .local v7, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v4, "recovery_service_metadata"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    move-object v6, v15

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 944
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    .local v4, "count":I
    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 946
    nop

    .line 962
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 946
    :cond_0
    return-object v6

    .line 948
    :cond_1
    if-le v4, v13, :cond_3

    .line 949
    :try_start_1
    const-string v8, "RecoverableKeyStoreDb"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v0, v0, [Ljava/lang/Object;

    .line 952
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v14

    .line 950
    invoke-static {v9, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    nop

    .line 962
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 953
    :cond_2
    return-object v6

    .line 955
    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 956
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 957
    .local v0, "idx":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    .line 958
    nop

    .line 962
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_4
    return-object v6

    .line 960
    :cond_5
    :try_start_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 962
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 960
    :cond_6
    return-object v6

    .line 934
    .end local v0    # "idx":I
    .end local v4    # "count":I
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_7

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw v4
.end method

.method private getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .line 1168
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1169
    .end local p3    # "rootAlias":Ljava/lang/String;
    .local v3, "rootAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 1171
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v13, 0x0

    aput-object v0, v6, v13

    const-string/jumbo v0, "user_id"

    const/4 v14, 0x1

    aput-object v0, v6, v14

    const-string/jumbo v0, "uid"

    const/4 v15, 0x2

    aput-object v0, v6, v15

    const-string/jumbo v0, "root_alias"

    const/4 v11, 0x3

    aput-object v0, v6, v11

    const/4 v0, 0x4

    aput-object v2, v6, v0

    .line 1177
    .local v6, "projection":[Ljava/lang/String;
    const-string/jumbo v16, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1181
    .local v16, "selection":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    aput-object v3, v8, v15

    .line 1184
    .local v8, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v5, "root_of_trust"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v4, v12

    move-object/from16 v7, v16

    move v15, v11

    move-object v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1193
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    .local v0, "count":I
    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 1195
    nop

    .line 1211
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_0
    return-object v5

    .line 1197
    :cond_1
    if-le v0, v14, :cond_3

    .line 1198
    :try_start_1
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v11, v15, [Ljava/lang/Object;

    .line 1201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v11, v14

    .line 1199
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1198
    invoke-static {v7, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1202
    nop

    .line 1211
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1202
    :cond_2
    return-object v5

    .line 1204
    :cond_3
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1205
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1206
    .local v7, "idx":I
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_5

    .line 1207
    nop

    .line 1211
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1207
    :cond_4
    return-object v5

    .line 1209
    :cond_5
    :try_start_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1211
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1209
    :cond_6
    return-object v5

    .line 1183
    .end local v0    # "count":I
    .end local v7    # "idx":I
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_7

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw v5
.end method

.method static synthetic lambda$setRecoverySecretTypes$0(Ljava/util/StringJoiner;I)V
    .locals 1
    .param p0, "joiner"    # Ljava/util/StringJoiner;
    .param p1, "i"    # I

    .line 624
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "helper":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 77
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->setIdleConnectionTimeout(J)V

    .line 78
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V

    return-object v1
.end method

.method private removeUserFromKeysTable(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 1259
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1260
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "user_id = ?"

    .line 1261
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1262
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, "keys"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method

.method private removeUserFromRecoveryServiceMetadataTable(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 1283
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1284
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "user_id = ?"

    .line 1285
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1286
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, "recovery_service_metadata"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method

.method private removeUserFromRootOfTrustTable(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 1295
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1296
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "user_id = ?"

    .line 1297
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1298
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, "root_of_trust"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method

.method private removeUserFromUserMetadataTable(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 1271
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1272
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "user_id = ?"

    .line 1273
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1274
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, "user_metadata"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method

.method private setBytes(IILjava/lang/String;Ljava/lang/String;[B)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # [B

    .line 1141
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1142
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1143
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1144
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1145
    const-string/jumbo v2, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1149
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 1151
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 1152
    const-string/jumbo v4, "root_of_trust"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method

.method private setBytes(IILjava/lang/String;[B)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # [B

    .line 1057
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1058
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1059
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1060
    const-string/jumbo v2, "user_id = ? AND uid = ?"

    .line 1063
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1065
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 1066
    const-string/jumbo v4, "recovery_service_metadata"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method

.method private setLong(IILjava/lang/String;J)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # J

    .line 978
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 979
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 980
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 981
    const-string/jumbo v2, "user_id = ? AND uid = ?"

    .line 984
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 986
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 987
    const-string/jumbo v4, "recovery_service_metadata"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method

.method private setLong(IILjava/lang/String;Ljava/lang/String;J)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # J

    .line 1228
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1229
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1230
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1231
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1232
    const-string/jumbo v2, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1236
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 1238
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 1239
    const-string/jumbo v4, "root_of_trust"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->close()V

    .line 1345
    return-void
.end method

.method public getActiveRootOfTrust(II)Ljava/lang/String;
    .locals 16
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 733
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 735
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "_id"

    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "uid"

    const-string v11, "active_root_of_trust"

    filled-new-array {v0, v2, v3, v11}, [Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v12, "user_id = ? AND uid = ?"

    .line 743
    .local v12, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v6, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    aput-object v2, v6, v14

    .line 746
    .local v6, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v3, "recovery_service_metadata"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v5, v12

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 755
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    .local v3, "count":I
    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 757
    nop

    .line 777
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 757
    :cond_0
    return-object v5

    .line 759
    :cond_1
    if-le v3, v14, :cond_3

    .line 760
    :try_start_1
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 763
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v0

    .line 761
    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 760
    invoke-static {v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    nop

    .line 777
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 764
    :cond_2
    return-object v5

    .line 766
    :cond_3
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 767
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 769
    .local v0, "idx":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_5

    .line 770
    nop

    .line 777
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 770
    :cond_4
    return-object v5

    .line 772
    :cond_5
    :try_start_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 773
    .local v7, "result":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_7

    .line 774
    nop

    .line 777
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_6
    return-object v5

    .line 776
    :cond_7
    nop

    .line 777
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 776
    :cond_8
    return-object v7

    .line 745
    .end local v0    # "idx":I
    .end local v3    # "count":I
    .end local v7    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_9

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_0
    throw v3
.end method

.method public getAllKeys(III)Ljava/util/Map;
    .locals 18
    .param p1, "userId"    # I
    .param p2, "recoveryAgentUid"    # I
    .param p3, "platformKeyGenerationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;",
            ">;"
        }
    .end annotation

    .line 267
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 268
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "_id"

    const-string/jumbo v3, "nonce"

    const-string/jumbo v4, "wrapped_key"

    const-string v5, "alias"

    const-string/jumbo v6, "recovery_status"

    const-string/jumbo v7, "key_metadata"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v11, "user_id = ? AND uid = ? AND platform_key_generation_id = ?"

    .line 279
    .local v11, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    .line 280
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v6, v2

    .line 281
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v6, v2

    .line 282
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v6, v2

    .line 286
    .local v6, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v3, "keys"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v5, v11

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 295
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v0, "keys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    const-string/jumbo v3, "nonce"

    .line 298
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 297
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 299
    .local v13, "nonce":[B
    const-string/jumbo v3, "wrapped_key"

    .line 300
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 299
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 301
    .local v14, "keyMaterial":[B
    const-string v3, "alias"

    .line 302
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 301
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "alias":Ljava/lang/String;
    const-string/jumbo v5, "recovery_status"

    .line 304
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 303
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 308
    .local v17, "recoveryStatus":I
    const-string/jumbo v5, "key_metadata"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 309
    .local v5, "metadataIdx":I
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    const/4 v7, 0x0

    .local v7, "keyMetadata":[B
    goto :goto_1

    .line 312
    .end local v7    # "keyMetadata":[B
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 315
    .restart local v7    # "keyMetadata":[B
    :goto_1
    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-object v12, v8

    move-object v15, v7

    move/from16 v16, p3

    invoke-direct/range {v12 .. v17}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    nop

    .end local v3    # "alias":Ljava/lang/String;
    .end local v5    # "metadataIdx":I
    .end local v7    # "keyMetadata":[B
    .end local v13    # "nonce":[B
    .end local v14    # "keyMaterial":[B
    .end local v17    # "recoveryStatus":I
    goto :goto_0

    .line 318
    :cond_1
    nop

    .line 319
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_2
    return-object v0

    .line 285
    .end local v0    # "keys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v3
.end method

.method public getCounterId(II)Ljava/lang/Long;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 806
    const-string v0, "counter_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getKey(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .locals 18
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 123
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 124
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "_id"

    const-string/jumbo v3, "nonce"

    const-string/jumbo v4, "wrapped_key"

    const-string/jumbo v5, "platform_key_generation_id"

    const-string/jumbo v6, "recovery_status"

    const-string/jumbo v7, "key_metadata"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v11, "uid = ? AND alias = ?"

    .line 134
    .local v11, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v6, v12

    const/4 v13, 0x1

    aput-object p2, v6, v13

    .line 137
    .local v6, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v3, "keys"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v5, v11

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 146
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .local v3, "count":I
    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 148
    nop

    .line 177
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_0
    return-object v5

    .line 150
    :cond_1
    if-le v3, v13, :cond_3

    .line 151
    :try_start_1
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d WrappedKey entries found for uid=%d alias=\'%s\'. Should only ever be 0 or 1."

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v13

    aput-object p2, v14, v0

    .line 152
    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    nop

    .line 177
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_2
    return-object v5

    .line 157
    :cond_3
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    const-string/jumbo v0, "nonce"

    .line 159
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 158
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 160
    .local v13, "nonce":[B
    const-string/jumbo v0, "wrapped_key"

    .line 161
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 162
    .local v14, "keyMaterial":[B
    const-string/jumbo v0, "platform_key_generation_id"

    .line 163
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 162
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 164
    .local v16, "generationId":I
    const-string/jumbo v0, "recovery_status"

    .line 165
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 164
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 169
    .local v17, "recoveryStatus":I
    const-string/jumbo v0, "key_metadata"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "metadataIdx":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 171
    const/4 v5, 0x0

    .local v5, "keyMetadata":[B
    goto :goto_0

    .line 173
    .end local v5    # "keyMetadata":[B
    :cond_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 176
    .restart local v5    # "keyMetadata":[B
    :goto_0
    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-object v12, v7

    move-object v15, v5

    invoke-direct/range {v12 .. v17}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_5
    return-object v7

    .line 136
    .end local v0    # "metadataIdx":I
    .end local v3    # "count":I
    .end local v5    # "keyMetadata":[B
    .end local v13    # "nonce":[B
    .end local v14    # "keyMaterial":[B
    .end local v16    # "generationId":I
    .end local v17    # "recoveryStatus":I
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_6

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v3
.end method

.method public getPlatformKeyGenerationId(I)I
    .locals 11
    .param p1, "userId"    # I

    .line 425
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 426
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v9, "platform_key_generation_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v10, "user_id = ?"

    .line 430
    .local v10, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 434
    .local v5, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v2, "user_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 443
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 444
    const/4 v2, -0x1

    .line 450
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_0
    return v2

    .line 446
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 447
    nop

    .line 448
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 447
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_2
    return v2

    .line 433
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method public getRecoveryAgents(I)Ljava/util/List;
    .locals 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 556
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v9, "uid"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v10, "user_id = ?"

    .line 558
    .local v10, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 561
    .local v5, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 570
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 571
    .local v2, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 573
    nop

    .line 574
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 573
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 575
    .local v6, "uid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    nop

    .end local v6    # "uid":I
    goto :goto_0

    .line 577
    :cond_0
    nop

    .line 578
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_1
    return-object v4

    .line 560
    .end local v2    # "count":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public getRecoverySecretTypes(II)[I
    .locals 16
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 645
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 647
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "_id"

    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "uid"

    const-string/jumbo v11, "secret_types"

    filled-new-array {v0, v2, v3, v11}, [Ljava/lang/String;

    move-result-object v4

    .line 652
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v12, "user_id = ? AND uid = ?"

    .line 655
    .local v12, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v6, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    aput-object v2, v6, v14

    .line 658
    .local v6, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v3, "recovery_service_metadata"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v5, v12

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 667
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 668
    .local v3, "count":I
    if-nez v3, :cond_1

    .line 669
    new-array v0, v13, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_0
    return-object v0

    .line 671
    :cond_1
    const-string v5, "RecoverableKeyStoreDb"

    if-le v3, v14, :cond_3

    .line 672
    :try_start_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 675
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v0

    .line 673
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-array v0, v13, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_2
    return-object v0

    .line 678
    :cond_3
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 679
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 681
    .local v7, "idx":I
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 682
    new-array v0, v13, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 698
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 682
    :cond_4
    return-object v0

    .line 684
    :cond_5
    :try_start_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 685
    .local v8, "csv":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 686
    new-array v0, v13, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 698
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_6
    return-object v0

    .line 688
    :cond_7
    :try_start_4
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 689
    .local v9, "types":[Ljava/lang/String;
    array-length v0, v9

    new-array v0, v0, [I

    move-object v11, v0

    .line 690
    .local v11, "result":[I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    array-length v0, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v13, v0, :cond_8

    .line 692
    :try_start_5
    aget-object v0, v9, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v11, v13
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 695
    goto :goto_1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "String format error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 690
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 697
    .end local v13    # "i":I
    :cond_8
    nop

    .line 698
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_9
    return-object v11

    .line 657
    .end local v3    # "count":I
    .end local v7    # "idx":I
    .end local v8    # "csv":Ljava/lang/String;
    .end local v9    # "types":[Ljava/lang/String;
    .end local v11    # "result":[I
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_a

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw v3
.end method

.method public getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;

    .line 512
    const-string v0, "cert_path"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 513
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 514
    return-object v1

    .line 517
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeCertPath([B)Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 518
    :catch_0
    move-exception v2

    .line 519
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 520
    const-string v5, "Recovery service CertPath entry cannot be decoded for userId=%d uid=%d."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 519
    const-string v4, "RecoverableKeyStoreDb"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    return-object v1
.end method

.method public getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;

    .line 480
    const-string v0, "cert_serial"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryServicePublicKey(II)Ljava/security/PublicKey;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 591
    nop

    .line 592
    const-string/jumbo v0, "public_key"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object v0

    .line 593
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 594
    return-object v1

    .line 597
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeX509Key([B)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 598
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 600
    const-string v5, "Recovery service public key entry cannot be decoded for userId=%d uid=%d."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 599
    const-string v4, "RecoverableKeyStoreDb"

    invoke-static {v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-object v1
.end method

.method public getServerParams(II)[B
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 837
    const-string/jumbo v0, "server_params"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getShouldCreateSnapshot(II)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 905
    const-string/jumbo v0, "should_create_snapshot"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 907
    .local v0, "res":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSnapshotVersion(II)Ljava/lang/Long;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 866
    const-string/jumbo v0, "snapshot_version"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getStatusForAllKeys(I)Ljava/util/Map;
    .locals 12
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    const-string v9, "alias"

    const-string/jumbo v10, "recovery_status"

    filled-new-array {v1, v9, v10}, [Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v11, "uid = ?"

    .line 210
    .local v11, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 213
    .local v5, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v2, "keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v11

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 222
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v2, "statuses":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    nop

    .line 225
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 224
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "alias":Ljava/lang/String;
    nop

    .line 227
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 226
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 228
    .local v6, "recoveryStatus":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    nop

    .end local v4    # "alias":Ljava/lang/String;
    .end local v6    # "recoveryStatus":I
    goto :goto_0

    .line 230
    :cond_0
    nop

    .line 231
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_1
    return-object v2

    .line 212
    .end local v2    # "statuses":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public getUserSerialNumbers()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v9, "user_id"

    const-string/jumbo v10, "user_serial_number"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "projection":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 353
    .local v11, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v12, v1, [Ljava/lang/String;

    .line 356
    .local v12, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v2, "user_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 365
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 366
    .local v2, "serialNumbers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    nop

    .line 368
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 367
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 369
    .local v4, "userId":I
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 371
    .local v5, "serialNumber":J
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    nop

    .end local v4    # "userId":I
    .end local v5    # "serialNumber":J
    goto :goto_0

    .line 373
    :cond_0
    nop

    .line 374
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_1
    return-object v2

    .line 355
    .end local v2    # "serialNumbers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "wrappedKey"    # Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 98
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v2, "alias"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object v2

    const-string/jumbo v3, "nonce"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object v2

    const-string/jumbo v3, "wrapped_key"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 105
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "last_synced_at"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "platform_key_generation_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getRecoveryStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "recovery_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMetadata()[B

    move-result-object v2

    .line 109
    .local v2, "keyMetadata":[B
    const-string/jumbo v3, "key_metadata"

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 114
    :goto_0
    const/4 v3, 0x0

    const-string/jumbo v4, "keys"

    invoke-virtual {v0, v4, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    return-wide v3
.end method

.method public invalidateKeysForUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 399
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 400
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 401
    .local v1, "values":Landroid/content/ContentValues;
    nop

    .line 402
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 401
    const-string/jumbo v3, "recovery_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    const-string/jumbo v2, "user_id = ?"

    .line 404
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "keys"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method public invalidateKeysForUserIdOnCustomScreenLock(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 411
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 412
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v1, "values":Landroid/content/ContentValues;
    nop

    .line 414
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 413
    const-string/jumbo v3, "recovery_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string/jumbo v2, "user_id = ?"

    .line 417
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 418
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 417
    const-string/jumbo v4, "keys"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public removeKey(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 187
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "uid = ? AND alias = ?"

    .line 189
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 190
    .local v2, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "keys"

    invoke-virtual {v0, v5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    move v4, v3

    :cond_0
    return v4
.end method

.method public removeUserFromAllTables(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 1247
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromKeysTable(I)Z

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromUserMetadataTable(I)Z

    .line 1249
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromRecoveryServiceMetadataTable(I)Z

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromRootOfTrustTable(I)Z

    .line 1251
    return-void
.end method

.method public setActiveRootOfTrust(IILjava/lang/String;)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 713
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 714
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "active_root_of_trust"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string/jumbo v2, "user_id = ? AND uid = ?"

    .line 718
    .local v2, "selection":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 719
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 720
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 719
    const-string/jumbo v4, "recovery_service_metadata"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    return-wide v3
.end method

.method public setCounterId(IIJ)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "counterId"    # J

    .line 791
    const-string v3, "counter_id"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setPlatformKeyGenerationId(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "generationId"    # I

    .line 328
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "platform_key_generation_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string/jumbo v2, "user_id = ?"

    .line 333
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 335
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->invalidateKeysForUser(I)V

    .line 337
    const-string/jumbo v4, "user_metadata"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method

.method public setRecoverySecretTypes(II[I)J
    .locals 8
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "secretTypes"    # [I

    .line 621
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 622
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 624
    .local v2, "joiner":Ljava/util/StringJoiner;
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;

    invoke-direct {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 625
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "typesAsCsv":Ljava/lang/String;
    const-string/jumbo v4, "secret_types"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string/jumbo v4, "user_id = ? AND uid = ?"

    .line 630
    .local v4, "selection":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 631
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 632
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 631
    const-string/jumbo v6, "recovery_service_metadata"

    invoke-virtual {v0, v6, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    return-wide v5
.end method

.method public setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 540
    invoke-virtual {p4}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    nop

    .line 544
    const-string v0, "PkiPath"

    invoke-virtual {p4, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 543
    const-string v5, "cert_path"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;Ljava/lang/String;[B)J

    move-result-wide v0

    return-wide v0

    .line 541
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "No certificate contained in the cert path."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRecoveryServiceCertSerial(IILjava/lang/String;J)J
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "serial"    # J

    .line 496
    const-string v4, "cert_serial"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setRecoveryServicePublicKey(IILjava/security/PublicKey;)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "publicKey"    # Ljava/security/PublicKey;

    .line 464
    nop

    .line 465
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 464
    const-string/jumbo v1, "public_key"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public setRecoveryStatus(ILjava/lang/String;I)I
    .locals 6
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "status"    # I

    .line 243
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 244
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "recovery_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string/jumbo v2, "uid = ? AND alias = ?"

    .line 249
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 249
    const-string/jumbo v4, "keys"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public setServerParams(II[B)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "serverParams"    # [B

    .line 821
    const-string/jumbo v0, "server_params"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public setShouldCreateSnapshot(IIZ)J
    .locals 8
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "pending"    # Z

    .line 890
    nop

    .line 891
    if-eqz p3, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v6, v0

    .line 890
    const-string/jumbo v5, "should_create_snapshot"

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setSnapshotVersion(IIJ)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "snapshotVersion"    # J

    .line 851
    const-string/jumbo v3, "snapshot_version"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setUserSerialNumber(IJ)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # J

    .line 383
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 384
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "user_serial_number"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string/jumbo v2, "user_id = ?"

    .line 388
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 390
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 391
    const-string/jumbo v4, "user_metadata"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method
