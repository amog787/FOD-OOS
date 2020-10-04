.class public Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
.super Ljava/lang/Object;
.source "TertiaryKeysTable.java"


# instance fields
.field private final mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 92
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public addKey(Lcom/android/server/backup/encryption/storage/TertiaryKey;)J
    .locals 4
    .param p1, "tertiaryKey"    # Lcom/android/server/backup/encryption/storage/TertiaryKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getWritableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v1, "values":Landroid/content/ContentValues;
    nop

    .line 48
    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getSecondaryKeyAlias()Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string/jumbo v3, "secondary_key_alias"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    nop

    .line 51
    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getWrappedKeyBytes()[B

    move-result-object v2

    .line 50
    const-string/jumbo v3, "wrapped_key_bytes"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 52
    const-string/jumbo v2, "tertiary_keys"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getAllKeys(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "secondaryKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/encryption/storage/TertiaryKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getReadableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v9, "wrapped_key_bytes"

    const-string/jumbo v10, "package_name"

    const-string v1, "_id"

    const-string/jumbo v2, "secondary_key_alias"

    filled-new-array {v1, v2, v10, v9}, [Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v11, "secondary_key_alias = ?"

    .line 106
    .local v11, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 108
    .local v5, "selectionArguments":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v1

    .line 109
    .local v12, "keysByPackageName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/backup/encryption/storage/TertiaryKey;>;"
    nop

    .line 110
    const-string/jumbo v2, "tertiary_keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v11

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 109
    .local v1, "cursor":Landroid/database/Cursor;
    nop

    .line 118
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    nop

    .line 121
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 120
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "packageName":Ljava/lang/String;
    nop

    .line 125
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 124
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 127
    .local v4, "wrappedKeyBytes":[B
    new-instance v6, Lcom/android/server/backup/encryption/storage/TertiaryKey;

    invoke-direct {v6, p1, v2, v4}, Lcom/android/server/backup/encryption/storage/TertiaryKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v12, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    nop

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "wrappedKeyBytes":[B
    goto :goto_0

    .line 131
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 132
    .end local v1    # "cursor":Landroid/database/Cursor;
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 109
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v5    # "selectionArguments":[Ljava/lang/String;
    .end local v11    # "selection":Ljava/lang/String;
    .end local v12    # "keysByPackageName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/backup/encryption/storage/TertiaryKey;>;"
    .end local p0    # "this":Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
    .end local p1    # "secondaryKeyAlias":Ljava/lang/String;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v5    # "selectionArguments":[Ljava/lang/String;
    .restart local v11    # "selection":Ljava/lang/String;
    .restart local v12    # "keysByPackageName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/backup/encryption/storage/TertiaryKey;>;"
    .restart local p0    # "this":Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
    .restart local p1    # "secondaryKeyAlias":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v4
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 11
    .param p1, "secondaryKeyAlias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/backup/encryption/storage/TertiaryKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getReadableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v9, "wrapped_key_bytes"

    const-string v1, "_id"

    const-string/jumbo v2, "secondary_key_alias"

    const-string/jumbo v3, "package_name"

    filled-new-array {v1, v2, v3, v9}, [Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v10, "secondary_key_alias = ? AND package_name = ?"

    .line 70
    .local v10, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v1, 0x1

    aput-object p2, v5, v1

    .line 72
    .local v5, "selectionArguments":[Ljava/lang/String;
    nop

    .line 73
    const-string/jumbo v2, "tertiary_keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 72
    .local v1, "cursor":Landroid/database/Cursor;
    nop

    .line 81
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 82
    .local v2, "count":I
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 83
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {v4, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 83
    return-object v6

    .line 86
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    nop

    .line 89
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 88
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 91
    .local v6, "wrappedKeyBytes":[B
    new-instance v7, Lcom/android/server/backup/encryption/storage/TertiaryKey;

    invoke-direct {v7, p1, p2, v6}, Lcom/android/server/backup/encryption/storage/TertiaryKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-static {v7}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-static {v4, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 91
    return-object v7

    .line 72
    .end local v2    # "count":I
    .end local v6    # "wrappedKeyBytes":[B
    :catchall_0
    move-exception v2

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v5    # "selectionArguments":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
    .end local p1    # "secondaryKeyAlias":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v5    # "selectionArguments":[Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
    .restart local p1    # "secondaryKeyAlias":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v4
.end method
