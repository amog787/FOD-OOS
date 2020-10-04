.class public Lcom/android/server/backup/BackupAgentTimeoutParameters;
.super Landroid/util/KeyValueSettingObserver;
.source "BackupAgentTimeoutParameters.java"


# static fields
.field public static final DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x493e0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_KV_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS:J = 0xbb8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RESTORE_AGENT_TIMEOUT_MILLIS:J = 0xea60L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x1b7740L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING:Ljava/lang/String; = "backup_agent_timeout_parameters"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "full_backup_agent_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_KV_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "kv_backup_agent_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_QUOTA_EXCEEDED_TIMEOUT_MILLIS:Ljava/lang/String; = "quota_exceeded_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_finished_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_RESTORE_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "shared_backup_agent_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BackupAgentTimeout"


# instance fields
.field private mFullBackupAgentTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mKvBackupAgentTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mQuotaExceededTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRestoreAgentFinishedTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRestoreAgentTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSharedBackupAgentTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 105
    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method public getFullBackupAgentTimeoutMillis()J
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFullBackupAgentTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKvBackupAgentTimeoutMillis()J
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKvBackupAgentTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQuotaExceededTimeoutMillis()J
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQuotaExceededTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestoreAgentFinishedTimeoutMillis()J
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRestoreAgentFinishedTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestoreAgentTimeoutMillis()J
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRestoreAgentTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 176
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

    .line 109
    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedBackupAgentTimeoutMillis()J
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharedBackupAgentTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 167
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

    .line 113
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    const-string/jumbo v1, "kv_backup_agent_timeout_millis"

    .line 115
    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    .line 118
    const-string v1, "full_backup_agent_timeout_millis"

    const-wide/32 v4, 0x493e0

    .line 119
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    .line 122
    const-string/jumbo v1, "shared_backup_agent_timeout_millis"

    const-wide/32 v4, 0x1b7740

    .line 123
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    .line 126
    const-string/jumbo v1, "restore_agent_timeout_millis"

    const-wide/32 v4, 0xea60

    .line 127
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    .line 130
    const-string/jumbo v1, "restore_agent_finished_timeout_millis"

    .line 131
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    .line 134
    const-string/jumbo v1, "quota_exceeded_timeout_millis"

    const-wide/16 v2, 0xbb8

    .line 135
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
