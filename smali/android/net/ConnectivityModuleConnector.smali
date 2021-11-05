.class public Landroid/net/ConnectivityModuleConnector;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;,
        Landroid/net/ConnectivityModuleConnector$DependenciesImpl;,
        Landroid/net/ConnectivityModuleConnector$Dependencies;,
        Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;,
        Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;
    }
.end annotation


# static fields
.field private static final CONFIG_ALWAYS_RATELIMIT_NETWORKSTACK_CRASH:Ljava/lang/String; = "always_ratelimit_networkstack_crash"

.field private static final CONFIG_MIN_CRASH_INTERVAL_MS:Ljava/lang/String; = "min_crash_interval"

.field private static final CONFIG_MIN_UPTIME_BEFORE_CRASH_MS:Ljava/lang/String; = "min_uptime_before_crash"

.field private static final DEFAULT_MIN_CRASH_INTERVAL_MS:J = 0x1499700L

.field private static final DEFAULT_MIN_UPTIME_BEFORE_CRASH_MS:J = 0x1b7740L

.field private static final IN_PROCESS_SUFFIX:Ljava/lang/String; = ".InProcess"

.field private static final PREFS_FILE:Ljava/lang/String; = "ConnectivityModuleConnector.xml"

.field private static final PREF_KEY_LAST_CRASH_TIME:Ljava/lang/String; = "lastcrash_time"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/net/ConnectivityModuleConnector;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

.field private final mHealthListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Landroid/net/ConnectivityModuleConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    new-instance v0, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;-><init>(Landroid/net/ConnectivityModuleConnector$1;)V

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;-><init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V
    .locals 2
    .param p1, "deps"    # Landroid/net/ConnectivityModuleConnector$Dependencies;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/net/util/SharedLog;

    sget-object v1, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 89
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    .line 90
    return-void
.end method

