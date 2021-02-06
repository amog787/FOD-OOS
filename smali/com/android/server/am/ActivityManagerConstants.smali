.class final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "ActivityManagerConstants.java"


# static fields
.field private static final ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

.field private static final ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field private static final DEFAULT_BACKGROUND_SETTLE_TIME:J = 0xea60L

.field private static final DEFAULT_BG_START_TIMEOUT:J = 0x3a98L

.field private static final DEFAULT_BOUND_SERVICE_CRASH_MAX_RETRY:I = 0x10

.field private static final DEFAULT_BOUND_SERVICE_CRASH_RESTART_DURATION:J = 0x1b7740L

.field private static final DEFAULT_CONTENT_PROVIDER_RETAIN_TIME:J = 0x4e20L

.field private static final DEFAULT_FGSERVICE_MIN_REPORT_TIME:J = 0xbb8L

.field private static final DEFAULT_FGSERVICE_MIN_SHOWN_TIME:J = 0x7d0L

.field private static final DEFAULT_FGSERVICE_SCREEN_ON_AFTER_TIME:J = 0x1388L

.field private static final DEFAULT_FGSERVICE_SCREEN_ON_BEFORE_TIME:J = 0x3e8L

.field private static final DEFAULT_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z = true

.field private static final DEFAULT_FULL_PSS_LOWERED_INTERVAL:J = 0x493e0L

.field private static final DEFAULT_FULL_PSS_MIN_INTERVAL:J = 0x124f80L

.field private static final DEFAULT_GC_MIN_INTERVAL:J = 0xea60L

.field private static final DEFAULT_GC_TIMEOUT:J = 0x1388L

.field private static DEFAULT_MAX_CACHED_PROCESSES:I = 0x0

.field private static final DEFAULT_MAX_SERVICE_INACTIVITY:J = 0x1b7740L

.field private static final DEFAULT_MEMORY_INFO_THROTTLE_TIME:J = 0x493e0L

.field private static final DEFAULT_MIN_ASSOC_LOG_DURATION:J = 0x493e0L

.field private static final DEFAULT_OOMADJ_UPDATE_POLICY:I = 0x1

.field private static final DEFAULT_PENDINGINTENT_WARNING_THRESHOLD:I = 0x7d0

.field private static final DEFAULT_POWER_CHECK_INTERVAL:J

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_1:I = 0x19

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_2:I = 0x19

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_3:I = 0xa

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_4:I = 0x2

.field private static final DEFAULT_PROCESS_START_ASYNC:Z = true

.field private static final DEFAULT_SERVICE_BG_ACTIVITY_START_TIMEOUT:J = 0x2710L

.field private static final DEFAULT_SERVICE_MIN_RESTART_TIME_BETWEEN:J = 0x2710L

.field private static final DEFAULT_SERVICE_RESET_RUN_DURATION:J = 0xea60L

.field private static final DEFAULT_SERVICE_RESTART_DURATION:J = 0x3e8L

.field private static final DEFAULT_SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field private static final DEFAULT_SERVICE_USAGE_INTERACTION_TIME:J = 0x1b7740L

.field private static final DEFAULT_TOP_TO_FGS_GRACE_DURATION:J = 0x3a98L

.field private static final DEFAULT_USAGE_STATS_INTERACTION_INTERVAL:J = 0x6ddd00L

.field static EMPTY_APP_PERCENT:I = 0x0

.field private static final ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

.field private static final FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field private static final KEY_BACKGROUND_SETTLE_TIME:Ljava/lang/String; = "background_settle_time"

.field static final KEY_BG_START_TIMEOUT:Ljava/lang/String; = "service_bg_start_timeout"

.field static final KEY_BOUND_SERVICE_CRASH_MAX_RETRY:Ljava/lang/String; = "service_crash_max_retry"

.field static final KEY_BOUND_SERVICE_CRASH_RESTART_DURATION:Ljava/lang/String; = "service_crash_restart_duration"

.field private static final KEY_CONTENT_PROVIDER_RETAIN_TIME:Ljava/lang/String; = "content_provider_retain_time"

.field private static final KEY_DEFAULT_BACKGROUND_ACTIVITY_STARTS_ENABLED:Ljava/lang/String; = "default_background_activity_starts_enabled"

.field private static final KEY_DEFAULT_BACKGROUND_FGS_STARTS_RESTRICTION_ENABLED:Ljava/lang/String; = "default_background_fgs_starts_restriction_enabled"

