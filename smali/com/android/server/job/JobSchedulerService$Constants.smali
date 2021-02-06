.class public Lcom/android/server/job/JobSchedulerService$Constants;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_API_QUOTA_SCHEDULE_COUNT:I = 0xfa

.field private static final DEFAULT_API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z = false

.field private static final DEFAULT_API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z = true

.field private static final DEFAULT_API_QUOTA_SCHEDULE_WINDOW_MS:J = 0xea60L

.field private static final DEFAULT_CONN_CONGESTION_DELAY_FRAC:F = 0.5f

.field private static final DEFAULT_CONN_PREFETCH_RELAX_FRAC:F = 0.5f

.field private static final DEFAULT_ENABLE_API_QUOTAS:Z = true

.field private static final DEFAULT_HEAVY_USE_FACTOR:F = 0.9f

.field private static final DEFAULT_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J = 0x1c61a0L

.field private static final DEFAULT_MIN_EXP_BACKOFF_TIME:J = 0x2710L

.field private static final DEFAULT_MIN_LINEAR_BACKOFF_TIME:J = 0x2710L

.field private static final DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I = 0x5

.field private static final DEFAULT_MODERATE_USE_FACTOR:F = 0.5f

.field private static final DEPRECATED_KEY_BG_CRITICAL_JOB_COUNT:Ljava/lang/String; = "bg_critical_job_count"

.field private static final DEPRECATED_KEY_BG_LOW_JOB_COUNT:Ljava/lang/String; = "bg_low_job_count"

.field private static final DEPRECATED_KEY_BG_MODERATE_JOB_COUNT:Ljava/lang/String; = "bg_moderate_job_count"

.field private static final DEPRECATED_KEY_BG_NORMAL_JOB_COUNT:Ljava/lang/String; = "bg_normal_job_count"

.field private static final DEPRECATED_KEY_FG_JOB_COUNT:Ljava/lang/String; = "fg_job_count"

.field private static final DEPRECATED_KEY_MAX_STANDARD_RESCHEDULE_COUNT:Ljava/lang/String; = "max_standard_reschedule_count"

.field private static final DEPRECATED_KEY_MAX_WORK_RESCHEDULE_COUNT:Ljava/lang/String; = "max_work_reschedule_count"

.field private static final DEPRECATED_KEY_MIN_BATTERY_NOT_LOW_COUNT:Ljava/lang/String; = "min_battery_not_low_count"

.field private static final DEPRECATED_KEY_MIN_CHARGING_COUNT:Ljava/lang/String; = "min_charging_count"

.field private static final DEPRECATED_KEY_MIN_CONNECTIVITY_COUNT:Ljava/lang/String; = "min_connectivity_count"

.field private static final DEPRECATED_KEY_MIN_CONTENT_COUNT:Ljava/lang/String; = "min_content_count"

.field private static final DEPRECATED_KEY_MIN_IDLE_COUNT:Ljava/lang/String; = "min_idle_count"

.field private static final DEPRECATED_KEY_MIN_READY_JOBS_COUNT:Ljava/lang/String; = "min_ready_jobs_count"

.field private static final DEPRECATED_KEY_MIN_STORAGE_NOT_LOW_COUNT:Ljava/lang/String; = "min_storage_not_low_count"

.field private static final DEPRECATED_KEY_STANDBY_FREQUENT_BEATS:Ljava/lang/String; = "standby_frequent_beats"

.field private static final DEPRECATED_KEY_STANDBY_HEARTBEAT_TIME:Ljava/lang/String; = "standby_heartbeat_time"

.field private static final DEPRECATED_KEY_STANDBY_RARE_BEATS:Ljava/lang/String; = "standby_rare_beats"

.field private static final DEPRECATED_KEY_STANDBY_WORKING_BEATS:Ljava/lang/String; = "standby_working_beats"

.field private static final DEPRECATED_KEY_USE_HEARTBEATS:Ljava/lang/String; = "use_heartbeats"

.field private static final KEY_API_QUOTA_SCHEDULE_COUNT:Ljava/lang/String; = "aq_schedule_count"

.field private static final KEY_API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Ljava/lang/String; = "aq_schedule_return_failure"

