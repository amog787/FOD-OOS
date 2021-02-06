.class public Lcom/android/server/backup/BackupAgentTimeoutParameters;
.super Landroid/util/KeyValueSettingObserver;
.source "BackupAgentTimeoutParameters.java"


# static fields
.field public static final DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x493e0L

.field public static final DEFAULT_KV_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x7530L

.field public static final DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS:J = 0xbb8L

.field public static final DEFAULT_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:J = 0x7530L

.field public static final DEFAULT_RESTORE_AGENT_TIMEOUT_MILLIS:J = 0xea60L

.field public static final DEFAULT_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x1b7740L

.field public static final SETTING:Ljava/lang/String; = "backup_agent_timeout_parameters"

.field public static final SETTING_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "full_backup_agent_timeout_millis"

.field public static final SETTING_KV_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "kv_backup_agent_timeout_millis"

.field public static final SETTING_QUOTA_EXCEEDED_TIMEOUT_MILLIS:Ljava/lang/String; = "quota_exceeded_timeout_millis"

.field public static final SETTING_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_finished_timeout_millis"

.field public static final SETTING_RESTORE_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_timeout_millis"

.field public static final SETTING_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "shared_backup_agent_timeout_millis"


# instance fields
.field private mFullBackupAgentTimeoutMillis:J

.field private mKvBackupAgentTimeoutMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mQuotaExceededTimeoutMillis:J

.field private mRestoreAgentFinishedTimeoutMillis:J

.field private mRestoreAgentTimeoutMillis:J

.field private mSharedBackupAgentTimeoutMillis:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 101
    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 102
    return-void
.end method


# virtual methods
.method public getFullBackupAgentTimeoutMillis()J
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKvBackupAgentTimeoutMillis()J
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQuotaExceededTimeoutMillis()J
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestoreAgentFinishedTimeoutMillis()J
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestoreAgentTimeoutMillis()J
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 105
    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedBackupAgentTimeoutMillis()J
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(Landroid/util/KeyValueListParser;)V
    .locals 6
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 109
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    const-string/jumbo v1, "kv_backup_agent_timeout_millis"

    .line 111
    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    .line 114
    const-string v1, "full_backup_agent_timeout_millis"

    const-wide/32 v4, 0x493e0

    .line 115
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    .line 118
    const-string/jumbo v1, "shared_backup_agent_timeout_millis"

    const-wide/32 v4, 0x1b7740

    .line 119
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    .line 122
    const-string/jumbo v1, "restore_agent_timeout_millis"

    const-wide/32 v4, 0xea60

    .line 123
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    .line 126
    const-string/jumbo v1, "restore_agent_finished_timeout_millis"

    .line 127
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    .line 130
    const-string/jumbo v1, "quota_exceeded_timeout_millis"

    const-wide/16 v2, 0xbb8

    .line 131
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
