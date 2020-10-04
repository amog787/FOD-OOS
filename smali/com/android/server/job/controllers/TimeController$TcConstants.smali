.class Lcom/android/server/job/controllers/TimeController$TcConstants;
.super Landroid/database/ContentObserver;
.source "TimeController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcConstants"
.end annotation


# static fields
.field private static final DEFAULT_SKIP_NOT_READY_JOBS:Z = true

.field private static final KEY_SKIP_NOT_READY_JOBS:Ljava/lang/String; = "skip_not_ready_jobs"


# instance fields
.field public SKIP_NOT_READY_JOBS:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/TimeController;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/TimeController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 481
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 482
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 464
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 483
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/TimeController$TcConstants;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 462
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/TimeController$TcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/TimeController$TcConstants;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 462
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/TimeController$TcConstants;
    .param p1, "x1"    # Landroid/util/proto/ProtoOutputStream;

    .line 462
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 524
    const-wide v0, 0x10b00000019L    # 5.665728762E-312

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 525
    .local v0, "tcToken":J
    iget-boolean v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 526
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 527
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 516
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 517
    const-string v0, "TimeController:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 519
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "skip_not_ready_jobs"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 520
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 521
    return-void
.end method

.method private start(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 486
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    .line 487
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_time_controller_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 489
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->onChange(ZLandroid/net/Uri;)V

    .line 490
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 494
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_time_controller_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "constants":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    goto :goto_0

    .line 499
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "JobScheduler.Time"

    const-string v3, "Bad jobscheduler time controller settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 505
    .local v1, "oldVal":Z
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v3, 0x1

    const-string/jumbo v4, "skip_not_ready_jobs"

    invoke-virtual {v2, v4, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 508
    iget-boolean v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eq v1, v2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    iget-object v2, v2, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 510
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/TimeController;->recheckAlarmsLocked()V

    .line 511
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 513
    :cond_0
    :goto_1
    return-void
.end method
