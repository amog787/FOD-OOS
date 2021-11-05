.class Lcom/android/server/accounts/AccountsDb;
.super Ljava/lang/Object;
.source "AccountsDb.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;,
        Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;,
        Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_LAST_AUTHENTICATE_TIME_EPOCH_MILLIS:Ljava/lang/String; = "last_password_entry_time_millis_epoch"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_PREVIOUS_NAME:Ljava/lang/String; = "previous_name"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_ACCESS_GRANTS:Ljava/lang/String; = "SELECT name, uid FROM accounts, grants WHERE accounts_id=_id"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field static final CE_DATABASE_NAME:Ljava/lang/String; = "accounts_ce.db"

.field private static final CE_DATABASE_VERSION:I = 0xa

.field private static final CE_DB_PREFIX:Ljava/lang/String; = "ceDb."

.field private static final CE_TABLE_ACCOUNTS:Ljava/lang/String; = "ceDb.accounts"

.field private static final CE_TABLE_AUTHTOKENS:Ljava/lang/String; = "ceDb.authtokens"

.field private static final CE_TABLE_EXTRAS:Ljava/lang/String; = "ceDb.extras"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final COUNT_OF_MATCHING_GRANTS_ANY_TOKEN:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field static DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String; = null

.field static DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String; = null

.field static DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String; = null

.field static DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String; = null

.field static DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String; = null

.field static DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String; = null

.field static DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String; = null

.field static DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String; = null

.field static DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String; = null

.field static DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String; = null

.field static DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String; = null

.field static DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String; = null

.field private static DEBUG_TABLE_ACTION_TYPE:Ljava/lang/String; = null

.field private static DEBUG_TABLE_CALLER_UID:Ljava/lang/String; = null

.field private static DEBUG_TABLE_KEY:Ljava/lang/String; = null

.field private static DEBUG_TABLE_TABLE_NAME:Ljava/lang/String; = null

.field private static DEBUG_TABLE_TIMESTAMP:Ljava/lang/String; = null

.field static final DE_DATABASE_NAME:Ljava/lang/String; = "accounts_de.db"

.field private static final DE_DATABASE_VERSION:I = 0x3

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field static final MAX_DEBUG_DB_SIZE:I = 0x40

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_KEY_DELIMITER:Ljava/lang/String; = ":"

.field private static final META_KEY_FOR_AUTHENTICATOR_UID_FOR_TYPE_PREFIX:Ljava/lang/String; = "auth_uid_for_type:"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final PRE_N_DATABASE_VERSION:I = 0x9

.field private static final SELECTION_ACCOUNTS_ID_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_META_BY_AUTHENTICATOR_TYPE:Ljava/lang/String; = "key LIKE ?"

.field private static final SHARED_ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static TABLE_DEBUG:Ljava/lang/String; = null

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field static final TABLE_SHARED_ACCOUNTS:Ljava/lang/String; = "shared_accounts"

.field private static final TABLE_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final TAG:Ljava/lang/String; = "AccountsDb"

.field private static final VISIBILITY_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final VISIBILITY_PACKAGE:Ljava/lang/String; = "_package"

.field private static final VISIBILITY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

.field private volatile mDebugDbInsertionPoint:J

.field private volatile mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

.field final mDebugStatementLock:Ljava/lang/Object;

