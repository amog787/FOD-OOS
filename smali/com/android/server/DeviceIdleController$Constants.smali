.class public final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field private static final KEY_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "idle_after_inactive_to"

.field private static final KEY_IDLE_FACTOR:Ljava/lang/String; = "idle_factor"

.field private static final KEY_IDLE_PENDING_FACTOR:Ljava/lang/String; = "idle_pending_factor"

.field private static final KEY_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "idle_pending_to"

.field private static final KEY_IDLE_TIMEOUT:Ljava/lang/String; = "idle_to"

.field private static final KEY_INACTIVE_TIMEOUT:Ljava/lang/String; = "inactive_to"

.field private static final KEY_LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "light_after_inactive_to"

.field private static final KEY_LIGHT_IDLE_FACTOR:Ljava/lang/String; = "light_idle_factor"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:Ljava/lang/String; = "light_idle_maintenance_max_budget"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:Ljava/lang/String; = "light_idle_maintenance_min_budget"

.field private static final KEY_LIGHT_IDLE_TIMEOUT:Ljava/lang/String; = "light_idle_to"

.field private static final KEY_LIGHT_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "light_max_idle_to"

.field private static final KEY_LIGHT_PRE_IDLE_TIMEOUT:Ljava/lang/String; = "light_pre_idle_to"

.field private static final KEY_LOCATING_TIMEOUT:Ljava/lang/String; = "locating_to"

.field private static final KEY_LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy"

.field private static final KEY_MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to"

.field private static final KEY_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to"

.field private static final KEY_MAX_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "max_temp_app_whitelist_duration"

.field private static final KEY_MIN_DEEP_MAINTENANCE_TIME:Ljava/lang/String; = "min_deep_maintenance_time"

.field private static final KEY_MIN_LIGHT_MAINTENANCE_TIME:Ljava/lang/String; = "min_light_maintenance_time"

.field private static final KEY_MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm"

.field private static final KEY_MMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "mms_temp_app_whitelist_duration"

.field private static final KEY_MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to"

.field private static final KEY_NOTIFICATION_WHITELIST_DURATION:Ljava/lang/String; = "notification_whitelist_duration"

.field private static final KEY_PRE_IDLE_FACTOR_LONG:Ljava/lang/String; = "pre_idle_factor_long"

.field private static final KEY_PRE_IDLE_FACTOR_SHORT:Ljava/lang/String; = "pre_idle_factor_short"

.field private static final KEY_QUICK_DOZE_DELAY_TIMEOUT:Ljava/lang/String; = "quick_doze_delay_to"

.field private static final KEY_SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to"

.field private static final KEY_SMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "sms_temp_app_whitelist_duration"

.field private static final KEY_WAIT_FOR_UNLOCK:Ljava/lang/String; = "wait_for_unlock"


# instance fields
.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LIGHT_PRE_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_WHITELIST_DURATION:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_WHITELIST_DURATION:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public NOTIFICATION_WHITELIST_DURATION:J

.field public PRE_IDLE_FACTOR_LONG:F

.field public PRE_IDLE_FACTOR_SHORT:F

.field public QUICK_DOZE_DELAY_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_WHITELIST_DURATION:J

.field public WAIT_FOR_UNLOCK:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmallBatteryDevice:Z

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .line 1239
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1240
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1237
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 1241
    iput-object p3, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 1242
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 1243
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 1244
    const-string v1, "device_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1243
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1246
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    .line 1247
    return-void
.end method

