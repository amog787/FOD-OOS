.class Lcom/android/server/usage/AppStandbyController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field public static final DEFAULT_AUTO_RESTRICTED_BUCKET_DELAY_MS:J = 0x5265c00L

.field public static final DEFAULT_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS:Z = true

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_DOZE_TIMEOUT:J = 0xdbba00L

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_EXEMPTED_SYNC_START_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_INITIAL_FOREGROUND_SERVICE_START_TIMEOUT:J = 0x1b7740L

.field public static final DEFAULT_NOTIFICATION_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_STRONG_USAGE_TIMEOUT:J = 0x36ee80L

.field public static final DEFAULT_SYNC_ADAPTER_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_INTERACTION_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_UPDATE_TIMEOUT:J = 0x6ddd00L

.field public static final DEFAULT_UNEXEMPTED_SYNC_SCHEDULED_TIMEOUT:J = 0x927c0L

.field private static final KEY_AUTO_RESTRICTED_BUCKET_DELAY_MS:Ljava/lang/String; = "auto_restricted_bucket_delay_ms"

.field private static final KEY_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS:Ljava/lang/String; = "cross_profile_apps_share_standby_buckets"

.field private static final KEY_ELAPSED_TIME_THRESHOLDS:Ljava/lang/String; = "elapsed_thresholds"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_d_duration"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_nd_duration"

.field private static final KEY_EXEMPTED_SYNC_START_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_start_duration"

.field private static final KEY_INITIAL_FOREGROUND_SERVICE_START_HOLD_DURATION:Ljava/lang/String; = "initial_foreground_service_start_duration"

.field private static final KEY_NOTIFICATION_SEEN_HOLD_DURATION:Ljava/lang/String; = "notification_seen_duration"

.field private static final KEY_PREDICTION_TIMEOUT:Ljava/lang/String; = "prediction_timeout"

.field private static final KEY_SCREEN_TIME_THRESHOLDS:Ljava/lang/String; = "screen_thresholds"

.field private static final KEY_STRONG_USAGE_HOLD_DURATION:Ljava/lang/String; = "strong_usage_duration"

.field private static final KEY_SYNC_ADAPTER_HOLD_DURATION:Ljava/lang/String; = "sync_adapter_duration"

.field private static final KEY_SYSTEM_INTERACTION_HOLD_DURATION:Ljava/lang/String; = "system_interaction_duration"

.field private static final KEY_SYSTEM_UPDATE_HOLD_DURATION:Ljava/lang/String; = "system_update_usage_duration"

.field private static final KEY_UNEXEMPTED_SYNC_SCHEDULED_HOLD_DURATION:Ljava/lang/String; = "unexempted_sync_scheduled_duration"


# instance fields
.field private final mParser:Landroid/util/KeyValueListParser;

.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2337
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2338
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2335
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p1, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 2339
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 2353
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 2354
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 2355
    return-void
.end method

.method parseLongArray(Ljava/lang/String;[J[J)[J
    .locals 7
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "defaults"    # [J
    .param p3, "minValues"    # [J

    .line 2455
    if-nez p1, :cond_0

    return-object p2

    .line 2456
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2458
    return-object p2

    .line 2460
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2461
    .local v0, "thresholds":[Ljava/lang/String;
    array-length v1, v0

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$2400()[I

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_6

    .line 2462
    array-length v1, p3

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$2400()[I

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_2

    .line 2463
    const-string v1, "AppStandbyController"

    const-string v2, "minValues array is the wrong size"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$2400()[I

    move-result-object v1

    array-length v1, v1

    new-array p3, v1, [J

    .line 2467
    :cond_2
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$2400()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [J

    .line 2468
    .local v1, "array":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$2400()[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 2470
    :try_start_0
    aget-object v3, v0, v2

    const-string v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, v0, v2

    const-string v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 2474
    :cond_3
    aget-wide v3, p3, v2

    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v1, v2

    goto :goto_2

    .line 2471
    :cond_4
    :goto_1
    aget-wide v3, p3, v2

    aget-object v5, v0, v2

    .line 2472
    invoke-static {v5}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    .line 2471
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    :goto_2
    nop

    .line 2468
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2476
    :catch_0
    move-exception v3

    .line 2477
    .local v3, "e":Ljava/lang/RuntimeException;
    return-object p2

    .line 2480
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_5
    return-object v1

    .line 2482
    .end local v1    # "array":[J
    :cond_6
    return-object p2
.end method

.method registerObserver()V
    .locals 3

    .line 2342
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$1800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2343
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "app_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2344
    const-string v1, "app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2345
    const-string v1, "enable_restricted_bucket"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2347
    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2349
    return-void
.end method

.method updateSettings()V
    .locals 14

    .line 2358
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appidle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2360
    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->access$1800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_standby_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2359
    const-string v1, "AppStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptivebat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2363
    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->access$1800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adaptive_battery_management_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2362
    const-string v1, "AppStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appidleconstants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2366
    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->access$1800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2365
    const-string v2, "app_idle_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getAppIdleSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2377
    goto :goto_0

    .line 2374
    :catch_0
    move-exception v0

    .line 2375
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value for app idle settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStandbyController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$1600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2381
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "screen_thresholds"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2382
    .local v1, "screenThresholdsValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2383
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$1900()[J

    move-result-object v4

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$2000()[J

    move-result-object v5

    .line 2382
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->parseLongArray(Ljava/lang/String;[J[J)[J

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 2385
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "elapsed_thresholds"

    invoke-virtual {v2, v4, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2387
    .local v2, "elapsedThresholdsValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2388
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$2100()[J

    move-result-object v4

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->access$2200()[J

    move-result-object v5

    .line 2387
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->parseLongArray(Ljava/lang/String;[J[J)[J

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 2389
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/32 v8, 0xdbba00

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 2391
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "strong_usage_duration"

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v4, v6, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 2394
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "notification_seen_duration"

    const-wide/32 v10, 0x2932e00

    invoke-virtual {v4, v6, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 2397
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "system_update_usage_duration"

    const-wide/32 v12, 0x6ddd00

    invoke-virtual {v4, v6, v12, v13}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 2400
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "prediction_timeout"

    invoke-virtual {v4, v6, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 2403
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "sync_adapter_duration"

    const-wide/32 v10, 0x927c0

    invoke-virtual {v4, v6, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 2407
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v4, v6, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 2412
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v4, v6, v8, v9}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 2417
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "exempted_sync_start_duration"

    invoke-virtual {v4, v6, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 2422
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "unexempted_sync_scheduled_duration"

    invoke-virtual {v4, v6, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 2427
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "system_interaction_duration"

    invoke-virtual {v4, v6, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 2431
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "initial_foreground_service_start_duration"

    const-wide/32 v7, 0x1b7740

    invoke-virtual {v4, v6, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 2436
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "auto_restricted_bucket_delay_ms"

    const-wide/32 v7, 0x5265c00

    .line 2438
    invoke-virtual {v4, v6, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2436
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 2442
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v4, v6, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    .line 2446
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->isRestrictedBucketEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/usage/AppStandbyController;->access$2302(Lcom/android/server/usage/AppStandbyController;Z)Z

    .line 2447
    nop

    .end local v1    # "screenThresholdsValue":Ljava/lang/String;
    .end local v2    # "elapsedThresholdsValue":Ljava/lang/String;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2451
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isAppIdleEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    .line 2452
    return-void

    .line 2447
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
