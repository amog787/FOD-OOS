.class public Lcom/android/server/content/SyncManagerConstants;
.super Landroid/database/ContentObserver;
.source "SyncManagerConstants.java"


# static fields
.field private static final DEF_EXEMPTION_TEMP_WHITELIST_DURATION_IN_SECONDS:I = 0x258

.field private static final DEF_INITIAL_SYNC_RETRY_TIME_IN_SECONDS:I = 0x1e

.field private static final DEF_MAX_RETRIES_WITH_APP_STANDBY_EXEMPTION:I = 0x5

.field private static final DEF_MAX_SYNC_RETRY_TIME_IN_SECONDS:I = 0xe10

.field private static final DEF_RETRY_TIME_INCREASE_FACTOR:F = 2.0f

.field private static final KEY_EXEMPTION_TEMP_WHITELIST_DURATION_IN_SECONDS:Ljava/lang/String; = "exemption_temp_whitelist_duration_in_seconds"

.field private static final KEY_INITIAL_SYNC_RETRY_TIME_IN_SECONDS:Ljava/lang/String; = "initial_sync_retry_time_in_seconds"

.field private static final KEY_MAX_RETRIES_WITH_APP_STANDBY_EXEMPTION:Ljava/lang/String; = "max_retries_with_app_standby_exemption"

.field private static final KEY_MAX_SYNC_RETRY_TIME_IN_SECONDS:Ljava/lang/String; = "max_sync_retry_time_in_seconds"

.field private static final KEY_RETRY_TIME_INCREASE_FACTOR:Ljava/lang/String; = "retry_time_increase_factor"

.field private static final TAG:Ljava/lang/String; = "SyncManagerConfig"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitialSyncRetryTimeInSeconds:I

.field private mKeyExemptionTempWhitelistDurationInSeconds:I

.field private final mLock:Ljava/lang/Object;

.field private mMaxRetriesWithAppStandbyExemption:I

.field private mMaxSyncRetryTimeInSeconds:I

.field private mRetryTimeIncreaseFactor:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    .line 43
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    .line 48
    const/16 v0, 0xe10

    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    .line 58
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    .line 63
    iput-object p1, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private refresh()V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sync_manager_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "newValue":Ljava/lang/String;
    new-instance v2, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/util/KeyValueListParser;-><init>(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .local v2, "parser":Landroid/util/KeyValueListParser;
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "SyncManagerConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad constants: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const-string v3, "initial_sync_retry_time_in_seconds"

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    .line 95
    const-string/jumbo v3, "max_sync_retry_time_in_seconds"

    const/16 v4, 0xe10

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    .line 99
    const-string/jumbo v3, "retry_time_increase_factor"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    .line 103
    const-string/jumbo v3, "max_retries_with_app_standby_exemption"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    .line 107
    const-string v3, "exemption_temp_whitelist_duration_in_seconds"

    const/16 v4, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    .line 111
    .end local v1    # "newValue":Ljava/lang/String;
    .end local v2    # "parser":Landroid/util/KeyValueListParser;
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    const-string v1, "SyncManager Config:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v1, "  mInitialSyncRetryTimeInSeconds="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    const-string v1, "  mRetryTimeIncreaseFactor="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    const-string v1, "  mMaxSyncRetryTimeInSeconds="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    const-string v1, "  mMaxRetriesWithAppStandbyExemption="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    const-string v1, "  mKeyExemptionTempWhitelistDurationInSeconds="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInitialSyncRetryTimeInSeconds()I
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    monitor-exit v0

    return v1

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKeyExemptionTempWhitelistDurationInSeconds()I
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    monitor-exit v0

    return v1

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxRetriesWithAppStandbyExemption()I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    monitor-exit v0

    return v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxSyncRetryTimeInSeconds()I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    monitor-exit v0

    return v1

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRetryTimeIncreaseFactor()F
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    monitor-exit v0

    return v1

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$start$0$SyncManagerConstants()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sync_manager_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerConstants;->refresh()V

    .line 71
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .line 76
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerConstants;->refresh()V

    .line 77
    return-void
.end method

.method public start()V
    .locals 2

    .line 67
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManagerConstants$qo5ldQVp10jCUY9aavBZDKP2k6Q;

    invoke-direct {v1, p0}, Lcom/android/server/content/-$$Lambda$SyncManagerConstants$qo5ldQVp10jCUY9aavBZDKP2k6Q;-><init>(Lcom/android/server/content/SyncManagerConstants;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
