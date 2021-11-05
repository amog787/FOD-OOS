.class Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySavingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stat"
.end annotation


# instance fields
.field public endBatteryLevel:I

.field public endBatteryPercent:I

.field public endTime:J

.field public startBatteryLevel:I

.field public startBatteryPercent:I

.field public startTime:J

.field public totalBatteryDrain:I

.field public totalBatteryDrainPercent:I

.field public totalTimeMillis:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drainPerHour()D
    .locals 6

    .line 118
    iget-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 119
    const-wide/16 v0, 0x0

    return-wide v0

    .line 121
    :cond_0
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    int-to-double v2, v2

    long-to-double v0, v0

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v4

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public drainPercentPerHour()D
    .locals 6

    .line 125
    iget-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 126
    const-wide/16 v0, 0x0

    return-wide v0

    .line 128
    :cond_0
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    int-to-double v2, v2

    long-to-double v0, v0

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v4

    div-double/2addr v2, v0

    return-wide v2
.end method

.method toStringForTest()Ljava/lang/String;
    .locals 7

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "m,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uA/H,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPercentPerHour()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method public totalMinutes()J
    .locals 4

    .line 114
    iget-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method
