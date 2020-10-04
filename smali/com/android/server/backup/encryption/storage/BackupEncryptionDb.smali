.class public Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;
.super Ljava/lang/Object;
.source "BackupEncryptionDb.java"


# instance fields
.field private final mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    .line 39
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "helper":Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 34
    new-instance v1, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;

    invoke-direct {v1, v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;-><init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->resetDatabase()V

    .line 48
    return-void
.end method

.method public close()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->close()V

    .line 58
    return-void
.end method

.method public getTertiaryKeysTable()Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
    .locals 2

    .line 42
    new-instance v0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;

    iget-object v1, p0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-direct {v0, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;-><init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V

    return-object v0
.end method
