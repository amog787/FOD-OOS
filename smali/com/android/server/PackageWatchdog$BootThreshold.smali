.class Lcom/android/server/PackageWatchdog$BootThreshold;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BootThreshold"
.end annotation


# instance fields
.field private final mBootTriggerCount:I

.field private final mTriggerWindow:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0
    .param p1, "bootTriggerCount"    # I
    .param p2, "triggerWindow"    # J

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    iput p1, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    .line 1472
    iput-wide p2, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    .line 1473
    return-void
.end method

.method private getCount()I
    .locals 2

    .line 1481
    const-string/jumbo v0, "sys.rescue_boot_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setCount(I)V
    .locals 2
    .param p1, "count"    # I

    .line 1485
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.rescue_boot_count"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    return-void
.end method


# virtual methods
.method public getStart()J
    .locals 3

    .line 1489
    const-string/jumbo v0, "sys.rescue_boot_start"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndTest()Z
    .locals 8

    .line 1500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1501
    .local v0, "now":J
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1502
    const-string v2, "PackageWatchdog"

    const-string v3, "Window was less than zero. Resetting start to current time."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    .line 1505
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1506
    .local v2, "window":J
    iget-wide v4, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_1

    .line 1507
    invoke-direct {p0, v6}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    .line 1508
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    .line 1509
    return v5

    .line 1511
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getCount()I

    move-result v4

    add-int/2addr v4, v6

    .line 1512
    .local v4, "count":I
    invoke-direct {p0, v4}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    .line 1513
    invoke-static {v5, v4, v2, v3}, Lcom/android/server/EventLogTags;->writeRescueNote(IIJ)V

    .line 1514
    iget v7, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    if-lt v4, v7, :cond_2

    move v5, v6

    :cond_2
    return v5
.end method

.method public reset()V
    .locals 2

    .line 1476
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    .line 1477
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    .line 1478
    return-void
.end method

.method public setStart(J)V
    .locals 8
    .param p1, "start"    # J

    .line 1493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1494
    .local v6, "now":J
    const-wide/16 v2, 0x0

    move-wide v0, p1

    move-wide v4, v6

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    .line 1495
    .local v0, "newStart":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sys.rescue_boot_start"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    return-void
.end method
