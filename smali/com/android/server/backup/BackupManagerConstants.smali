.class public Lcom/android/server/backup/BackupManagerConstants;
.super Landroid/util/KeyValueSettingObserver;
.source "BackupManagerConstants.java"


# static fields
.field public static final BACKUP_FINISHED_NOTIFICATION_RECEIVERS:Ljava/lang/String; = "backup_finished_notification_receivers"

.field public static final DEFAULT_BACKUP_FINISHED_NOTIFICATION_RECEIVERS:Ljava/lang/String; = ""

.field public static final DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS:J = 0x5265c00L

.field public static final DEFAULT_FULL_BACKUP_REQUIRED_NETWORK_TYPE:I = 0x2

.field public static final DEFAULT_FULL_BACKUP_REQUIRE_CHARGING:Z = true

.field public static final DEFAULT_KEY_VALUE_BACKUP_FUZZ_MILLISECONDS:J = 0x927c0L

.field public static final DEFAULT_KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS:J = 0xdbba00L

.field public static final DEFAULT_KEY_VALUE_BACKUP_REQUIRED_NETWORK_TYPE:I = 0x1

.field public static final DEFAULT_KEY_VALUE_BACKUP_REQUIRE_CHARGING:Z = true

.field public static final FULL_BACKUP_INTERVAL_MILLISECONDS:Ljava/lang/String; = "full_backup_interval_milliseconds"

.field public static final FULL_BACKUP_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "full_backup_required_network_type"

.field public static final FULL_BACKUP_REQUIRE_CHARGING:Ljava/lang/String; = "full_backup_require_charging"

.field public static final KEY_VALUE_BACKUP_FUZZ_MILLISECONDS:Ljava/lang/String; = "key_value_backup_fuzz_milliseconds"

.field public static final KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS:Ljava/lang/String; = "key_value_backup_interval_milliseconds"

.field public static final KEY_VALUE_BACKUP_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "key_value_backup_required_network_type"

.field public static final KEY_VALUE_BACKUP_REQUIRE_CHARGING:Ljava/lang/String; = "key_value_backup_require_charging"

.field private static final SETTING:Ljava/lang/String; = "backup_manager_constants"

.field private static final TAG:Ljava/lang/String; = "BackupManagerConstants"


# instance fields
.field private mBackupFinishedNotificationReceivers:[Ljava/lang/String;

.field private mFullBackupIntervalMilliseconds:J

.field private mFullBackupRequireCharging:Z

.field private mFullBackupRequiredNetworkType:I

.field private mKeyValueBackupFuzzMilliseconds:J

.field private mKeyValueBackupIntervalMilliseconds:J

.field private mKeyValueBackupRequireCharging:Z

.field private mKeyValueBackupRequiredNetworkType:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 111
    const-string v0, "backup_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 112
    return-void
.end method


# virtual methods
.method public declared-synchronized getBackupFinishedNotificationReceivers()[Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 231
    :try_start_0
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupFinishedNotificationReceivers(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;

    .line 234
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 230
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFullBackupIntervalMilliseconds()J
    .locals 4

    monitor-enter p0

    .line 203
    :try_start_0
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFullBackupIntervalMilliseconds(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 202
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFullBackupRequireCharging()Z
    .locals 3

    monitor-enter p0

    .line 213
    :try_start_0
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFullBackupRequireCharging(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 212
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFullBackupRequiredNetworkType()I
    .locals 3

    monitor-enter p0

    .line 220
    :try_start_0
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFullBackupRequiredNetworkType(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 219
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyValueBackupFuzzMilliseconds()J
    .locals 4

    monitor-enter p0

    .line 173
    :try_start_0
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyValueBackupFuzzMilliseconds(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 172
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyValueBackupIntervalMilliseconds()J
    .locals 4

    monitor-enter p0

    .line 163
    :try_start_0
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyValueBackupIntervalMilliseconds(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 162
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyValueBackupRequireCharging()Z
    .locals 3

    monitor-enter p0

    .line 183
    :try_start_0
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyValueBackupRequireCharging(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 182
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyValueBackupRequiredNetworkType()I
    .locals 3

    monitor-enter p0

    .line 193
    :try_start_0
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyValueBackupRequiredNetworkType(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 192
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 115
    const-string v0, "backup_manager_constants"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized update(Landroid/util/KeyValueListParser;)V
    .locals 4
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    monitor-enter p0

    .line 119
    :try_start_0
    const-string/jumbo v0, "key_value_backup_interval_milliseconds"

    const-wide/32 v1, 0xdbba00

    .line 120
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J

    .line 123
    const-string/jumbo v0, "key_value_backup_fuzz_milliseconds"

    const-wide/32 v1, 0x927c0

    .line 124
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J

    .line 127
    const-string/jumbo v0, "key_value_backup_require_charging"

    .line 128
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z

    .line 131
    const-string/jumbo v0, "key_value_backup_required_network_type"

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I

    .line 135
    const-string v0, "full_backup_interval_milliseconds"

    const-wide/32 v2, 0x5265c00

    .line 136
    invoke-virtual {p1, v0, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J

    .line 139
    const-string v0, "full_backup_require_charging"

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z

    .line 142
    const-string v0, "full_backup_required_network_type"

    const/4 v1, 0x2

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I

    .line 146
    const-string v0, "backup_finished_notification_receivers"

    const-string v1, ""

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "backupFinishedNotificationReceivers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;

    goto :goto_0

    .line 153
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    .end local v0    # "backupFinishedNotificationReceivers":Ljava/lang/String;
    .end local p1    # "parser":Landroid/util/KeyValueListParser;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
