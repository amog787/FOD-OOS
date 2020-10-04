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
.field private static final DEFAULT_CONN_CONGESTION_DELAY_FRAC:F = 0.5f

.field private static final DEFAULT_CONN_PREFETCH_RELAX_FRAC:F = 0.5f

.field private static final DEFAULT_HEAVY_USE_FACTOR:F = 0.9f

.field private static final DEFAULT_MAX_STANDARD_RESCHEDULE_COUNT:I = 0x7fffffff

.field private static final DEFAULT_MAX_WORK_RESCHEDULE_COUNT:I = 0x7fffffff

.field private static final DEFAULT_MIN_BATTERY_NOT_LOW_COUNT:I = 0x1

.field private static final DEFAULT_MIN_CHARGING_COUNT:I = 0x1

.field private static final DEFAULT_MIN_CONNECTIVITY_COUNT:I = 0x1

.field private static final DEFAULT_MIN_CONTENT_COUNT:I = 0x1

.field private static final DEFAULT_MIN_EXP_BACKOFF_TIME:J = 0x2710L

.field private static final DEFAULT_MIN_IDLE_COUNT:I = 0x1

.field private static final DEFAULT_MIN_LINEAR_BACKOFF_TIME:J = 0x2710L

.field private static final DEFAULT_MIN_READY_JOBS_COUNT:I = 0x1

.field private static final DEFAULT_MIN_STORAGE_NOT_LOW_COUNT:I = 0x1

.field private static final DEFAULT_MODERATE_USE_FACTOR:F = 0.5f

.field private static final DEFAULT_STANDBY_FREQUENT_BEATS:I = 0x2b

.field private static final DEFAULT_STANDBY_HEARTBEAT_TIME:J = 0xa1220L

.field private static final DEFAULT_STANDBY_RARE_BEATS:I = 0x82

.field private static final DEFAULT_STANDBY_WORKING_BEATS:I = 0xb

.field private static final DEFAULT_USE_HEARTBEATS:Z = false

.field private static final DEPRECATED_KEY_BG_CRITICAL_JOB_COUNT:Ljava/lang/String; = "bg_critical_job_count"

.field private static final DEPRECATED_KEY_BG_LOW_JOB_COUNT:Ljava/lang/String; = "bg_low_job_count"

.field private static final DEPRECATED_KEY_BG_MODERATE_JOB_COUNT:Ljava/lang/String; = "bg_moderate_job_count"

.field private static final DEPRECATED_KEY_BG_NORMAL_JOB_COUNT:Ljava/lang/String; = "bg_normal_job_count"

.field private static final DEPRECATED_KEY_FG_JOB_COUNT:Ljava/lang/String; = "fg_job_count"

.field private static final KEY_CONN_CONGESTION_DELAY_FRAC:Ljava/lang/String; = "conn_congestion_delay_frac"

.field private static final KEY_CONN_PREFETCH_RELAX_FRAC:Ljava/lang/String; = "conn_prefetch_relax_frac"

.field private static final KEY_HEAVY_USE_FACTOR:Ljava/lang/String; = "heavy_use_factor"

.field private static final KEY_MAX_STANDARD_RESCHEDULE_COUNT:Ljava/lang/String; = "max_standard_reschedule_count"

.field private static final KEY_MAX_WORK_RESCHEDULE_COUNT:Ljava/lang/String; = "max_work_reschedule_count"

.field private static final KEY_MIN_BATTERY_NOT_LOW_COUNT:Ljava/lang/String; = "min_battery_not_low_count"

.field private static final KEY_MIN_CHARGING_COUNT:Ljava/lang/String; = "min_charging_count"

.field private static final KEY_MIN_CONNECTIVITY_COUNT:Ljava/lang/String; = "min_connectivity_count"

.field private static final KEY_MIN_CONTENT_COUNT:Ljava/lang/String; = "min_content_count"

.field private static final KEY_MIN_EXP_BACKOFF_TIME:Ljava/lang/String; = "min_exp_backoff_time"

.field private static final KEY_MIN_IDLE_COUNT:Ljava/lang/String; = "min_idle_count"

.field private static final KEY_MIN_LINEAR_BACKOFF_TIME:Ljava/lang/String; = "min_linear_backoff_time"

.field private static final KEY_MIN_READY_JOBS_COUNT:Ljava/lang/String; = "min_ready_jobs_count"

.field private static final KEY_MIN_STORAGE_NOT_LOW_COUNT:Ljava/lang/String; = "min_storage_not_low_count"

.field private static final KEY_MODERATE_USE_FACTOR:Ljava/lang/String; = "moderate_use_factor"

.field private static final KEY_STANDBY_FREQUENT_BEATS:Ljava/lang/String; = "standby_frequent_beats"

.field private static final KEY_STANDBY_HEARTBEAT_TIME:Ljava/lang/String; = "standby_heartbeat_time"

.field private static final KEY_STANDBY_RARE_BEATS:Ljava/lang/String; = "standby_rare_beats"

.field private static final KEY_STANDBY_WORKING_BEATS:Ljava/lang/String; = "standby_working_beats"

.field private static final KEY_USE_HEARTBEATS:Ljava/lang/String; = "use_heartbeats"


# instance fields
.field public CONN_CONGESTION_DELAY_FRAC:F

.field public CONN_PREFETCH_RELAX_FRAC:F

.field HEAVY_USE_FACTOR:F

.field final MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