.method static synthetic access$100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Ljava/lang/String;

    .line 51
    invoke-static {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ConnectivityModuleConnector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ConnectivityModuleConnector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "servicePermissionName"    # Ljava/lang/String;

    .line 288
    nop

    .line 289
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, "hasPermission":I
    if-nez v0, :cond_0

    .line 294
    return-void

    .line 291
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Networking module does not have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized getInstance()Landroid/net/ConnectivityModuleConnector;
    .locals 2

    const-class v0, Landroid/net/ConnectivityModuleConnector;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Landroid/net/ConnectivityModuleConnector;

    invoke-direct {v1}, Landroid/net/ConnectivityModuleConnector;-><init>()V

    sput-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    .line 99
    :cond_0
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .line 354
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 355
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "ConnectivityModuleConnector.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v0, "prefsFile":Ljava/io/File;
    iget-object v2, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 357
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    return-object v1

    .line 358
    .end local v0    # "prefsFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Error loading shared preferences"

    invoke-direct {p0, v1, v0}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    const/4 v1, 0x0

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 384
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 391
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 398
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 401
    monitor-exit v0

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 405
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 408
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    .line 298
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {v1, v2, v0}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 301
    .local v4, "uptime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 302
    .local v6, "now":J
    const-string v0, "connectivity"

    const-string/jumbo v8, "min_crash_interval"

    const-wide/32 v9, 0x1499700

    invoke-static {v0, v8, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 304
    .local v8, "minCrashIntervalMs":J
    const-string v0, "connectivity"

    const-string/jumbo v10, "min_uptime_before_crash"

    const-wide/32 v11, 0x1b7740

    invoke-static {v0, v10, v11, v12}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    .line 306
    .local v10, "minUptimeBeforeCrash":J
    const-string v0, "connectivity"

    const-string v12, "always_ratelimit_networkstack_crash"

    const/4 v13, 0x0

    invoke-static {v0, v12, v13}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move v12, v0

    .line 309
    .local v12, "alwaysRatelimit":Z
    invoke-direct/range {p0 .. p0}, Landroid/net/ConnectivityModuleConnector;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v14, v0

    .line 310
    .local v14, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {v1, v14}, Landroid/net/ConnectivityModuleConnector;->tryGetLastCrashTime(Landroid/content/SharedPreferences;)J

    move-result-wide v15

    .line 323
    .local v15, "lastCrashTime":J
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/16 v17, 0x1

    if-eqz v0, :cond_0

    if-nez v12, :cond_0

    move/from16 v0, v17

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    move/from16 v18, v0

    .line 324
    .local v18, "alwaysCrash":Z
    cmp-long v0, v4, v10

    if-gez v0, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    move/from16 v19, v0

    .line 325
    .local v19, "justBooted":Z
    const-wide/16 v20, 0x0

    cmp-long v0, v15, v20

    if-eqz v0, :cond_2

    cmp-long v0, v15, v6

    if-gez v0, :cond_2

    move/from16 v0, v17

    goto :goto_2

    :cond_2
    move v0, v13

    :goto_2
    move/from16 v20, v0

    .line 326
    .local v20, "haveLastCrashTime":Z
    if-eqz v20, :cond_3

    add-long v21, v15, v8

    cmp-long v0, v6, v21

    if-gez v0, :cond_3

    move/from16 v13, v17

    .line 328
    .local v13, "haveKnownRecentCrash":Z
    :cond_3
    if-nez v18, :cond_8

    if-nez v19, :cond_5

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v4

    goto :goto_5

    .line 340
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 342
    move-wide/from16 v21, v4

    .end local v4    # "uptime":J
    .local v21, "uptime":J
    iget-object v4, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    iget-object v5, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    invoke-direct {v0, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 344
    .local v0, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;>;"
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :try_start_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;

    .line 346
    .local v5, "listener":Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;
    invoke-interface {v5, v3}, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;->onNetworkStackFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    .end local v5    # "listener":Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;
    goto :goto_4

    .line 344
    .end local v0    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;>;"
    .end local p0    # "this":Landroid/net/ConnectivityModuleConnector;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 340
    .end local v21    # "uptime":J
    .restart local v4    # "uptime":J
    :cond_6
    move-wide/from16 v21, v4

    .line 349
    .end local v4    # "uptime":J
    .restart local v21    # "uptime":J
    :cond_7
    monitor-exit p0

    return-void

    .line 328
    .end local v21    # "uptime":J
    .restart local v4    # "uptime":J
    .restart local p0    # "this":Landroid/net/ConnectivityModuleConnector;
    :cond_8
    move-wide/from16 v21, v4

    .line 334
    .end local v4    # "uptime":J
    .restart local v21    # "uptime":J
    :goto_5
    :try_start_5
    invoke-direct {v1, v14, v6, v7}, Landroid/net/ConnectivityModuleConnector;->tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 297
    .end local v6    # "now":J
    .end local v8    # "minCrashIntervalMs":J
    .end local v10    # "minUptimeBeforeCrash":J
    .end local v12    # "alwaysRatelimit":Z
    .end local v13    # "haveKnownRecentCrash":Z
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "lastCrashTime":J
    .end local v18    # "alwaysCrash":Z
    .end local v19    # "justBooted":Z
    .end local v20    # "haveLastCrashTime":Z
    .end local v21    # "uptime":J
    .end local p0    # "this":Landroid/net/ConnectivityModuleConnector;
    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryGetLastCrashTime(Landroid/content/SharedPreferences;)J
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 365
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 367
    :cond_0
    :try_start_0
    const-string/jumbo v2, "lastcrash_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 368
    :catchall_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "Error getting last crash time"

    invoke-direct {p0, v3, v2}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    return-wide v0
.end method

.method private tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "value"    # J

    .line 375
    if-nez p1, :cond_0

    return-void

    .line 377
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastcrash_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Error writing last crash time"

    invoke-direct {p0, v1, v0}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 416
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    const-string v0, "Network stack init"

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;

    .line 195
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    .locals 7
    .param p1, "serviceIntentBaseAction"    # Ljava/lang/String;
    .param p2, "servicePermissionName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting networking module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 222
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    const/4 v2, 0x1

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 226
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 227
    iget-object v2, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    const/4 v3, 0x0

    invoke-interface {v2, v0, p1, p2, v3}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 229
    const-string v2, "Starting networking module in network_stack process"

    invoke-direct {p0, v2}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    const-string v2, "Starting networking module in system_server process"

    invoke-direct {p0, v2}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 234
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 235
    const-string v3, "Could not resolve the networking module"

    invoke-direct {p0, v3, v2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void

    .line 239
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;

    invoke-direct {v5, p0, v3, p3, v2}, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;-><init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;Landroid/net/ConnectivityModuleConnector$1;)V

    const/16 v2, 0x41

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind to networking module in-process, or in app with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 252
    :cond_2
    const-string v2, "Networking module service start requested"

    invoke-direct {p0, v2}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 253
    return-void
.end method
