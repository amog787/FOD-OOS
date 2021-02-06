.class Lcom/android/server/job/controllers/QuotaController$QcConstants;
.super Landroid/database/ContentObserver;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcConstants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_MS:J = 0x927c0L

.field private static final DEFAULT_IN_QUOTA_BUFFER_MS:J = 0x7530L

.field private static final DEFAULT_MAX_EXECUTION_TIME_MS:J = 0xdbba00L

.field private static final DEFAULT_MAX_JOB_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_JOB_COUNT_FREQUENT:I = 0x32

.field private static final DEFAULT_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_JOB_COUNT_RARE:I = 0x30

.field private static final DEFAULT_MAX_JOB_COUNT_RESTRICTED:I = 0xa

.field private static final DEFAULT_MAX_JOB_COUNT_WORKING:I = 0x78

.field private static final DEFAULT_MAX_SESSION_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_SESSION_COUNT_FREQUENT:I = 0x1

.field private static final DEFAULT_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_SESSION_COUNT_RARE:I = 0x3

.field private static final DEFAULT_MAX_SESSION_COUNT_RESTRICTED:I = 0x1

.field private static final DEFAULT_MAX_SESSION_COUNT_WORKING:I = 0xa

.field private static final DEFAULT_MIN_QUOTA_CHECK_DELAY_MS:J = 0xea60L

.field private static final DEFAULT_RATE_LIMITING_WINDOW_MS:J = 0xea60L

.field private static final DEFAULT_TIMING_SESSION_COALESCING_DURATION_MS:J = 0x1388L

.field private static final DEFAULT_WINDOW_SIZE_ACTIVE_MS:J = 0x927c0L

.field private static final DEFAULT_WINDOW_SIZE_FREQUENT_MS:J = 0x6ddd00L

.field private static final DEFAULT_WINDOW_SIZE_RARE_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_RESTRICTED_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_WORKING_MS:J = 0x6ddd00L

.field private static final KEY_ALLOWED_TIME_PER_PERIOD_MS:Ljava/lang/String; = "allowed_time_per_period_ms"

.field private static final KEY_IN_QUOTA_BUFFER_MS:Ljava/lang/String; = "in_quota_buffer_ms"

.field private static final KEY_MAX_EXECUTION_TIME_MS:Ljava/lang/String; = "max_execution_time_ms"

.field private static final KEY_MAX_JOB_COUNT_ACTIVE:Ljava/lang/String; = "max_job_count_active"

.field private static final KEY_MAX_JOB_COUNT_FREQUENT:Ljava/lang/String; = "max_job_count_frequent"

.field private static final KEY_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "max_job_count_per_rate_limiting_window"

.field private static final KEY_MAX_JOB_COUNT_RARE:Ljava/lang/String; = "max_job_count_rare"

.field private static final KEY_MAX_JOB_COUNT_RESTRICTED:Ljava/lang/String; = "max_job_count_restricted"

.field private static final KEY_MAX_JOB_COUNT_WORKING:Ljava/lang/String; = "max_job_count_working"

.field private static final KEY_MAX_SESSION_COUNT_ACTIVE:Ljava/lang/String; = "max_session_count_active"

.field private static final KEY_MAX_SESSION_COUNT_FREQUENT:Ljava/lang/String; = "max_session_count_frequent"

.field private static final KEY_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "max_session_count_per_rate_limiting_window"

.field private static final KEY_MAX_SESSION_COUNT_RARE:Ljava/lang/String; = "max_session_count_rare"

.field private static final KEY_MAX_SESSION_COUNT_RESTRICTED:Ljava/lang/String; = "max_session_count_restricted"

.field private static final KEY_MAX_SESSION_COUNT_WORKING:Ljava/lang/String; = "max_session_count_working"

.field private static final KEY_MIN_QUOTA_CHECK_DELAY_MS:Ljava/lang/String; = "min_quota_check_delay_ms"

.field private static final KEY_RATE_LIMITING_WINDOW_MS:Ljava/lang/String; = "rate_limiting_window_ms"

.field private static final KEY_TIMING_SESSION_COALESCING_DURATION_MS:Ljava/lang/String; = "timing_session_coalescing_duration_ms"

.field private static final KEY_WINDOW_SIZE_ACTIVE_MS:Ljava/lang/String; = "window_size_active_ms"