.field private static final KEY_FGSERVICE_MIN_REPORT_TIME:Ljava/lang/String; = "fgservice_min_report_time"

.field private static final KEY_FGSERVICE_MIN_SHOWN_TIME:Ljava/lang/String; = "fgservice_min_shown_time"

.field private static final KEY_FGSERVICE_SCREEN_ON_AFTER_TIME:Ljava/lang/String; = "fgservice_screen_on_after_time"

.field private static final KEY_FGSERVICE_SCREEN_ON_BEFORE_TIME:Ljava/lang/String; = "fgservice_screen_on_before_time"

.field private static final KEY_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Ljava/lang/String; = "force_bg_check_on_restricted"

.field private static final KEY_FULL_PSS_LOWERED_INTERVAL:Ljava/lang/String; = "full_pss_lowered_interval"

.field private static final KEY_FULL_PSS_MIN_INTERVAL:Ljava/lang/String; = "full_pss_min_interval"

.field private static final KEY_GC_MIN_INTERVAL:Ljava/lang/String; = "gc_min_interval"

.field private static final KEY_GC_TIMEOUT:Ljava/lang/String; = "gc_timeout"

.field private static final KEY_IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Ljava/lang/String; = "imperceptible_kill_exempt_packages"

.field private static final KEY_IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Ljava/lang/String; = "imperceptible_kill_exempt_proc_states"

.field private static final KEY_MAX_CACHED_PROCESSES:Ljava/lang/String; = "max_cached_processes"

.field static final KEY_MAX_SERVICE_INACTIVITY:Ljava/lang/String; = "service_max_inactivity"

.field static final KEY_MEMORY_INFO_THROTTLE_TIME:Ljava/lang/String; = "memory_info_throttle_time"

.field private static final KEY_MIN_ASSOC_LOG_DURATION:Ljava/lang/String; = "min_assoc_log_duration"

.field private static final KEY_OOMADJ_UPDATE_POLICY:Ljava/lang/String; = "oomadj_update_policy"

.field static final KEY_PENDINGINTENT_WARNING_THRESHOLD:Ljava/lang/String; = "pendingintent_warning_threshold"

.field private static final KEY_POWER_CHECK_INTERVAL:Ljava/lang/String; = "power_check_interval"

.field private static final KEY_POWER_CHECK_MAX_CPU_1:Ljava/lang/String; = "power_check_max_cpu_1"

.field private static final KEY_POWER_CHECK_MAX_CPU_2:Ljava/lang/String; = "power_check_max_cpu_2"

.field private static final KEY_POWER_CHECK_MAX_CPU_3:Ljava/lang/String; = "power_check_max_cpu_3"

.field private static final KEY_POWER_CHECK_MAX_CPU_4:Ljava/lang/String; = "power_check_max_cpu_4"

.field static final KEY_PROCESS_START_ASYNC:Ljava/lang/String; = "process_start_async"

.field static final KEY_SERVICE_BG_ACTIVITY_START_TIMEOUT:Ljava/lang/String; = "service_bg_activity_start_timeout"

.field static final KEY_SERVICE_MIN_RESTART_TIME_BETWEEN:Ljava/lang/String; = "service_min_restart_time_between"

.field static final KEY_SERVICE_RESET_RUN_DURATION:Ljava/lang/String; = "service_reset_run_duration"

.field static final KEY_SERVICE_RESTART_DURATION:Ljava/lang/String; = "service_restart_duration"

.field static final KEY_SERVICE_RESTART_DURATION_FACTOR:Ljava/lang/String; = "service_restart_duration_factor"

.field private static final KEY_SERVICE_USAGE_INTERACTION_TIME:Ljava/lang/String; = "service_usage_interaction_time"

.field static final KEY_TOP_TO_FGS_GRACE_DURATION:Ljava/lang/String; = "top_to_fgs_grace_duration"

.field private static final KEY_USAGE_STATS_INTERACTION_INTERVAL:Ljava/lang/String; = "usage_stats_interaction_interval"

.field public static MIN_ASSOC_LOG_DURATION:J = 0x0L

.field private static final MIN_AUTOMATIC_HEAP_DUMP_PSS_THRESHOLD_BYTES:J = 0x19000L

.field private static final OOMADJ_UPDATE_POLICY_QUICK:I = 0x1

.field private static final OOMADJ_UPDATE_POLICY_SLOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManagerConstants"

.field static TRIM_CACHE_PERCENT:I

.field static TRIM_EMPTY_PERCENT:I

.field static TRIM_ENABLE_MEMORY:J

