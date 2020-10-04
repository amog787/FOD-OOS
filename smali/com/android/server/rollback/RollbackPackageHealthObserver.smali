.class public final Lcom/android/server/rollback/RollbackPackageHealthObserver;
.super Ljava/lang/Object;
.source "RollbackPackageHealthObserver.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# static fields
.field private static final INVALID_ROLLBACK_ID:I = -0x1

.field private static final NAME:Ljava/lang/String; = "rollback-observer"

.field private static final NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

.field private static final NUMBER_OF_NATIVE_CRASH_POLLS:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "RollbackPackageHealthObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLastStagedRollbackIdFile:Ljava/io/File;

.field private mNumberOfNativeCrashPollsRemaining:J

.field private final mPendingStagedRollbackIds:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingStagedRollbackIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 85
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 86
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackPackageHealthObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "rollback-observer"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v1, "dataDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 92
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "last-staged-rollback-id"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    .line 93
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackPackageHealthObserver;
    .param p1, "x1"    # Landroid/content/rollback/RollbackManager;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/BroadcastReceiver;
    .param p4, "x4"    # Landroid/content/pm/VersionedPackage;

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    return-void
.end method

.method private checkAndMitigateNativeCrashes()V
    .locals 4

    .line 371
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    .line 373
    const-string/jumbo v0, "ro.init.updatable_crashing"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;)Z

    goto :goto_0

    .line 378
    :cond_0
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    sget-wide v2, Lcom/android/server/rollback/RollbackPackageHealthObserver;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    :cond_1
    :goto_0
    return-void
.end method

.method private getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;
    .locals 6
    .param p1, "rollbackManager"    # Landroid/content/rollback/RollbackManager;
    .param p2, "failedPackage"    # Landroid/content/pm/VersionedPackage;

    .line 233
    invoke-virtual {p1}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/RollbackInfo;

    .line 234
    .local v1, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 235
    .local v3, "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v4

    .line 238
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 239
    .local v4, "hasFailedPackage":Z
    :goto_2
    if-eqz v4, :cond_1

    .line 240
    return-object v1

    .line 242
    .end local v3    # "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    .end local v4    # "hasFailedPackage":Z
    :cond_1
    goto :goto_1

    .line 243
    .end local v1    # "rollback":Landroid/content/rollback/RollbackInfo;
    :cond_2
    goto :goto_0

    .line 244
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;
    .locals 5

    .line 259
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 261
    return-object v1

    .line 265
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/pm/VersionedPackage;

    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 266
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-object v2

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RollbackPackageHealthObserver"

    const-string v4, "Module metadata provider not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-object v1
.end method

.method private getModuleMetadataPackageName()Ljava/lang/String;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x0

    return-object v1

    .line 254
    :cond_0
    return-object v0
.end method