.field private static final KEY_WINDOW_SIZE_FREQUENT_MS:Ljava/lang/String; = "window_size_frequent_ms"

.field private static final KEY_WINDOW_SIZE_RARE_MS:Ljava/lang/String; = "window_size_rare_ms"

.field private static final KEY_WINDOW_SIZE_RESTRICTED_MS:Ljava/lang/String; = "window_size_restricted_ms"

.field private static final KEY_WINDOW_SIZE_WORKING_MS:Ljava/lang/String; = "window_size_working_ms"

.field private static final MIN_BUCKET_JOB_COUNT:I = 0xa

.field private static final MIN_BUCKET_SESSION_COUNT:I = 0x1

.field private static final MIN_MAX_EXECUTION_TIME_MS:J = 0x36ee80L

.field private static final MIN_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_RATE_LIMITING_WINDOW_MS:J = 0x7530L


# instance fields
.field public ALLOWED_TIME_PER_PERIOD_MS:J

.field public IN_QUOTA_BUFFER_MS:J

.field public MAX_EXECUTION_TIME_MS:J

.field public MAX_JOB_COUNT_ACTIVE:I

.field public MAX_JOB_COUNT_FREQUENT:I

.field public MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_JOB_COUNT_RARE:I

.field public MAX_JOB_COUNT_RESTRICTED:I

.field public MAX_JOB_COUNT_WORKING:I

.field public MAX_SESSION_COUNT_ACTIVE:I

.field public MAX_SESSION_COUNT_FREQUENT:I

.field public MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_SESSION_COUNT_RARE:I

.field public MAX_SESSION_COUNT_RESTRICTED:I

.field public MAX_SESSION_COUNT_WORKING:I

.field public MIN_QUOTA_CHECK_DELAY_MS:J

.field public RATE_LIMITING_WINDOW_MS:J

.field public TIMING_SESSION_COALESCING_DURATION_MS:J

.field public WINDOW_SIZE_ACTIVE_MS:J

.field public WINDOW_SIZE_FREQUENT_MS:J

.field public WINDOW_SIZE_RARE_MS:J

.field public WINDOW_SIZE_RESTRICTED_MS:J

.field public WINDOW_SIZE_WORKING_MS:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Handler;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2268
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2269
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2031
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 2111
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2117
    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2124
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2131
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2138
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2145
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2152
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 2157
    const-wide/32 v0, 0xdbba00

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2163
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 2169
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 2175
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 2181
    const/16 v1, 0x30

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 2187
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 2190
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2195
    const/16 v4, 0x14

    iput v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2202
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2208
    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2214
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2220
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2226
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 2232
    iput v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2239
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2243
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 2270
    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/job/controllers/QuotaController$QcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2029
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"    # Landroid/util/proto/ProtoOutputStream;

    .line 2029
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 2029
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2537
    const-wide v0, 0x10b00000018L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2538
    .local v0, "qcToken":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2540
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2541
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2543
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2545
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2547
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-wide v4, 0x10300000006L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2548
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2550
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2552
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2553
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2555
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2557
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2558
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000015L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2560
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-wide v4, 0x10500000013L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2562
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x1050000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2564
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const-wide v3, 0x1050000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2566
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const-wide v3, 0x1050000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2568
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2570
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const-wide v3, 0x10500000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2572
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2574
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2576
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-wide v4, 0x10300000012L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2578
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-wide v4, 0x10300000017L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2580
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2581
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2504
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2505
    const-string v0, "QuotaController:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2506
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2507
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "allowed_time_per_period_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2508
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "in_quota_buffer_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2509
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_active_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2510
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_working_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2511
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_frequent_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2512
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_rare_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2513
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_restricted_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2514
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "max_execution_time_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2515
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_active"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2516
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_working"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2517
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_frequent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2518
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_rare"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2519
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_restricted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2520
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "rate_limiting_window_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2521
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2522
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2521
    const-string/jumbo v1, "max_job_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2522
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2523
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_active"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2524
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_working"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2525
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_frequent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2526
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_rare"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2527
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_restricted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2528
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2529
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2528
    const-string/jumbo v1, "max_session_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2529
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2530
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2531
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2530
    const-string/jumbo v1, "timing_session_coalescing_duration_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2531
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2532
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_quota_check_delay_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2533
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2534
    return-void