.field final MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

.field MAX_STANDARD_RESCHEDULE_COUNT:I

.field MAX_WORK_RESCHEDULE_COUNT:I

.field MIN_BATTERY_NOT_LOW_COUNT:I

.field MIN_CHARGING_COUNT:I

.field MIN_CONNECTIVITY_COUNT:I

.field MIN_CONTENT_COUNT:I

.field MIN_EXP_BACKOFF_TIME:J

.field MIN_IDLE_COUNT:I

.field MIN_LINEAR_BACKOFF_TIME:J

.field MIN_READY_JOBS_COUNT:I

.field MIN_STORAGE_NOT_LOW_COUNT:I

.field MODERATE_USE_FACTOR:F

.field final SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

.field final STANDBY_BEATS:[I

.field STANDBY_HEARTBEAT_TIME:J

.field public USE_HEARTBEATS:Z

.field private final mParser:Landroid/util/KeyValueListParser;


# direct methods
.method public constructor <init>()V
    .locals 25

    .line 451
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    .line 513
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    .line 518
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    .line 523
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    .line 528
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    .line 533
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    .line 540
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    .line 544
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 548
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 551
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

    .line 570
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

    .line 591
    new-instance v2, Landroid/util/KeyValueListParser$IntValue;

    const-string/jumbo v3, "screen_off_job_concurrency_increase_delay_ms"

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v4}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    .line 599
    const v2, 0x7fffffff

    iput v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    .line 604
    iput v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    .line 608
    const-wide/16 v2, 0x2710

    iput-wide v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 612
    iput-wide v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 618
    const-wide/32 v2, 0xa1220

    iput-wide v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    .line 627
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    .line 637
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 642
    iput v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 647
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    .line 649
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v1, v0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0x2b
        0x82
    .end array-data
.end method


# virtual methods
.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 759
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 760
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 761
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 762
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 763
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 764
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 765
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 766
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const-wide v1, 0x10100000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 767
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    const-wide v1, 0x10100000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 769
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    const-wide v1, 0x10b0000001aL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 770
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    const-wide v1, 0x10b0000001bL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 772
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    const-wide v1, 0x1050000001cL

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 775
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    const-wide v1, 0x1050000000fL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 776
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    const-wide v1, 0x10500000010L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 777
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    const-wide v2, 0x10300000011L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 778
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    const-wide v2, 0x10300000012L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 779
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    const-wide v2, 0x10300000013L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 780
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 781
    .local v3, "period":I
    const-wide v4, 0x20500000014L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 780
    .end local v3    # "period":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    :cond_0
    const-wide v0, 0x10100000015L

    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 784
    const-wide v0, 0x10100000016L

    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 785
    const-wide v0, 0x10800000017L

    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 786
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 715
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 717
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_idle_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 718
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_charging_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 719
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_battery_not_low_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 720
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_storage_not_low_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 721
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_connectivity_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 722
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_content_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 723
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_ready_jobs_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 724
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "heavy_use_factor"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 725
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "moderate_use_factor"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 727
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 739
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_standard_reschedule_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 740
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_work_reschedule_count"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 741
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_linear_backoff_time"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 742
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_exp_backoff_time"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 743
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "standby_heartbeat_time"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 744
    const-string/jumbo v0, "standby_beats={"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 746
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 747
    const-string v1, ", "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 750
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(C)V

    .line 751
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_congestion_delay_frac"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 752
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_prefetch_relax_frac"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 753
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "use_heartbeats"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 755
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 756
    return-void
.end method

.method updateConstantsLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "JobScheduler"

    const-string v2, "Bad jobscheduler settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v1, 0x1

    const-string/jumbo v2, "min_idle_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    .line 662
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_charging_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    .line 664
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_battery_not_low_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    .line 666
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_storage_not_low_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    .line 668
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_connectivity_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    .line 670
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_content_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    .line 672
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_ready_jobs_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    .line 674
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const v2, 0x3f666666    # 0.9f

    const-string v3, "heavy_use_factor"

    invoke-virtual {v0, v3, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 676
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const/high16 v2, 0x3f000000    # 0.5f

    const-string/jumbo v3, "moderate_use_factor"

    invoke-virtual {v0, v3, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 679
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 680
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 681
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 682
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 685
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->parse(Landroid/util/KeyValueListParser;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v3}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 691
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const v3, 0x7fffffff

    const-string/jumbo v4, "max_standard_reschedule_count"

    invoke-virtual {v0, v4, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    .line 693
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "max_work_reschedule_count"

    invoke-virtual {v0, v4, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    .line 695
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v3, 0x2710

    const-string/jumbo v5, "min_linear_backoff_time"

    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 697
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "min_exp_backoff_time"

    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 699
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v3, 0xa1220

    const-string/jumbo v5, "standby_heartbeat_time"

    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    .line 701
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v4, 0xb

    const-string/jumbo v5, "standby_working_beats"

    invoke-virtual {v3, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    .line 703
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v4, 0x2b

    const-string/jumbo v5, "standby_frequent_beats"

    invoke-virtual {v3, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    .line 705
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v4, 0x82

    const-string/jumbo v5, "standby_rare_beats"

    invoke-virtual {v3, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    .line 707
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "conn_congestion_delay_frac"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 709
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "conn_prefetch_relax_frac"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 711
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v1, 0x0

    const-string/jumbo v2, "use_heartbeats"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    .line 712
    return-void
.end method
