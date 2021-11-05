.class final Lcom/android/server/AlarmManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOW_WHILE_IDLE_LONG_TIME:J = 0xafc80L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_SHORT_TIME:J = 0x1388L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_WHITELIST_DURATION:J = 0x2710L

.field private static final DEFAULT_APP_STANDBY_RESTRICTED_QUOTA:I = 0x1

.field private static final DEFAULT_APP_STANDBY_RESTRICTED_WINDOW:J = 0x5265c00L

.field private static final DEFAULT_APP_STANDBY_WINDOW:J = 0x6ddd00L

.field private static final DEFAULT_LISTENER_TIMEOUT:J = 0x1388L

.field private static final DEFAULT_MAX_ALARMS_PER_UID:I = 0x1f4

.field private static final DEFAULT_MAX_INTERVAL:J = 0x757b12c00L

.field private static final DEFAULT_MIN_FUTURITY:J = 0x1388L

.field private static final DEFAULT_MIN_INTERVAL:J = 0xea60L

.field static final KEY_ALLOW_WHILE_IDLE_LONG_TIME:Ljava/lang/String; = "allow_while_idle_long_time"

.field static final KEY_ALLOW_WHILE_IDLE_SHORT_TIME:Ljava/lang/String; = "allow_while_idle_short_time"

.field static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"

.field private static final KEY_APP_STANDBY_RESTRICTED_QUOTA:Ljava/lang/String; = "standby_restricted_quota"

.field private static final KEY_APP_STANDBY_RESTRICTED_WINDOW:Ljava/lang/String; = "app_standby_restricted_window"

.field private static final KEY_APP_STANDBY_WINDOW:Ljava/lang/String; = "app_standby_window"

.field static final KEY_LISTENER_TIMEOUT:Ljava/lang/String; = "listener_timeout"

.field static final KEY_MAX_ALARMS_PER_UID:Ljava/lang/String; = "max_alarms_per_uid"

.field static final KEY_MAX_INTERVAL:Ljava/lang/String; = "max_interval"

.field static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"

.field static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"


# instance fields
.field public ALLOW_WHILE_IDLE_LONG_TIME:J

.field public ALLOW_WHILE_IDLE_SHORT_TIME:J

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public APP_STANDBY_QUOTAS:[I

.field public APP_STANDBY_RESTRICTED_QUOTA:I

.field public APP_STANDBY_RESTRICTED_WINDOW:J

.field public APP_STANDBY_WINDOW:J

.field private final DEFAULT_APP_STANDBY_QUOTAS:[I

.field final KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

.field public LISTENER_TIMEOUT:J

.field public MAX_ALARMS_PER_UID:I

.field public MAX_INTERVAL:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field private mLastAllowWhileIdleWhitelistDuration:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 516
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    .line 517
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 432
    const-string/jumbo v0, "standby_active_quota"

    const-string/jumbo v1, "standby_working_quota"

    const-string/jumbo v2, "standby_frequent_quota"

    const-string/jumbo v3, "standby_rare_quota"

    const-string/jumbo v4, "standby_never_quota"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    .line 474
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    .line 485
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 488
    const-wide/32 v3, 0xea60

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 491
    const-wide v3, 0x757b12c00L

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 494
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    .line 497
    const-wide/32 v3, 0xafc80

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 500
    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 504
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 505
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 507
    const-wide/32 v1, 0x6ddd00

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 508
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 509
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    .line 510
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 513
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 514
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 518
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 519
    return-void

    :array_0
    .array-data 4
        0x2d0
        0xa
        0x2
        0x1
        0x0
    .end array-data
.end method

.method private updateConstants()V
    .locals 7

    .line 543
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "alarm_manager_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    goto :goto_0

    .line 602
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 547
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "AlarmManager"

    const-string v3, "Bad alarm manager settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_futurity"

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 554
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_interval"

    const-wide/32 v5, 0xea60

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 555
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_interval"

    const-wide v5, 0x757b12c00L

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 556
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "allow_while_idle_short_time"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    .line 558
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "allow_while_idle_long_time"

    const-wide/32 v5, 0xafc80

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 560
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "allow_while_idle_whitelist_duration"

    const-wide/16 v5, 0x2710

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 563
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "listener_timeout"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 566
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "app_standby_window"

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 568
    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 569
    const-string v1, "AlarmManager"

    const-string v2, "Cannot exceed the app_standby_window size of 7200000"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_1

    .line 572
    :cond_0
    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 574
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using a non-default app_standby_window of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v5, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    .line 580
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 581
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v6, v6, v1

    .line 582
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 581
    invoke-virtual {v3, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v1

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 585
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "standby_restricted_quota"

    .line 586
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 585
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    .line 589
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "app_standby_restricted_window"

    const-wide/32 v5, 0x5265c00

    .line 590
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 589
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 593
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_alarms_per_uid"

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 595
    if-ge v1, v3, :cond_3

    .line 596
    const-string v1, "AlarmManager"

    const-string v2, "Cannot set max_alarms_per_uid lower than 500"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iput v3, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 601
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 602
    monitor-exit v0

    .line 603
    return-void

    .line 602
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 610
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 614
    const-string/jumbo v0, "min_futurity"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 615
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 616
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 618
    const-string/jumbo v1, "min_interval"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 620
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 622
    const-string/jumbo v1, "max_interval"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 623
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 624
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 626
    const-string/jumbo v1, "listener_timeout"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 627
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 628
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 630
    const-string v1, "allow_while_idle_short_time"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 631
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 632
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 634
    const-string v1, "allow_while_idle_long_time"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 635
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 636
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 638
    const-string v1, "allow_while_idle_whitelist_duration"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 639
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 640
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 642
    const-string/jumbo v1, "max_alarms_per_uid"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget v1, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 645
    const-string v1, "app_standby_window"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 646
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 647
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 650
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v1    # "i":I
    :cond_0
    const-string/jumbo v1, "standby_restricted_quota"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 655
    iget v1, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 657
    const-string v1, "app_standby_restricted_window"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 658
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 659
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 661
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 662
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 606
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$Constants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 607
    return-void
.end method

.method dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 665
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 667
    .local v0, "token":J
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 668
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 669
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 670
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 671
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 673
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 675
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const-wide v4, 0x10300000006L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 678
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 679
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 539
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateConstants()V

    .line 540
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 522
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 523
    const-string v0, "alarm_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 525
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateConstants()V

    .line 526
    return-void
.end method

.method public updateAllowWhileIdleWhitelistDurationLocked()V
    .locals 4

    .line 529
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 530
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 531
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 532
    .local v0, "opts":Landroid/app/BroadcastOptions;
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-virtual {v0, v1, v2}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 533
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    .line 535
    .end local v0    # "opts":Landroid/app/BroadcastOptions;
    :cond_0
    return-void
.end method
