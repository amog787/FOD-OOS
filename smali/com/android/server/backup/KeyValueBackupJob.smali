.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field private static final MAX_DEFERRAL:J = 0x5265c00L

.field public static final MAX_JOB_ID:I = 0x31fd950
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_JOB_ID:I = 0x31fd568
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field private static final USER_ID_EXTRA_KEY:Ljava/lang/String; = "userId"

.field private static sKeyValueJobService:Landroid/content/ComponentName;

.field private static final sNextScheduledForUserId:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation
.end field

.field private static final sScheduledForUserId:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    .line 57
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    .line 59
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(ILandroid/content/Context;)V
    .locals 3
    .param p0, "userId"    # I
    .param p1, "ctx"    # Landroid/content/Context;

    .line 115
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 116
    :try_start_0
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 118
    .local v1, "js":Landroid/app/job/JobScheduler;
    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->getJobIdForUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 120
    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->clearScheduledForUserId(I)V

    .line 121
    .end local v1    # "js":Landroid/app/job/JobScheduler;
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static clearScheduledForUserId(I)V
    .locals 1
    .param p0, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 165
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 166
    return-void
.end method

.method private static getJobIdForUserId(I)I
    .locals 2
    .param p0, "userId"    # I

    .line 169
    const v0, 0x31fd568

    const v1, 0x31fd950

    invoke-static {v0, v1, p0}, Lcom/android/server/backup/JobIdManager;->getJobIdForUserId(III)I

    move-result v0

    return v0
.end method

.method public static isScheduled(I)Z
    .locals 2
    .param p0, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static nextScheduled(I)J
    .locals 3
    .param p0, "userId"    # I

    .line 125
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .locals 19
    .param p0, "userId"    # I
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "delay"    # J
    .param p4, "constants"    # Lcom/android/server/backup/BackupManagerConstants;

    .line 72
    move/from16 v1, p0

    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v2

    .line 73
    :try_start_0
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    monitor-exit v2

    return-void

    .line 82
    :cond_0
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 83
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v3

    .line 84
    .local v3, "interval":J
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupFuzzMilliseconds()J

    move-result-wide v5

    .line 85
    .local v5, "fuzz":J
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequiredNetworkType()I

    move-result v0

    .line 86
    .local v0, "networkType":I
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequireCharging()Z

    move-result v7

    .line 87
    .local v7, "needsCharging":Z
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_1

    .line 89
    :try_start_2
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    long-to-int v9, v5

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    int-to-long v8, v8

    add-long/2addr v8, v3

    .end local p2    # "delay":J
    .local v8, "delay":J
    goto :goto_0

    .line 88
    .end local v8    # "delay":J
    .restart local p2    # "delay":J
    :cond_1
    move-wide/from16 v8, p2

    .line 92
    .end local p2    # "delay":J
    .restart local v8    # "delay":J
    :goto_0
    :try_start_3
    const-string v10, "KeyValueBackupJob"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling k/v pass in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3e8

    div-long v12, v8, v12

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " minutes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v10, Landroid/app/job/JobInfo$Builder;

    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/KeyValueBackupJob;->getJobIdForUserId(I)I

    move-result v11

    sget-object v12, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {v10, v11, v12}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 97
    invoke-virtual {v10, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    .line 98
    invoke-virtual {v10, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    .line 99
    invoke-virtual {v10, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    const-wide/32 v11, 0x5265c00

    .line 100
    invoke-virtual {v10, v11, v12}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    .line 102
    .local v10, "builder":Landroid/app/job/JobInfo$Builder;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v11, "extraInfo":Landroid/os/Bundle;
    const-string/jumbo v12, "userId"

    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v10, v11}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 106
    const-string/jumbo v12, "jobscheduler"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v13, p1

    :try_start_4
    invoke-virtual {v13, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/job/JobScheduler;

    .line 107
    .local v12, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {v10}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 109
    sget-object v14, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v1, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 110
    sget-object v14, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide/from16 v17, v3

    .end local v3    # "interval":J
    .local v17, "interval":J
    add-long v3, v15, v8

    invoke-virtual {v14, v1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 111
    .end local v0    # "networkType":I
    .end local v5    # "fuzz":J
    .end local v7    # "needsCharging":Z
    .end local v10    # "builder":Landroid/app/job/JobInfo$Builder;
    .end local v11    # "extraInfo":Landroid/os/Bundle;
    .end local v12    # "js":Landroid/app/job/JobScheduler;
    .end local v17    # "interval":J
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_3

    .line 87
    .end local v8    # "delay":J
    .restart local p2    # "delay":J
    :catchall_1
    move-exception v0

    move-object/from16 v13, p1

    :goto_1
    :try_start_5
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local p0    # "userId":I
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "delay":J
    .end local p4    # "constants":Lcom/android/server/backup/BackupManagerConstants;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 111
    .restart local p0    # "userId":I
    .restart local p1    # "ctx":Landroid/content/Context;
    .restart local p2    # "delay":J
    .restart local p4    # "constants":Lcom/android/server/backup/BackupManagerConstants;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 87
    :catchall_3
    move-exception v0

    goto :goto_1

    .line 111
    :catchall_4
    move-exception v0

    move-object/from16 v13, p1

    :goto_2
    move-wide/from16 v8, p2

    .end local p2    # "delay":J
    .restart local v8    # "delay":J
    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method public static schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/backup/BackupManagerConstants;

    .line 67
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 139
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "userId":I
    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-static {v0}, Lcom/android/server/backup/KeyValueBackupJob;->clearScheduledForUserId(I)V

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v1

    .line 148
    .local v1, "service":Lcom/android/server/backup/Trampoline;
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/backup/Trampoline;->backupNowForUser(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 153
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 143
    .end local v1    # "service":Lcom/android/server/backup/Trampoline;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 159
    const/4 v0, 0x0

    return v0
.end method
