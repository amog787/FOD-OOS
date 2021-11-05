.class final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Metrics"
.end annotation


# static fields
.field private static final COUNTER_MODE_PREFIX:Ljava/lang/String; = "dnd_mode_"

.field private static final COUNTER_RULE:Ljava/lang/String; = "dnd_rule_count"

.field private static final COUNTER_TYPE_PREFIX:Ljava/lang/String; = "dnd_type_"

.field private static final DND_OFF:I = 0x0

.field private static final DND_ON_AUTOMATIC:I = 0x2

.field private static final DND_ON_MANUAL:I = 0x1

.field private static final MINIMUM_LOG_PERIOD_MS:J = 0xea60L


# instance fields
.field private mModeLogTimeMs:J

.field private mNumZenRules:I

.field private mPreviousZenMode:I

.field private mPreviousZenType:I

.field private mRuleCountLogTime:J

.field private mTypeLogTimeMs:J

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 2

    .line 1474
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    .line 1484
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 1485
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 1487
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 1488
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 1491
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 1492
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "x1"    # Lcom/android/server/notification/ZenModeHelper$1;

    .line 1474
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/notification/ZenModeHelper$Metrics;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 1474
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method

.method private emit()V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$200(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 1506
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitZenMode()V

    .line 1507
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitRules()V

    .line 1508
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitDndType()V

    .line 1509
    return-void
.end method

.method private emitDndType()V
    .locals 10

    .line 1543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1544
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    sub-long v2, v0, v2

    .line 1545
    .local v2, "since":J
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v4

    .line 1546
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 1547
    .local v5, "dndOn":Z
    :goto_0
    if-nez v5, :cond_1

    move v6, v7

    goto :goto_1

    .line 1548
    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v7, v7, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    :goto_1
    nop

    .line 1549
    .local v6, "zenType":I
    iget v7, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    if-ne v6, v7, :cond_3

    const-wide/32 v7, 0xea60

    cmp-long v7, v2, v7

    if-lez v7, :cond_5

    .line 1551
    :cond_3
    iget v7, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 1552
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1553
    invoke-static {v7}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dnd_type_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    long-to-int v9, v2

    .line 1552
    invoke-static {v7, v8, v9}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1555
    :cond_4
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    .line 1556
    iput v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 1558
    .end local v5    # "dndOn":Z
    .end local v6    # "zenType":I
    :cond_5
    monitor-exit v4

    .line 1559
    return-void

    .line 1558
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private emitRules()V
    .locals 9

    .line 1525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1526
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    sub-long v2, v0, v2

    .line 1527
    .local v2, "since":J
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v4

    .line 1528
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v5, v5, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1529
    .local v5, "numZenRules":I
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    if-ne v6, v5, :cond_0

    const-wide/32 v6, 0xea60

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 1531
    :cond_0
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 1532
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "dnd_rule_count"

    iget v8, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    sub-int v8, v5, v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1535
    :cond_1
    iput v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 1537
    iput-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 1539
    .end local v5    # "numZenRules":I
    :cond_2
    monitor-exit v4

    .line 1540
    return-void

    .line 1539
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private emitZenMode()V
    .locals 7

    .line 1512
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1513
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    sub-long v2, v0, v2

    .line 1514
    .local v2, "since":J
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v5, :cond_0

    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 1515
    :cond_0
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1516
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1517
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dnd_mode_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    long-to-int v6, v2

    .line 1516
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1519
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iput v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 1520
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 1522
    :cond_2
    return-void
.end method


# virtual methods
.method onConfigChanged()V
    .locals 0

    .line 1501
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    .line 1502
    return-void
.end method

.method onZenModeChanged()V
    .locals 0

    .line 1496
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    .line 1497
    return-void
.end method