.field private static final KEY_API_QUOTA_SCHEDULE_THROW_EXCEPTION:Ljava/lang/String; = "aq_schedule_throw_exception"

.field private static final KEY_API_QUOTA_SCHEDULE_WINDOW_MS:Ljava/lang/String; = "aq_schedule_window_ms"

.field private static final KEY_CONN_CONGESTION_DELAY_FRAC:Ljava/lang/String; = "conn_congestion_delay_frac"

.field private static final KEY_CONN_PREFETCH_RELAX_FRAC:Ljava/lang/String; = "conn_prefetch_relax_frac"

.field private static final KEY_ENABLE_API_QUOTAS:Ljava/lang/String; = "enable_api_quotas"

.field private static final KEY_HEAVY_USE_FACTOR:Ljava/lang/String; = "heavy_use_factor"

.field private static final KEY_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:Ljava/lang/String; = "max_non_active_job_batch_delay_ms"

.field private static final KEY_MIN_EXP_BACKOFF_TIME:Ljava/lang/String; = "min_exp_backoff_time"

.field private static final KEY_MIN_LINEAR_BACKOFF_TIME:Ljava/lang/String; = "min_linear_backoff_time"

.field private static final KEY_MIN_READY_NON_ACTIVE_JOBS_COUNT:Ljava/lang/String; = "min_ready_non_active_jobs_count"

.field private static final KEY_MODERATE_USE_FACTOR:Ljava/lang/String; = "moderate_use_factor"


# instance fields
.field public API_QUOTA_SCHEDULE_COUNT:I

.field public API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

.field public API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

.field public API_QUOTA_SCHEDULE_WINDOW_MS:J

.field public CONN_CONGESTION_DELAY_FRAC:F

.field public CONN_PREFETCH_RELAX_FRAC:F

.field public ENABLE_API_QUOTAS:Z

.field HEAVY_USE_FACTOR:F

.field final MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

.field final MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

.field MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

.field MIN_EXP_BACKOFF_TIME:J

.field MIN_LINEAR_BACKOFF_TIME:J

.field MIN_READY_NON_ACTIVE_JOBS_COUNT:I

.field MODERATE_USE_FACTOR:F

.field final SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

.field private final mParser:Landroid/util/KeyValueListParser;


# direct methods
.method public constructor <init>()V
    .locals 25

    .line 490
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 563
    const-wide/32 v1, 0x1c61a0

    iput-wide v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    .line 568
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 572
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 575
    new-instance v2, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    new-instance v10, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const/16 v4, 0x8

    const-string/jumbo v5, "max_job_total_on_normal"

    const/4 v6, 0x6

    const-string/jumbo v7, "max_job_max_bg_on_normal"

    const/4 v8, 0x2

    const-string/jumbo v9, "max_job_min_bg_on_normal"

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const/16 v12, 0x8

    const-string/jumbo v13, "max_job_total_on_moderate"

    const/4 v14, 0x4

    const-string/jumbo v15, "max_job_max_bg_on_moderate"

    const/16 v16, 0x2

    const-string/jumbo v17, "max_job_min_bg_on_moderate"

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const/16 v19, 0x5

    const-string/jumbo v20, "max_job_total_on_low"

    const/16 v21, 0x1

    const-string/jumbo v22, "max_job_max_bg_on_low"

    const/16 v23, 0x1

    const-string/jumbo v24, "max_job_min_bg_on_low"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const/4 v12, 0x5

    const-string/jumbo v13, "max_job_total_on_critical"

    const/4 v14, 0x1

    const-string/jumbo v15, "max_job_max_bg_on_critical"

    const/16 v16, 0x1

    const-string/jumbo v17, "max_job_min_bg_on_critical"

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {v2, v10, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;)V

    iput-object v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    .line 594
    new-instance v2, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    new-instance v10, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const/16 v4, 0xa

    const-string/jumbo v5, "max_job_total_off_normal"

    const-string/jumbo v7, "max_job_max_bg_off_normal"

    const-string/jumbo v9, "max_job_min_bg_off_normal"

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const/16 v12, 0xa

    const-string/jumbo v13, "max_job_total_off_moderate"

    const/4 v14, 0x4

    const-string/jumbo v15, "max_job_max_bg_off_moderate"

    const/16 v16, 0x2

    const-string/jumbo v17, "max_job_min_bg_off_moderate"

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-string/jumbo v20, "max_job_total_off_low"

    const-string/jumbo v22, "max_job_max_bg_off_low"

    const-string/jumbo v24, "max_job_min_bg_off_low"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const/4 v12, 0x5

    const-string/jumbo v13, "max_job_total_off_critical"

    const/4 v14, 0x1

    const-string/jumbo v15, "max_job_max_bg_off_critical"

    const/16 v16, 0x1

    const-string/jumbo v17, "max_job_min_bg_off_critical"

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {v2, v10, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;)V

    iput-object v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    .line 615
    new-instance v2, Landroid/util/KeyValueListParser$IntValue;

    const-string/jumbo v3, "screen_off_job_concurrency_increase_delay_ms"

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v4}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    .line 622
    const-wide/16 v2, 0x2710

    iput-wide v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 626
    iput-wide v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 632
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 637
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 642
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    .line 646
    const/16 v2, 0xfa

    iput v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    .line 650
    const-wide/32 v2, 0xea60

    iput-wide v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    .line 654
    iput-boolean v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 659
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 662
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method