.end method

.method private start(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 2273
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    .line 2274
    const-string/jumbo v0, "job_scheduler_quota_controller_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2276
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->onChange(ZLandroid/net/Uri;)V

    .line 2277
    return-void
.end method


# virtual methods
.method public synthetic lambda$updateConstants$0$QuotaController$QcConstants()V
    .locals 2

    .line 2494
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2495
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    .line 2496
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3700(Lcom/android/server/job/controllers/QuotaController;)V

    .line 2497
    monitor-exit v0

    .line 2498
    return-void

    .line 2497
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 2281
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_quota_controller_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2285
    .local v0, "constants":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2289
    goto :goto_0

    .line 2286
    :catch_0
    move-exception v1

    .line 2288
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "JobScheduler.Quota"

    const-string v3, "Bad jobscheduler quota controller settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2291
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "allowed_time_per_period_ms"

    const-wide/32 v3, 0x927c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2293
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v5, 0x7530

    const-string v2, "in_quota_buffer_ms"

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2295
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "window_size_active_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2297
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "window_size_working_ms"

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2299
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "window_size_frequent_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2301
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "window_size_rare_ms"

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2303
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "window_size_restricted_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 2305
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v2, 0xdbba00

    const-string/jumbo v4, "max_execution_time_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2307
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_job_count_active"

    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 2309
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x78

    const-string/jumbo v4, "max_job_count_working"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 2311
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x32

    const-string/jumbo v4, "max_job_count_frequent"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 2313
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x30

    const-string/jumbo v4, "max_job_count_rare"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 2315
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_job_count_restricted"

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 2317
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "rate_limiting_window_ms"

    const-wide/32 v5, 0xea60

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2319
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_job_count_per_rate_limiting_window"

    const/16 v7, 0x14

    invoke-virtual {v1, v2, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2322
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_active"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2324
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_working"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2326
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_frequent"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2328
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v2, 0x3

    const-string/jumbo v4, "max_session_count_rare"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2330
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_restricted"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 2332
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_per_rate_limiting_window"

    invoke-virtual {v1, v2, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2335
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v2, 0x1388

    const-string/jumbo v4, "timing_session_coalescing_duration_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2338
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_quota_check_delay_ms"

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 2341
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateConstants()V

    .line 2342
    return-void
.end method

.method updateConstants()V
    .locals 43

    .line 2346
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2347
    const/4 v0, 0x0

    .line 2349
    .local v0, "changed":Z
    const-wide/32 v3, 0x36ee80

    :try_start_0
    iget-wide v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2350
    const-wide/32 v7, 0x5265c00

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2349
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2351
    .local v3, "newMaxExecutionTimeMs":J
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    .line 2352
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$2502(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2353
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v5, v9, v10}, Lcom/android/server/job/controllers/QuotaController;->access$2602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2354
    const/4 v0, 0x1

    .line 2356
    :cond_0
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    const-wide/32 v9, 0xea60

    iget-wide v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2357
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2356
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2358
    .local v5, "newAllowedTimeMs":J
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-eqz v9, :cond_1

    .line 2359
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->access$2802(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2360
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v10, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v9, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->access$2902(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2361
    const/4 v0, 0x1

    .line 2365
    :cond_1
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    const-wide/32 v11, 0x493e0

    iget-wide v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2366
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 2365
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2367
    .local v9, "newQuotaBufferMs":J
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-eqz v13, :cond_2

    .line 2368
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13, v9, v10}, Lcom/android/server/job/controllers/QuotaController;->access$2702(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2369
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    sub-long/2addr v14, v11

    invoke-static {v13, v14, v15}, Lcom/android/server/job/controllers/QuotaController;->access$2902(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2370
    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v11, v12, v13}, Lcom/android/server/job/controllers/QuotaController;->access$2602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2371
    const/4 v0, 0x1

    .line 2373
    :cond_2
    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2374
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 2373
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 2375
    .local v11, "newActivePeriodMs":J
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v13

    const/4 v14, 0x0

    aget-wide v16, v13, v14

    cmp-long v13, v16, v11

    if-eqz v13, :cond_3

    .line 2376
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v13

    aput-wide v11, v13, v14

    .line 2377
    const/4 v0, 0x1

    .line 2379
    :cond_3
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2380
    move-wide/from16 v19, v3

    const-wide/32 v3, 0x5265c00

    .end local v3    # "newMaxExecutionTimeMs":J
    .local v19, "newMaxExecutionTimeMs":J
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 2379
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2381
    .local v3, "newWorkingPeriodMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x1

    aget-wide v13, v7, v8

    cmp-long v7, v13, v3

    if-eqz v7, :cond_4

    .line 2382
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v3, v7, v8

    .line 2383
    const/4 v0, 0x1

    .line 2385
    :cond_4
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    move-wide/from16 v21, v9

    .end local v9    # "newQuotaBufferMs":J
    .local v21, "newQuotaBufferMs":J
    iget-wide v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2386
    move-wide/from16 v23, v3

    const-wide/32 v3, 0x5265c00

    .end local v3    # "newWorkingPeriodMs":J
    .local v23, "newWorkingPeriodMs":J
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 2385
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2387
    .local v3, "newFrequentPeriodMs":J
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v9, 0x2

    aget-wide v13, v8, v9

    cmp-long v8, v13, v3

    if-eqz v8, :cond_5

    .line 2388
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v3, v8, v9

    .line 2389
    const/4 v0, 0x1

    .line 2391
    :cond_5
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2392
    move-wide/from16 v25, v11

    const-wide/32 v10, 0x5265c00

    .end local v11    # "newActivePeriodMs":J
    .local v25, "newActivePeriodMs":J
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 2391
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-wide v10, v7

    .line 2393
    .local v10, "newRarePeriodMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x3

    aget-wide v13, v7, v8

    cmp-long v7, v13, v10

    if-eqz v7, :cond_6

    .line 2394
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v10, v7, v8

    .line 2395
    const/4 v0, 0x1

    .line 2398
    :cond_6
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    const-wide/32 v8, 0x240c8400

    move-wide/from16 v28, v13

    iget-wide v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 2399
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 2398
    move-wide/from16 v12, v28

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2400
    .local v8, "newRestrictedPeriodMs":J
    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v12

    const/4 v13, 0x5

    aget-wide v28, v12, v13

    cmp-long v12, v28, v8

    if-eqz v12, :cond_7

    .line 2401
    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v12

    aput-wide v8, v12, v13

    .line 2402
    const/4 v0, 0x1

    .line 2404
    :cond_7
    move-wide/from16 v28, v8

    .end local v8    # "newRestrictedPeriodMs":J
    .local v28, "newRestrictedPeriodMs":J
    const-wide/16 v7, 0x7530

    iget-wide v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2405
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 2404
    const-wide/32 v12, 0x5265c00

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide v12, v7

    .line 2406
    .local v12, "newRateLimitingWindowMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3100(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_8

    .line 2407
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7, v12, v13}, Lcom/android/server/job/controllers/QuotaController;->access$3102(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2408
    const/4 v0, 0x1

    .line 2410
    :cond_8
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const/16 v8, 0xa

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2413
    .local v7, "newMaxJobCountPerRateLimitingWindow":I
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$3200(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v9

    if-eq v9, v7, :cond_9

    .line 2414
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v7}, Lcom/android/server/job/controllers/QuotaController;->access$3202(Lcom/android/server/job/controllers/QuotaController;I)I

    .line 2415
    const/4 v0, 0x1

    .line 2417
    :cond_9
    iget v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2418
    .local v9, "newActiveMaxJobCount":I
    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v14

    const/16 v16, 0x0

    aget v14, v14, v16

    if-eq v14, v9, :cond_a

    .line 2419
    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v14

    aput v9, v14, v16

    .line 2420
    const/4 v0, 0x1

    .line 2422
    :cond_a
    iget v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2423
    .local v14, "newWorkingMaxJobCount":I
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    const/16 v18, 0x1

    aget v15, v15, v18

    if-eq v15, v14, :cond_b

    .line 2424
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    aput v14, v15, v18

    move/from16 v18, v7

    .line 2425
    .end local v7    # "newMaxJobCountPerRateLimitingWindow":I
    .local v18, "newMaxJobCountPerRateLimitingWindow":I
    const/4 v0, 0x1

    goto :goto_0

    .line 2423
    .end local v18    # "newMaxJobCountPerRateLimitingWindow":I
    .restart local v7    # "newMaxJobCountPerRateLimitingWindow":I
    :cond_b
    move/from16 v18, v7

    .line 2427
    .end local v7    # "newMaxJobCountPerRateLimitingWindow":I
    .restart local v18    # "newMaxJobCountPerRateLimitingWindow":I
    :goto_0
    iget v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2428
    .local v15, "newFrequentMaxJobCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v30, 0x2

    aget v7, v7, v30

    if-eq v7, v15, :cond_c

    .line 2429
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v15, v7, v30

    move/from16 v30, v15

    .line 2430
    .end local v15    # "newFrequentMaxJobCount":I
    .local v30, "newFrequentMaxJobCount":I
    const/4 v0, 0x1

    goto :goto_1

    .line 2428
    .end local v30    # "newFrequentMaxJobCount":I
    .restart local v15    # "newFrequentMaxJobCount":I
    :cond_c
    move/from16 v30, v15

    .line 2432
    .end local v15    # "newFrequentMaxJobCount":I
    .restart local v30    # "newFrequentMaxJobCount":I
    :goto_1
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2433
    .local v7, "newRareMaxJobCount":I
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    const/16 v27, 0x3

    aget v15, v15, v27

    if-eq v15, v7, :cond_d

    .line 2434
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    aput v7, v15, v27

    .line 2435
    const/4 v0, 0x1

    .line 2437
    :cond_d
    iget v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2439
    .local v15, "newRestrictedMaxJobCount":I
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v8

    const/16 v17, 0x5

    aget v8, v8, v17

    if-eq v8, v15, :cond_e

    .line 2440
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v8

    aput v15, v8, v17

    move v8, v9

    .line 2441
    .end local v9    # "newActiveMaxJobCount":I
    .local v8, "newActiveMaxJobCount":I
    const/4 v0, 0x1

    goto :goto_2

    .line 2439
    .end local v8    # "newActiveMaxJobCount":I
    .restart local v9    # "newActiveMaxJobCount":I
    :cond_e
    move v8, v9

    .line 2443
    .end local v9    # "newActiveMaxJobCount":I
    .restart local v8    # "newActiveMaxJobCount":I
    :goto_2
    iget v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    move/from16 v34, v0

    const/16 v0, 0xa

    .end local v0    # "changed":Z
    .local v34, "changed":Z
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2446
    .local v0, "newMaxSessionCountPerRateLimitPeriod":I
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$3400(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v9

    if-eq v9, v0, :cond_f

    .line 2447
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v0}, Lcom/android/server/job/controllers/QuotaController;->access$3402(Lcom/android/server/job/controllers/QuotaController;I)I

    .line 2448
    const/4 v9, 0x1

    move/from16 v34, v9

    .line 2450
    :cond_f
    iget v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2451
    move/from16 v33, v0

    const/4 v0, 0x1

    .end local v0    # "newMaxSessionCountPerRateLimitPeriod":I
    .local v33, "newMaxSessionCountPerRateLimitPeriod":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v0, v7

    .line 2452
    .end local v7    # "newRareMaxJobCount":I
    .local v0, "newRareMaxJobCount":I
    .local v9, "newActiveMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v16, 0x0

    aget v7, v7, v16

    if-eq v7, v9, :cond_10

    .line 2453
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v9, v7, v16

    .line 2454
    const/16 v34, 0x1

    .line 2456
    :cond_10
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2457
    move/from16 v35, v0

    const/4 v0, 0x1

    .end local v0    # "newRareMaxJobCount":I
    .local v35, "newRareMaxJobCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2458
    .local v7, "newWorkingMaxSessionCount":I
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v0

    const/16 v31, 0x1

    aget v0, v0, v31

    if-eq v0, v7, :cond_11

    .line 2459
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v0

    aput v7, v0, v31

    move v0, v7

    .line 2460
    .end local v7    # "newWorkingMaxSessionCount":I
    .local v0, "newWorkingMaxSessionCount":I
    const/16 v34, 0x1

    goto :goto_3

    .line 2458
    .end local v0    # "newWorkingMaxSessionCount":I
    .restart local v7    # "newWorkingMaxSessionCount":I
    :cond_11
    move v0, v7

    .line 2462
    .end local v7    # "newWorkingMaxSessionCount":I
    .restart local v0    # "newWorkingMaxSessionCount":I
    :goto_3
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2463
    move/from16 v36, v0

    const/4 v0, 0x1

    .end local v0    # "newWorkingMaxSessionCount":I
    .local v36, "newWorkingMaxSessionCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v0, v31

    .line 2464
    .local v0, "newFrequentMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v32, 0x2

    aget v7, v7, v32

    if-eq v7, v0, :cond_12

    .line 2465
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v0, v7, v32

    .line 2466
    const/16 v34, 0x1

    .line 2468
    :cond_12
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2469
    move/from16 v32, v0

    const/4 v0, 0x1

    .end local v0    # "newFrequentMaxSessionCount":I
    .local v32, "newFrequentMaxSessionCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2470
    .local v0, "newRareMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v27, 0x3

    aget v7, v7, v27

    if-eq v7, v0, :cond_13

    .line 2471
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v0, v7, v27

    .line 2472
    const/16 v34, 0x1

    .line 2474
    :cond_13
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    move/from16 v27, v0

    const/4 v0, 0x0

    .end local v0    # "newRareMaxSessionCount":I
    .local v27, "newRareMaxSessionCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2475
    .local v0, "newRestrictedMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v16, 0x5

    aget v7, v7, v16

    if-eq v7, v0, :cond_14

    .line 2476
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v0, v7, v16

    .line 2477
    const/16 v34, 0x1

    .line 2479
    :cond_14
    move-wide/from16 v16, v3

    .end local v3    # "newFrequentPeriodMs":J
    .local v16, "newFrequentPeriodMs":J
    iget-wide v3, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2480
    move-wide/from16 v37, v5

    const-wide/16 v5, 0x0

    .end local v5    # "newAllowedTimeMs":J
    .local v37, "newAllowedTimeMs":J
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2479
    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2481
    .local v3, "newSessionCoalescingDurationMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3600(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v39

    cmp-long v7, v39, v3

    if-eqz v7, :cond_15

    .line 2482
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$3602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2483
    const/16 v34, 0x1

    .line 2488
    :cond_15
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$1100(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    move-result-object v7

    iget-wide v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 2489
    move-wide/from16 v41, v3

    const-wide/16 v3, 0x0

    .end local v3    # "newSessionCoalescingDurationMs":J
    .local v41, "newSessionCoalescingDurationMs":J
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2488
    invoke-virtual {v7, v3, v4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->setMinQuotaCheckDelayMs(J)V

    .line 2491
    if-eqz v34, :cond_16

    .line 2493
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;

    invoke-direct {v4, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;-><init>(Lcom/android/server/job/controllers/QuotaController$QcConstants;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2500
    .end local v0    # "newRestrictedMaxSessionCount":I
    .end local v8    # "newActiveMaxJobCount":I
    .end local v9    # "newActiveMaxSessionCount":I
    .end local v10    # "newRarePeriodMs":J
    .end local v12    # "newRateLimitingWindowMs":J
    .end local v14    # "newWorkingMaxJobCount":I
    .end local v15    # "newRestrictedMaxJobCount":I
    .end local v16    # "newFrequentPeriodMs":J
    .end local v18    # "newMaxJobCountPerRateLimitingWindow":I
    .end local v19    # "newMaxExecutionTimeMs":J
    .end local v21    # "newQuotaBufferMs":J
    .end local v23    # "newWorkingPeriodMs":J
    .end local v25    # "newActivePeriodMs":J
    .end local v27    # "newRareMaxSessionCount":I
    .end local v28    # "newRestrictedPeriodMs":J
    .end local v30    # "newFrequentMaxJobCount":I
    .end local v32    # "newFrequentMaxSessionCount":I
    .end local v33    # "newMaxSessionCountPerRateLimitPeriod":I
    .end local v34    # "changed":Z
    .end local v35    # "newRareMaxJobCount":I
    .end local v36    # "newWorkingMaxSessionCount":I
    .end local v37    # "newAllowedTimeMs":J
    .end local v41    # "newSessionCoalescingDurationMs":J
    :cond_16
    monitor-exit v2

    .line 2501
    return-void

    .line 2500
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