.method private handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V
    .locals 8
    .param p1, "rollbackManager"    # Landroid/content/rollback/RollbackManager;
    .param p2, "rollbackId"    # I
    .param p3, "listener"    # Landroid/content/BroadcastReceiver;
    .param p4, "moduleMetadataPackage"    # Landroid/content/pm/VersionedPackage;

    .line 290
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 292
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    nop

    .line 293
    invoke-virtual {p1}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, "recentRollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 295
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    .line 296
    .local v3, "recentRollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v4

    .line 297
    .local v4, "sessionId":I
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    if-ne p2, v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 299
    nop

    .line 300
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 301
    .local v5, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 302
    iget-object v6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->saveLastStagedRollbackId(I)V

    .line 304
    const/4 v6, 0x4

    invoke-static {p4, v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    .line 307
    iget-object v6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const-string v7, "Rollback staged install"

    invoke-virtual {v6, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    const/4 v6, 0x3

    invoke-static {p4, v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    .line 312
    iget-object v6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    .end local v3    # "recentRollback":Landroid/content/rollback/RollbackInfo;
    .end local v4    # "sessionId":I
    .end local v5    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method static synthetic lambda$execute$1(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V
    .locals 3
    .param p0, "rollbackManager"    # Landroid/content/rollback/RollbackManager;
    .param p1, "rollback"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p3, "rollbackReceiver"    # Lcom/android/server/rollback/LocalIntentReceiver;

    .line 148
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v0

    .line 149
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-virtual {p3}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 148
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    return-void
.end method

.method private listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;
    .locals 3
    .param p1, "rollbackManager"    # Landroid/content/rollback/RollbackManager;
    .param p2, "rollbackId"    # I
    .param p3, "moduleMetadataPackage"    # Landroid/content/pm/VersionedPackage;

    .line 275
    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)V

    .line 282
    .local v0, "sessionUpdatedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.content.pm.action.SESSION_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "sessionUpdatedFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    return-object v0
.end method

.method private static logEvent(Landroid/content/pm/VersionedPackage;I)V
    .locals 3
    .param p0, "moduleMetadataPackage"    # Landroid/content/pm/VersionedPackage;
    .param p1, "type"    # I

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog event occurred of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackPackageHealthObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-eqz p0, :cond_0

    .line 361
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v1

    int-to-long v1, v1

    .line 361
    invoke-static {p1, v0, v1, v2}, Landroid/util/StatsLog;->logWatchdogRollbackOccurred(ILjava/lang/String;J)Z

    .line 364
    :cond_0
    return-void
.end method

.method private markStagedSessionHandled(I)Z
    .locals 3
    .param p1, "rollbackId"    # I

    .line 323
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBootCompleted()V
    .locals 12

    .line 176
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 177
    .local v0, "rollbackManager":Landroid/content/rollback/RollbackManager;
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    .line 178
    .local v1, "packageInstaller":Landroid/content/pm/PackageInstaller;
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "moduleMetadataPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    .line 181
    .local v3, "newModuleMetadataPackage":Landroid/content/pm/VersionedPackage;
    invoke-direct {p0, v0, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->scheduleCheckAndMitigateNativeCrashes()V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->popLastStagedRollbackId()I

    move-result v4

    .line 186
    .local v4, "rollbackId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 188
    return-void

    .line 191
    :cond_1
    const/4 v5, 0x0

    .line 192
    .local v5, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/rollback/RollbackInfo;

    .line 193
    .local v7, "info":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v8

    if-ne v4, v8, :cond_2

    .line 194
    move-object v5, v7

    .line 195
    goto :goto_1

    .line 197
    .end local v7    # "info":Landroid/content/rollback/RollbackInfo;
    :cond_2
    goto :goto_0

    .line 199
    :cond_3
    :goto_1
    const-string v6, "RollbackPackageHealthObserver"

    if-nez v5, :cond_4

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rollback info not found for last staged rollback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 206
    :cond_4
    const/4 v7, 0x0

    .line 207
    .local v7, "oldModuleMetadataPackage":Landroid/content/pm/VersionedPackage;
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/rollback/PackageRollbackInfo;

    .line 208
    .local v9, "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 209
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v7

    .line 210
    goto :goto_3

    .line 212
    .end local v9    # "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    :cond_5
    goto :goto_2

    .line 214
    :cond_6
    :goto_3
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v8

    .line 215
    .local v8, "sessionId":I
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v9

    .line 216
    .local v9, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v9, :cond_7

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "On boot completed, could not load session id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 220
    :cond_7
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 221
    const/4 v6, 0x2

    invoke-static {v7, v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    goto :goto_4

    .line 223
    :cond_8
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    .line 226
    :cond_9
    const/4 v6, 0x3

    invoke-static {v7, v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    .line 229
    :goto_4
    return-void
.end method

.method private popLastStagedRollbackId()I
    .locals 4

    .line 343
    const/4 v0, -0x1

    .line 344
    .local v0, "rollbackId":I
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    return v0

    .line 349
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    .line 350
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 353
    goto :goto_0

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RollbackPackageHealthObserver"

    const-string v3, "Failed to retrieve last staged rollback id"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 355
    return v0
.end method

.method private saveLastStagedRollbackId(I)V
    .locals 3
    .param p1, "stagedRollbackId"    # I

    .line 330
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 331
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 332
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 333
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 334
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 335
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "RollbackPackageHealthObserver"

    const-string v2, "Failed to save last staged rollback id"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 340
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private scheduleCheckAndMitigateNativeCrashes()V
    .locals 3

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " polls to check and mitigate native crashes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackPackageHealthObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$0IN9novFyWgQaB1z9Q2H7ZQ6gqY;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$0IN9novFyWgQaB1z9Q2H7ZQ6gqY;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/pm/VersionedPackage;)Z
    .locals 7
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;

    .line 110
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 111
    .local v0, "rollbackManager":Landroid/content/rollback/RollbackManager;
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    .line 112
    .local v1, "moduleMetadataPackage":Landroid/content/pm/VersionedPackage;
    invoke-direct {p0, v0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v2

    .line 114
    .local v2, "rollback":Landroid/content/rollback/RollbackInfo;
    if-nez v2, :cond_0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected rollback but no valid rollback found for package: [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] with versionCode: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    const-string v4, "RollbackPackageHealthObserver"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v3, 0x0

    return v3

    .line 121
    :cond_0
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    .line 123
    new-instance v4, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v5, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;

    invoke-direct {v5, p0, v2, v0, v1}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)V

    invoke-direct {v4, v5}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 147
    .local v4, "rollbackReceiver":Lcom/android/server/rollback/LocalIntentReceiver;
    iget-object v5, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$oOra6LB_hHJjBK__eXmSDqgCWsk;

    invoke-direct {v6, v0, v2, p1, v4}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$oOra6LB_hHJjBK__eXmSDqgCWsk;-><init>(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 157
    const-string/jumbo v0, "rollback-observer"

    return-object v0
.end method

.method public synthetic lambda$checkAndMitigateNativeCrashes$3$RollbackPackageHealthObserver()V
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method public synthetic lambda$execute$0$RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;Landroid/content/Intent;)V
    .locals 5
    .param p1, "rollback"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "rollbackManager"    # Landroid/content/rollback/RollbackManager;
    .param p3, "moduleMetadataPackage"    # Landroid/content/pm/VersionedPackage;
    .param p4, "result"    # Landroid/content/Intent;

    .line 124
    const-string v0, "android.content.rollback.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    .line 129
    .local v1, "rollbackId":I
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    nop

    .line 133
    invoke-direct {p0, p2, v1, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    .line 135
    .local v2, "listener":Landroid/content/BroadcastReceiver;
    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    .line 137
    .end local v1    # "rollbackId":I
    .end local v2    # "listener":Landroid/content/BroadcastReceiver;
    goto :goto_0

    .line 131
    .restart local v1    # "rollbackId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 138
    .end local v1    # "rollbackId":I
    :cond_0
    const/4 v1, 0x2

    invoke-static {p3, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x3

    invoke-static {p3, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    .line 145
    :goto_0
    return-void
.end method

.method public synthetic lambda$onBootCompletedAsync$2$RollbackPackageHealthObserver()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompleted()V

    return-void
.end method

.method public synthetic lambda$scheduleCheckAndMitigateNativeCrashes$4$RollbackPackageHealthObserver()V
    .locals 0

    .line 393
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method public onBootCompletedAsync()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$AIuzQKXcl9vSW9YzEpmdp7QJz1M;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$AIuzQKXcl9vSW9YzEpmdp7QJz1M;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;)I
    .locals 2
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;

    .line 98
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    invoke-direct {p0, v0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public startObservingHealth(Ljava/util/List;J)V
    .locals 1
    .param p2, "durationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 165
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 166
    return-void
.end method