# virtual methods
.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 760
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    const-wide v1, 0x1050000001dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 762
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    const-wide v2, 0x1030000001eL

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 764
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const-wide v1, 0x10100000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 765
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    const-wide v1, 0x10100000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 767
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    const-wide v1, 0x10b0000001aL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 768
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    const-wide v1, 0x10b0000001bL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 770
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    const-wide v1, 0x1050000001cL

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 773
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    const-wide v2, 0x10300000011L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 774
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    const-wide v2, 0x10300000012L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 775
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    const-wide v1, 0x10100000015L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 776
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    const-wide v1, 0x10100000016L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 778
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    const-wide v1, 0x1080000001fL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 779
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    const-wide v1, 0x10500000020L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 780
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    const-wide v2, 0x10300000021L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 781
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    const-wide v1, 0x10800000022L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 783
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    const-wide v1, 0x10800000023L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 785
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 722
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 724
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 725
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 724
    const-string/jumbo v1, "min_ready_non_active_jobs_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 726
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    .line 727
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 726
    const-string/jumbo v1, "max_non_active_job_batch_delay_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 727
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 728
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "heavy_use_factor"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 729
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "moderate_use_factor"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 731
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 743
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_linear_backoff_time"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 744
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_exp_backoff_time"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 745
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_congestion_delay_frac"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 746
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_prefetch_relax_frac"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 748
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_api_quotas"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 749
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "aq_schedule_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 750
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "aq_schedule_window_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 751
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 752
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 751
    const-string v1, "aq_schedule_throw_exception"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 753
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 754
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 753
    const-string v1, "aq_schedule_return_failure"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 756
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 757
    return-void
.end method

.method updateConstantsLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "JobScheduler"

    const-string v2, "Bad jobscheduler settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v1, 0x5

    const-string/jumbo v2, "min_ready_non_active_jobs_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 676
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v1, 0x1c61a0

    const-string/jumbo v3, "max_non_active_job_batch_delay_ms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    .line 679
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const v1, 0x3f666666    # 0.9f

    const-string v2, "heavy_use_factor"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 681
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "moderate_use_factor"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 684
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 685
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 691
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 692
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 694
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 696
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_linear_backoff_time"

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v1, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 698
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_exp_backoff_time"

    invoke-virtual {v0, v1, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 700
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "conn_congestion_delay_frac"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 702
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "conn_prefetch_relax_frac"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 705
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "enable_api_quotas"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    .line 709
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 710
    const-string v1, "aq_schedule_count"

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 709
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    .line 711
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v3, 0xea60

    const-string v1, "aq_schedule_window_ms"

    invoke-virtual {v0, v1, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    .line 713
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "aq_schedule_throw_exception"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 716
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v1, 0x0

    const-string v2, "aq_schedule_return_failure"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 719
    return-void
.end method