.field private final mPreNDatabaseFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    const-string v0, "debug_table"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    .line 103
    const-string v0, "action_type"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_ACTION_TYPE:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "time"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    .line 105
    const-string v0, "caller_uid"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_CALLER_UID:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "table_name"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TABLE_NAME:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "primary_key"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    .line 112
    const-string v0, "action_set_password"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String;

    .line 113
    const-string v0, "action_clear_password"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    .line 114
    const-string v0, "action_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    .line 115
    const-string v0, "action_account_remove"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    .line 116
    const-string v0, "action_account_remove_de"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    .line 117
    const-string v0, "action_authenticator_remove"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    .line 118
    const-string v0, "action_account_rename"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    .line 125
    const-string v0, "action_called_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    .line 126
    const-string v0, "action_called_account_remove"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    .line 127
    const-string v0, "action_sync_de_ce_accounts"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    .line 131
    const-string v0, "action_called_start_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    .line 132
    const-string v0, "action_called_account_session_finish"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "type"

    const-string v1, "count(type)"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/accounts/AccountsDb;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 165
    const-string v1, "authtoken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 168
    const-string/jumbo v0, "key"

    const-string/jumbo v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .param p1, "deDatabase"    # Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "preNDatabaseFile"    # Ljava/io/File;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementLock:Ljava/lang/Object;

    .line 188
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 192
    iput-object p1, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 193
    iput-object p2, p0, Lcom/android/server/accounts/AccountsDb;->mContext:Landroid/content/Context;

    .line 194
    iput-object p3, p0, Lcom/android/server/accounts/AccountsDb;->mPreNDatabaseFile:Ljava/io/File;

    .line 195
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    invoke-static {p0}, Lcom/android/server/accounts/AccountsDb;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_ACTION_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_CALLER_UID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "preNDatabaseFile"    # Ljava/io/File;
    .param p3, "deDatabaseFile"    # Ljava/io/File;

    .line 1397
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1398
    .local v0, "newDbExists":Z
    new-instance v1, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 1399
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/server/accounts/AccountsDb$1;)V

    .line 1401
    .local v1, "deDatabaseHelper":Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;
    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1404
    new-instance v2, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;

    .line 1405
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1407
    .local v2, "preNDatabaseHelper":Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1408
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->close()V

    .line 1410
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->access$900(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Ljava/io/File;)V

    .line 1412
    .end local v2    # "preNDatabaseHelper":Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;
    :cond_0
    new-instance v2, Lcom/android/server/accounts/AccountsDb;

    invoke-direct {v2, v1, p0, p2}, Lcom/android/server/accounts/AccountsDb;-><init>(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Landroid/content/Context;Ljava/io/File;)V

    return-object v2
.end method

.method static deleteDbFileWarnIfFailed(Ljava/io/File;)V
    .locals 2
    .param p0, "dbFile"    # Ljava/io/File;

    .line 1390
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was not deleted successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountsDb"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_0
    return-void
.end method

.method private static resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1419
    const-string v0, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1420
    .local v0, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1421
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1423
    .local v2, "name":Ljava/lang/String;
    const-string v3, "android_metadata"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "sqlite_sequence"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1424
    goto :goto_0

    .line 1426
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE IF EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1427
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1428
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1430
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_3
    const-string v0, "SELECT name FROM sqlite_master WHERE type =\'trigger\'"

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1431
    .restart local v0    # "c":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1432
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1434
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 1435
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1436
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_5
    return-void

    .line 1430
    .restart local v0    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v1

    .line 1419
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1
.end method