.field static USE_TRIM_SETTINGS:Z

.field public static mPerf:Landroid/util/BoostFramework;


# instance fields
.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FLAG_PROCESS_START_ASYNC:Z

.field FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

.field FULL_PSS_LOWERED_INTERVAL:J

.field FULL_PSS_MIN_INTERVAL:J

.field GC_MIN_INTERVAL:J

.field GC_TIMEOUT:J

.field public IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public MAX_CACHED_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field public MEMORY_INFO_THROTTLE_TIME:J

.field public OOMADJ_UPDATE_QUICK:Z

.field public PENDINGINTENT_WARNING_THRESHOLD:I

.field POWER_CHECK_INTERVAL:J

.field POWER_CHECK_MAX_CPU_1:I

.field POWER_CHECK_MAX_CPU_2:I

.field POWER_CHECK_MAX_CPU_3:I

.field POWER_CHECK_MAX_CPU_4:I

.field public SERVICE_BG_ACTIVITY_START_TIMEOUT:J

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field SERVICE_USAGE_INTERACTION_TIME:J

.field public TOP_TO_FGS_GRACE_DURATION:J

.field USAGE_STATS_INTERACTION_INTERVAL:J

.field private mDefaultImperceptibleKillExemptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field volatile mFlagActivityStartsLoggingEnabled:Z

.field volatile mFlagBackgroundActivityStartsEnabled:Z

.field volatile mFlagBackgroundFgsStartRestrictionEnabled:Z

.field volatile mFlagForegroundServiceStartsLoggingEnabled:Z

.field private final mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mOverrideMaxCachedProcesses:I

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSystemServerAutomaticHeapDumpEnabled:Z

.field private final mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

.field private mSystemServerAutomaticHeapDumpPssThresholdBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    const/16 v0, 0x20

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 107
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    sput-wide v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    .line 314
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    .line 316
    sput-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    .line 317
    const/16 v0, 0x32

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_APP_PERCENT:I

    .line 318
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_EMPTY_PERCENT:I

    .line 319
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_CACHE_PERCENT:I

    .line 320
    const-wide/32 v0, 0x40000000

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_ENABLE_MEMORY:J

    .line 377
    const-string v0, "activity_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    .line 380
    const-string v0, "activity_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 383
    nop

    .line 384
    const-string v0, "foreground_service_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 387
    nop

    .line 388
    const-string v0, "enable_automatic_system_server_heap_dumps"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    .line 397
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 438
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 150
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 154
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 159
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 164
    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 170
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 175
    const-wide/16 v4, 0x1388

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 180
    const-wide/16 v6, 0x4e20

    iput-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 183
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 186
    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 193
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 197
    const-wide/32 v5, 0x124f80

    iput-wide v5, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 201
    const-wide/32 v5, 0x493e0

    iput-wide v5, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 205
    sget-wide v7, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 209
    const/16 v7, 0x19

    iput v7, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 214
    iput v7, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 218
    const/16 v7, 0xa

    iput v7, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 222
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 226
    const-wide/32 v8, 0x1b7740

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    .line 230
    const-wide/32 v10, 0x6ddd00

    iput-wide v10, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    .line 234
    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 238
    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 242
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 247
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 252
    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 256
    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 259
    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 262
    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 265
    const-wide/16 v0, 0x10

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 268
    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 272
    iput-wide v5, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 276
    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 295
    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 299
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 312
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 324
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 328
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    div-int/2addr v0, v7

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 332
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 333
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 338
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 343
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 349
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 365
    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 399
    new-instance v0, Lcom/android/server/am/ActivityManagerConstants$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 439
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 440
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    .line 444
    const-wide/32 v0, 0x19000

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 444
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    .line 448
    nop

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    .line 451
    nop

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 451
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 454
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    .line 455
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 456
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 457
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundActivityStarts()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundFgsStartsRestriction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateOomAdjUpdatePolicy()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateImperceptibleKillExemptions()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForceRestrictedBackgroundCheck()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMinAssocLogDuration()V

    return-void
.end method