.method private updateConstants()V
    .locals 34

    .line 1259
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v2

    .line 1261
    :try_start_0
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v3, v1, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "device_idle_constants"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    goto :goto_0

    .line 1349
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1263
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v3, "DeviceIdleController"

    const-string v4, "Bad device idle settings"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1269
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "light_after_inactive_to"

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1272
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "light_pre_idle_to"

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    .line 1274
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "light_idle_to"

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 1276
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "light_idle_factor"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v3, v6}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 1278
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "light_max_idle_to"

    const-wide/32 v7, 0xdbba0

    invoke-virtual {v0, v3, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1280
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "light_idle_maintenance_min_budget"

    const-wide/32 v7, 0xea60

    invoke-virtual {v0, v3, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 1283
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "light_idle_maintenance_max_budget"

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 1286
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "min_light_maintenance_time"

    const-wide/16 v9, 0x1388

    invoke-virtual {v0, v3, v9, v10}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 1289
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "min_deep_maintenance_time"

    const-wide/16 v9, 0x7530

    invoke-virtual {v0, v3, v9, v10}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 1292
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :cond_0
    const/16 v0, 0x1e

    :goto_1
    mul-int/lit8 v0, v0, 0x3c

    int-to-long v12, v0

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 1293
    .local v12, "inactiveTimeoutDefault":J
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "inactive_to"

    invoke-virtual {v0, v3, v12, v13}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1295
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "sensing_to"

    const-wide/32 v7, 0x3a980

    invoke-virtual {v0, v3, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 1297
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "locating_to"

    invoke-virtual {v0, v3, v9, v10}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 1299
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "location_accuracy"

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3, v7}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 1300
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "motion_inactive_to"

    const-wide/32 v7, 0x927c0

    move-wide/from16 v16, v12

    .end local v12    # "inactiveTimeoutDefault":J
    .local v16, "inactiveTimeoutDefault":J
    invoke-virtual {v0, v3, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 1302
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_1

    const/16 v3, 0xf

    goto :goto_2

    :cond_1
    const/16 v3, 0x1e

    :goto_2
    mul-int/lit8 v3, v3, 0x3c

    int-to-long v11, v3

    mul-long/2addr v11, v14

    .line 1303
    .local v11, "idleAfterInactiveTimeout":J
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_after_inactive_to"

    invoke-virtual {v0, v3, v11, v12}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1307
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_pending_to"

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 1309
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "max_idle_pending_to"

    invoke-virtual {v0, v3, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 1311
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_pending_factor"

    invoke-virtual {v0, v3, v6}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 1313
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "quick_doze_delay_to"

    const-wide/32 v7, 0xea60

    invoke-virtual {v0, v3, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 1315
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_to"

    const-wide/32 v7, 0x36ee80

    invoke-virtual {v0, v3, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 1317
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "max_idle_to"

    const-wide/32 v7, 0x1499700

    invoke-virtual {v0, v3, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 1319
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_factor"

    invoke-virtual {v0, v3, v6}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 1321
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "min_time_to_alarm"

    const-wide/32 v6, 0x1b7740

    invoke-virtual {v0, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 1323
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "max_temp_app_whitelist_duration"

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    .line 1325
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "mms_temp_app_whitelist_duration"

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    .line 1327
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "sms_temp_app_whitelist_duration"

    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    .line 1329
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "notification_whitelist_duration"

    invoke-virtual {v0, v3, v9, v10}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    .line 1331
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "wait_for_unlock"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 1332
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "pre_idle_factor_long"

    const v4, 0x3fd5c28f    # 1.67f

    invoke-virtual {v0, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    .line 1333
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "pre_idle_factor_short"

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v0, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    .line 1337
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "location_accuracy"

    const/high16 v4, 0x41200000    # 10.0f

    .line 1338
    invoke-virtual {v0, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v18

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_after_inactive_to"

    const-wide/32 v4, 0x668a0

    .line 1339
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "inactive_to"

    const-wide/32 v4, 0xea600

    .line 1340
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "max_idle_pending_to"

    const-wide/32 v4, 0x1d4c0

    .line 1341
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_pending_to"

    .line 1342
    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v25

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "motion_inactive_to"

    .line 1343
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v27

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_factor"

    const/high16 v4, 0x40400000    # 3.0f

    .line 1344
    invoke-virtual {v0, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v29

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "min_time_to_alarm"

    .line 1345
    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "max_idle_to"

    const-wide/32 v4, 0x5265c00

    .line 1346
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    .line 1337
    invoke-static/range {v18 .. v33}, Lcom/android/server/DeviceIdleControllerInjector;->mayUseAggressiveTimeoutLocked(FJJJJJFJJ)Z

    .line 1349
    nop

    .end local v11    # "idleAfterInactiveTimeout":J
    .end local v16    # "inactiveTimeoutDefault":J
    monitor-exit v2

    .line 1350
    return-void

    .line 1349
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1353
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "light_after_inactive_to"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1357
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1359
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_pre_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1361
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1363
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1364
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1365
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1367
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1369
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1371
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1373
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1375
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_min_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1376
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1377
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1379
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_max_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1381
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1383
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_light_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1385
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1387
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_deep_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1389
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1391
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1393
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1395
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sensing_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1396
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1397
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1399
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "locating_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1400
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1401
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1403
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "location_accuracy"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, "m"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1407
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1408
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1409
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1411
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_after_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1412
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1413
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1415
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1417
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1419
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1421
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1423
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_pending_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1426
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "quick_doze_delay_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1428
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1430
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1431
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1432
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1434
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1435
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1436
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1438
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1439
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1441
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_time_to_alarm"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1442
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1443
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1445
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_temp_app_whitelist_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1446
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1447
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1449
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mms_temp_app_whitelist_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1450
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1451
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1453
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sms_temp_app_whitelist_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1454
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1455
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1457
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notification_whitelist_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1459
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1461
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "wait_for_unlock"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1464
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pre_idle_factor_long"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1467
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pre_idle_factor_short"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1468
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1469
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1253
    invoke-static {p1, p2}, Lcom/android/server/DeviceIdleControllerInjector;->onChange(ZLandroid/net/Uri;)V

    .line 1255
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    .line 1256
    return-void
.end method