# virtual methods
.method attachCeDatabase(Ljava/io/File;)V
    .locals 3
    .param p1, "ceDbFile"    # Ljava/io/File;

    .line 1290
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mPreNDatabaseFile:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;->create(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;

    .line 1291
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1292
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTACH DATABASE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AS ceDb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1293
    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->access$702(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Z)Z

    .line 1294
    return-void
.end method

.method beginTransaction()V
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1279
    return-void
.end method

.method calculateDebugTableInsertionPoint()J
    .locals 6

    .line 1302
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1303
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1304
    .local v1, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1305
    .local v3, "size":I
    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    .line 1306
    int-to-long v4, v3

    return-wide v4

    .line 1311
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " LIMIT 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1317
    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    .line 1318
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "queryCountDebugDbRows":Ljava/lang/String;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open debug table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountsDb"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public close()V
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->close()V

    .line 1387
    return-void
.end method

.method closeDebugStatement()V
    .locals 2

    .line 1349
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v1, :cond_0

    .line 1351
    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    .line 1354
    :cond_0
    monitor-exit v0

    .line 1355
    return-void

    .line 1354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method compileSqlStatementForLogging()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 1325
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1326
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VALUES (?,?,?,?,?,?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    return-object v2
.end method

.method deleteAccountVisibilityForPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1030
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1031
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v4, "visibility"

    const-string v5, "_package=? "

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method deleteAuthToken(Ljava/lang/String;)Z
    .locals 6
    .param p1, "authTokenId"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 376
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "ceDb.authtokens"

    const-string v5, "_id= ?"

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method deleteAuthTokensByAccountId(J)Z
    .locals 6
    .param p1, "accountId"    # J

    .line 410
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 411
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 412
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 411
    const-string v3, "ceDb.authtokens"

    const-string v5, "accounts_id=?"

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1
.end method

.method deleteAuthtokensByAccountIdAndType(JLjava/lang/String;)Z
    .locals 6
    .param p1, "accountId"    # J
    .param p3, "authtokenType"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 369
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 371
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 369
    const-string v4, "ceDb.authtokens"

    const-string v5, "accounts_id=? AND type=?"

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    move v3, v2

    :cond_0
    return v3
.end method

.method deleteCeAccount(J)Z
    .locals 4
    .param p1, "accountId"    # J

    .line 1268
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1269
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ceDb.accounts"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method deleteDeAccount(J)Z
    .locals 4
    .param p1, "accountId"    # J

    .line 698
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 699
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accounts"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method deleteGrantsByAccountIdAuthTokenTypeAndUid(JLjava/lang/String;J)Z
    .locals 6
    .param p1, "accountId"    # J
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "uid"    # J

    .line 870
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 871
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 874
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 871
    const-string v4, "grants"

    const-string v5, "accounts_id=? AND auth_token_type=? AND uid=?"

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    move v3, v2

    :cond_0
    return v3
.end method

.method deleteGrantsByUid(I)Z
    .locals 6
    .param p1, "uid"    # I

    .line 916
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 917
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 918
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 917
    const-string v3, "grants"

    const-string/jumbo v5, "uid=?"

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1
.end method

.method deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1077
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1078
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth_uid_for_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1083
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1078
    const-string/jumbo v2, "meta"

    const-string/jumbo v5, "key=? AND value=?"

    invoke-virtual {v0, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    move v3, v4

    :cond_0
    return v3
.end method

.method deleteSharedAccount(Landroid/accounts/Account;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;

    .line 712
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 713
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "shared_accounts"

    const-string/jumbo v5, "name=? AND type=?"

    invoke-virtual {v0, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    move v3, v4

    :cond_0
    return v3
.end method

.method dumpDeAccountsTable(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 787
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 788
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/server/accounts/AccountsDb;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v2, "accounts"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "type"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 792
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 797
    :cond_0
    if-eqz v1, :cond_1

    .line 798
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 801
    :cond_1
    return-void

    .line 797
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 798
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_2
    throw v2
.end method

.method dumpDebugTable(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1367
    const-string v0, ","

    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1368
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    sget-object v9, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1370
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    const-string v3, "Accounts History"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    .line 1376
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    .line 1377
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1375
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1380
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1381
    nop

    .line 1382
    return-void

    .line 1380
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1381
    throw v0
.end method

.method endTransaction()V
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1287
    return-void
.end method

.method findAccountLastAuthenticatedTime(Landroid/accounts/Account;)J
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 767
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 768
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "SELECT last_password_entry_time_millis_epoch FROM accounts WHERE name=? AND type=?"

    invoke-static {v0, v2, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 484
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v9, "name=? AND type=?"

    .line 485
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v1, 0x1

    aput-object p2, v5, v1

    .line 486
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "password"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "columns":[Ljava/lang/String;
    const-string v2, "ceDb.accounts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 489
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_0
    return-object v2

    .line 492
    :cond_1
    const/4 v2, 0x0

    .line 493
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_2
    return-object v2

    .line 487
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method findAccountVisibility(JLjava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .param p1, "accountId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 946
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 947
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 949
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v5, v9

    const/4 v1, 0x1

    aput-object p3, v5, v1

    .line 947
    const-string/jumbo v2, "visibility"

    const-string v4, "accounts_id=? AND _package=? "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 951
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 952
    return-object v2

    .line 955
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 956
    nop

    .line 957
    const/4 v2, 0x0

    return-object v2

    .line 955
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 956
    throw v2
.end method

.method findAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 931
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 932
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v5, v9

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object p2, v5, v1

    const-string/jumbo v2, "visibility"

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?) AND _package=? "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 936
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 937
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 937
    return-object v2

    .line 940
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 941
    nop

    .line 942
    const/4 v2, 0x0

    return-object v2

    .line 940
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 941
    throw v2
.end method

.method findAllAccountGrants()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1092
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT name, uid FROM accounts, grants WHERE accounts_id=_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1093
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1099
    .local v3, "accountName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1100
    .local v4, "uid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    nop

    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "uid":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 1102
    nop

    .line 1103
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1102
    :cond_2
    return-object v2

    .line 1094
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_4
    return-object v2

    .line 1092
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2
.end method

.method findAllDeAccounts()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 819
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v1

    .line 820
    .local v9, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Landroid/accounts/Account;>;"
    const-string v1, "_id"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "name"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, "columns":[Ljava/lang/String;
    const-string v2, "accounts"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 823
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 825
    .local v4, "accountId":J
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, "accountType":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 828
    .local v6, "accountName":Ljava/lang/String;
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v6, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .local v7, "account":Landroid/accounts/Account;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    nop

    .end local v2    # "accountType":Ljava/lang/String;
    .end local v4    # "accountId":J
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v7    # "account":Landroid/accounts/Account;
    goto :goto_0

    .line 831
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 832
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v9

    .line 821
    .restart local v1    # "cursor":Landroid/database/Cursor;
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

.method findAllUidGrants()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 879
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 880
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v1, "uid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "grants"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 884
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 886
    .local v2, "uid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    nop

    .end local v2    # "uid":I
    goto :goto_0

    .line 889
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 890
    nop

    .line 891
    return-object v9

    .line 889
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 890
    throw v2
.end method

.method findAllVisibilityValues()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 999
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1000
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string v2, "SELECT visibility._package, visibility.value, accounts.name, accounts.type FROM visibility JOIN accounts ON accounts._id = visibility.accounts_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1010
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1011
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1012
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1013
    .local v4, "visibility":Ljava/lang/Integer;
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1014
    .local v5, "accountName":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1015
    .local v6, "accountType":Ljava/lang/String;
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .local v7, "account":Landroid/accounts/Account;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 1017
    .local v8, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v8, :cond_0

    .line 1018
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v8, v9

    .line 1019
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_0
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    nop

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "visibility":Ljava/lang/Integer;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v8    # "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 1024
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1025
    nop

    .line 1026
    return-object v1

    .line 1024
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1025
    throw v3
.end method

.method findAllVisibilityValuesForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 978
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 979
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    .line 980
    .local v9, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "_package"

    const-string/jumbo v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v1, v5, v11

    .line 981
    const-string/jumbo v2, "visibility"

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 985
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 989
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 990
    nop

    .line 991
    return-object v9

    .line 989
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 990
    throw v2
.end method

.method findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    .line 350
    .local v9, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/accounts/AccountsDb;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v1, v5, v11

    const-string v2, "ceDb.authtokens"

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 356
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "type":Ljava/lang/String;
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "authToken":Ljava/lang/String;
    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    nop

    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "authToken":Ljava/lang/String;
    goto :goto_0

    .line 362
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 363
    nop

    .line 364
    return-object v9

    .line 362
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 363
    throw v2
.end method

.method findAuthtokenForAllAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 334
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "SELECT ceDb.authtokens._id, ceDb.accounts.name, ceDb.authtokens.type FROM ceDb.accounts JOIN ceDb.authtokens ON ceDb.accounts._id = ceDb.authtokens.accounts_id WHERE ceDb.authtokens.authtoken = ? AND ceDb.accounts.type = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method findCeAccountId(Landroid/accounts/Account;)J
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;

    .line 469
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 470
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "columns":[Ljava/lang/String;
    const-string/jumbo v9, "name=? AND type=?"

    .line 472
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 473
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v2, "ceDb.accounts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 475
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_0
    return-wide v6

    .line 478
    :cond_1
    const-wide/16 v6, -0x1

    .line 479
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_2
    return-wide v6

    .line 473
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method findCeAccountsNotInDe()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1247
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT name,type FROM ceDb.accounts WHERE NOT EXISTS  (SELECT _id FROM accounts WHERE _id=ceDb.accounts._id )"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1255
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1256
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1258
    .local v3, "accountName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1259
    .local v4, "accountType":Ljava/lang/String;
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    nop

    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    goto :goto_0

    .line 1261
    :cond_0
    nop

    .line 1263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1261
    return-object v2

    .line 1263
    .end local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1264
    throw v2
.end method

.method findDeAccountByAccountId(J)Landroid/accounts/Account;
    .locals 11
    .param p1, "accountId"    # J

    .line 961
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 962
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "name"

    const-string/jumbo v2, "type"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    .line 963
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    .line 962
    const-string v2, "accounts"

    const-string v4, "_id=? "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 965
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 966
    new-instance v2, Landroid/accounts/Account;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 966
    return-object v2

    .line 969
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 970
    nop

    .line 971
    const/4 v2, 0x0

    return-object v2

    .line 969
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 970
    throw v2
.end method

.method findDeAccountId(Landroid/accounts/Account;)J
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;

    .line 804
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 805
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "columns":[Ljava/lang/String;
    const-string/jumbo v9, "name=? AND type=?"

    .line 807
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 808
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v2, "accounts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 810
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 811
    :cond_0
    return-wide v6

    .line 813
    :cond_1
    const-wide/16 v6, -0x1

    .line 814
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 813
    :cond_2
    return-wide v6

    .line 808
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;

    .line 836
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 837
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "previous_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, "columns":[Ljava/lang/String;
    const-string/jumbo v9, "name=? AND type=?"

    .line 839
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 840
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v2, "accounts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 842
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 843
    :cond_0
    return-object v2

    .line 845
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 846
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 840
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method findExtrasIdByAccountId(JLjava/lang/String;)J
    .locals 10
    .param p1, "accountId"    # J
    .param p3, "key"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 417
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accounts_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p3, v5, v9

    const-string v2, "ceDb.extras"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 422
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 423
    return-wide v2

    .line 425
    :cond_0
    const-wide/16 v2, -0x1

    .line 427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 425
    return-wide v2

    .line 427
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 428
    throw v2
.end method

.method findMatchingGrantsCount(ILjava/lang/String;Landroid/accounts/Account;)J
    .locals 4
    .param p1, "uid"    # I
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;

    .line 895
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 896
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iget-object v2, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 897
    .local v1, "args":[Ljava/lang/String;
    const-string v2, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    invoke-static {v0, v2, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method findMatchingGrantsCountAnyToken(ILandroid/accounts/Account;)J
    .locals 4
    .param p1, "uid"    # I
    .param p2, "account"    # Landroid/accounts/Account;

    .line 901
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 902
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 903
    .local v1, "args":[Ljava/lang/String;
    const-string v2, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

    invoke-static {v0, v2, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method findMetaAuthUid()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1047
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "key"

    const-string/jumbo v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "auth_uid_for_type:%"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "meta"

    const-string/jumbo v4, "key LIKE ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "key"

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1055
    .local v1, "metaCursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1057
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1058
    const/4 v3, 0x0

    .line 1059
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 1060
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1061
    .local v5, "uidStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1067
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1068
    .local v4, "uid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    nop

    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "uidStr":Ljava/lang/String;
    goto :goto_0

    .line 1063
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v5    # "uidStr":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, "AccountsDb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auth type empty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", uid empty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1063
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    goto :goto_0

    .line 1071
    .end local v3    # "type":Ljava/lang/String;
    .end local v5    # "uidStr":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1072
    nop

    .line 1073
    return-object v2

    .line 1071
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1072
    throw v3
.end method

.method findSharedAccountId(Landroid/accounts/Account;)J
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    .line 751
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 752
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v5, v9

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const-string/jumbo v2, "shared_accounts"

    const-string/jumbo v4, "name=? AND type=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 757
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 758
    return-wide v2

    .line 760
    :cond_0
    const-wide/16 v2, -0x1

    .line 762
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 760
    return-wide v2

    .line 762
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 763
    throw v2
.end method

.method findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 452
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    .line 453
    .local v9, "userExtrasForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v1, v5, v11

    .line 454
    .local v5, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Lcom/android/server/accounts/AccountsDb;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v2, "ceDb.extras"

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 459
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "tmpkey":Ljava/lang/String;
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    nop

    .end local v2    # "tmpkey":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 464
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 465
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v9

    .line 454
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method getSharedAccounts()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 728
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 729
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 730
    .local v11, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v12, 0x0

    .line 732
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v4, "shared_accounts"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v12, v3

    .line 734
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 735
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 736
    .local v1, "nameIndex":I
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 738
    .local v0, "typeIndex":I
    :cond_0
    new-instance v3, Landroid/accounts/Account;

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 743
    .end local v0    # "typeIndex":I
    .end local v1    # "nameIndex":I
    :cond_1
    if-eqz v12, :cond_2

    .line 744
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 747
    :cond_2
    return-object v11

    .line 743
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_3

    .line 744
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_3
    throw v0
.end method

.method getStatementForLogging()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 1336
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    return-object v0

    .line 1340
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->compileSqlStatementForLogging()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    .line 1341
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open debug table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountsDb"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v1, 0x0

    return-object v1
.end method

.method insertAuthToken(JLjava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "accountId"    # J
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 383
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 384
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "accounts_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v2, "authtoken"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v3, "ceDb.authtokens"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertCeAccount(Landroid/accounts/Account;Ljava/lang/String;)J
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 498
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 499
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v2, "ceDb.accounts"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertDeAccount(Landroid/accounts/Account;J)J
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accountId"    # J

    .line 850
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 851
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 852
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 853
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v4, "last_password_entry_time_millis_epoch"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 856
    const-string v2, "accounts"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertExtra(JLjava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 443
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "key"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "accounts_id"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v3, "ceDb.extras"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertGrant(JLjava/lang/String;I)J
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 907
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 908
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 909
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "accounts_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 910
    const-string v2, "auth_token_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "uid"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    const-string v2, "grants"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertOrReplaceMetaAuthTypeAndUid(Ljava/lang/String;I)J
    .locals 5
    .param p1, "authenticatorType"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1036
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1037
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth_uid_for_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "key"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    const-string/jumbo v2, "meta"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    return-wide v2
.end method

.method insertSharedAccount(Landroid/accounts/Account;)J
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;

    .line 703
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 704
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 705
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string/jumbo v2, "shared_accounts"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method isCeDatabaseAttached()Z
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->access$700(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;)Z

    move-result v0

    return v0
.end method

.method renameCeAccount(JLjava/lang/String;)Z
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "newName"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 402
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 405
    .local v3, "argsAccountId":[Ljava/lang/String;
    const-string v4, "ceDb.accounts"

    const-string v6, "_id=?"

    invoke-virtual {v0, v4, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method

.method renameDeAccount(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "previousName"    # Ljava/lang/String;

    .line 860
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 861
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 862
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string/jumbo v2, "previous_name"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 865
    .local v3, "argsAccountId":[Ljava/lang/String;
    const-string v4, "accounts"

    const-string v6, "_id=?"

    invoke-virtual {v0, v4, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method

.method renameSharedAccount(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;

    .line 718
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 719
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 720
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "shared_accounts"

    const-string/jumbo v4, "name=? AND type=?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method reserveDebugDbInsertionPoint()J
    .locals 4

    .line 1358
    iget-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->calculateDebugTableInsertionPoint()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 1360
    iget-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    return-wide v0

    .line 1362
    :cond_0
    iget-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 1363
    iget-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    return-wide v0
.end method

.method setAccountVisibility(JLjava/lang/String;I)Z
    .locals 6
    .param p1, "accountId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "visibility"    # I

    .line 922
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 923
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 924
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "accounts_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v2, "_package"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method setTransactionSuccessful()V
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1283
    return-void
.end method

.method updateAccountLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .line 776
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 777
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 778
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "last_password_entry_time_millis_epoch"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "accounts"

    const-string/jumbo v6, "name=? AND type=?"

    invoke-virtual {v0, v3, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 783
    .local v2, "rowCount":I
    if-lez v2, :cond_0

    move v4, v5

    :cond_0
    return v4
.end method

.method updateCeAccountPassword(JLjava/lang/String;)I
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "password"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 393
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 397
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 395
    const-string v3, "ceDb.accounts"

    const-string v4, "_id=?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method updateExtra(JLjava/lang/String;)Z
    .locals 7
    .param p1, "extrasId"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 433
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 437
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 435
    const-string v4, "extras"

    const-string v6, "_id=?"

    invoke-virtual {v0, v4, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 438
    .local v3, "rows":I
    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method