.method public static allowTrim()Z
    .locals 4

    .line 321
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->TRIM_ENABLE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .line 521
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_APP_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 524
    :cond_0
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeTrimCachedApps(II)I
    .locals 1
    .param p0, "rawMaxEmptyProcesses"    # I
    .param p1, "totalProcessLimit"    # I

    .line 537
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_CACHE_PERCENT:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 540
    :cond_0
    sub-int v0, p1, p0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static computeTrimEmptyApps(I)I
    .locals 1
    .param p0, "rawMaxEmptyProcesses"    # I

    .line 529
    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_EMPTY_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 532
    :cond_0
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private loadDeviceConfigConstants()V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 508
    const-string v2, "activity_manager"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 507
    invoke-interface {v0, v1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 509
    return-void
.end method

.method private updateActivityStartsLoggingEnabled()V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_starts_logging_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    .line 640
    return-void
.end method

.method private updateBackgroundActivityStarts()V
    .locals 3

    .line 643
    const-string v0, "activity_manager"

    const-string v1, "default_background_activity_starts_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    .line 647
    return-void
.end method

.method private updateBackgroundFgsStartsRestriction()V
    .locals 3

    .line 654
    const-string v0, "activity_manager"

    const-string v1, "default_background_fgs_starts_restriction_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    .line 658
    return-void
.end method

.method private updateConstants()V
    .locals 14

    .line 559
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "setting":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 563
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    goto :goto_0

    .line 634
    :catchall_0
    move-exception v2

    goto/16 :goto_1

    .line 564
    :catch_0
    move-exception v2

    .line 567
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v3, "ActivityManagerConstants"

    const-string v4, "Bad activity manager config settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "background_settle_time"

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 571
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fgservice_min_shown_time"

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    .line 573
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fgservice_min_report_time"

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    .line 575
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fgservice_screen_on_before_time"

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    .line 577
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fgservice_screen_on_after_time"

    const-wide/16 v8, 0x1388

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    .line 579
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "content_provider_retain_time"

    const-wide/16 v10, 0x4e20

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 581
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "gc_timeout"

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    .line 583
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "gc_min_interval"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 585
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "full_pss_min_interval"

    const-wide/32 v8, 0x124f80

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    .line 587
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "full_pss_lowered_interval"

    const-wide/32 v8, 0x493e0

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    .line 589
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_interval"

    sget-wide v10, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 591
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_max_cpu_1"

    const/16 v10, 0x19

    invoke-virtual {v2, v3, v10}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 593
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_max_cpu_2"

    invoke-virtual {v2, v3, v10}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 595
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_max_cpu_3"

    const/16 v10, 0xa

    invoke-virtual {v2, v3, v10}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 597
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_max_cpu_4"

    const/4 v10, 0x2

    invoke-virtual {v2, v3, v10}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 599
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_usage_interaction_time"

    const-wide/32 v10, 0x1b7740

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    .line 601
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "usage_stats_interaction_interval"

    const-wide/32 v12, 0x6ddd00

    invoke-virtual {v2, v3, v12, v13}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    .line 603
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_restart_duration"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 605
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_reset_run_duration"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 607
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_restart_duration_factor"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    .line 609
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_min_restart_time_between"

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 611
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_max_inactivity"

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 613
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_bg_start_timeout"

    const-wide/16 v6, 0x3a98

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    .line 615
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_bg_activity_start_timeout"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    .line 618
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_crash_restart_duration"

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    .line 621
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_crash_max_retry"

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 623
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "process_start_async"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    .line 625
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "memory_info_throttle_time"

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    .line 627
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "top_to_fgs_grace_duration"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 629
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "pendingintent_warning_threshold"

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    .line 634
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 635
    return-void

    .line 634
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private updateEnableAutomaticSystemServerHeapDumps()V
    .locals 9

    .line 699
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-nez v0, :cond_0

    .line 700
    const-string v0, "ActivityManagerConstants"

    const-string/jumbo v1, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enable_automatic_system_server_heap_dumps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 711
    .local v0, "enabled":Z
    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    move-wide v6, v1

    .line 712
    .local v6, "threshold":J
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 714
    return-void
.end method

.method private updateForceRestrictedBackgroundCheck()V
    .locals 3

    .line 669
    const-string v0, "activity_manager"

    const-string v1, "force_bg_check_on_restricted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    .line 673
    return-void
.end method

.method private updateForegroundServiceStartsLoggingEnabled()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "foreground_service_starts_logging_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagForegroundServiceStartsLoggingEnabled:Z

    .line 652
    return-void
.end method

.method private updateImperceptibleKillExemptions()V
    .locals 6

    .line 676
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 677
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 678
    const-string v0, "activity_manager"

    const-string v1, "imperceptible_kill_exempt_packages"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 684
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 685
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 686
    const-string v3, "imperceptible_kill_exempt_proc_states"

    invoke-static {v0, v3, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .end local v1    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$ActivityManagerConstants$PMWuxGp7r583rXDgas6HMH5Lce8;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$ActivityManagerConstants$PMWuxGp7r583rXDgas6HMH5Lce8;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 696
    :cond_1
    return-void
.end method

.method private updateMaxCachedProcesses()V
    .locals 4

    .line 717
    const-string v0, "activity_manager"

    const-string/jumbo v1, "max_cached_processes"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "maxCachedProcessesFlag":Ljava/lang/String;
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-gez v1, :cond_1

    .line 721
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 723
    :cond_1
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    goto :goto_1

    .line 724
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse flag for max_cached_processes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerConstants"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 730
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 735
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    .line 736
    .local v1, "rawMaxEmptyProcesses":I
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimEmptyApps(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 737
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 738
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimCachedApps(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 739
    return-void
.end method

.method private updateMinAssocLogDuration()V
    .locals 4

    .line 742
    const-string v0, "activity_manager"

    const-string/jumbo v1, "min_assoc_log_duration"

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    .line 745
    return-void
.end method

.method private updateOomAdjUpdatePolicy()V
    .locals 3

    .line 661
    const-string v0, "activity_manager"

    const-string/jumbo v1, "oomadj_update_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    .line 666
    return-void
.end method

.method private updatePerfConfigConstants()V
    .locals 3

    .line 460
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 462
    nop

    .line 463
    const-string/jumbo v1, "ro.vendor.qti.sys.fw.bg_apps_limit"

    const-string v2, "32"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 466
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.use_trim_settings"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    .line 467
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.empty_app_percent"

    const-string v2, "50"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_APP_PERCENT:I

    .line 468
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.trim_empty_percent"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_EMPTY_PERCENT:I

    .line 469
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.trim_cache_percent"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_CACHE_PERCENT:I

    .line 470
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.qti.sys.fw.trim_enable_memory"

    const-string v2, "1073741824"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_ENABLE_MEMORY:J

    .line 473
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 475
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    .line 476
    .local v0, "rawEmptyProcesses":I
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimEmptyApps(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 477
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimCachedApps(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 479
    .end local v0    # "rawEmptyProcesses":I
    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 748
    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "max_cached_processes"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 753
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "background_settle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 754
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 755
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_min_shown_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 757
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_min_report_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 759
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_screen_on_before_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 761
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_screen_on_after_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 763
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "content_provider_retain_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 765
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "gc_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 767
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "gc_min_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 769
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "force_bg_check_on_restricted"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 771
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "full_pss_min_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 773
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "full_pss_lowered_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 774
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 775
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 777
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_1"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 779
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_2"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 781
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_3"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 782
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 783
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_4"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 784
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 785
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_usage_interaction_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 787
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usage_stats_interaction_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 788
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 789
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_restart_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 791
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_reset_run_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 793
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_restart_duration_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 795
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_min_restart_time_between"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 797
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_max_inactivity"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 799
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bg_start_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 801
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bg_activity_start_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 803
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_crash_restart_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 805
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_crash_max_retry"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 807
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_start_async"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 809
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "memory_info_throttle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 811
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "top_to_fgs_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 813
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "imperceptible_kill_exempt_packages"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_assoc_log_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 820
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 821
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-ltz v0, :cond_0

    .line 822
    const-string v0, "  mOverrideMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 824
    :cond_0
    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 825
    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 826
    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 827
    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 828
    const-string v0, "  OOMADJ_UPDATE_QUICK="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 829
    return-void
.end method

.method public getOverrideMaxCachedProcesses()I
    .locals 1

    .line 517
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    return v0
.end method

.method public synthetic lambda$updateImperceptibleKillExemptions$0$ActivityManagerConstants(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 694
    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 546
    if-nez p2, :cond_0

    return-void

    .line 547
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    goto :goto_0

    .line 549
    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    goto :goto_0

    .line 551
    :cond_2
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    goto :goto_0

    .line 553
    :cond_3
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 556
    :cond_4
    :goto_0
    return-void
.end method

.method public setOverrideMaxCachedProcesses(I)V
    .locals 0
    .param p1, "value"    # I

    .line 512
    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 513
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    .line 514
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 482
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 483
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 484
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 487
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    .line 492
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updatePerfConfigConstants()V

    .line 494
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz v0, :cond_1

    .line 495
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 497
    :cond_1
    nop

    .line 498
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 497
    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 500
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->loadDeviceConfigConstants()V

    .line 502
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    .line 503
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    .line 504
    return-void
.end method
