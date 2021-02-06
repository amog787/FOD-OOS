.class Lcom/android/server/am/OomAdjProfiler$CpuTimes;
.super Ljava/lang/Object;
.source "OomAdjProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CpuTimes"
.end annotation


# instance fields
.field private mOnBatteryScreenOffTimeUs:J

.field private mOnBatteryTimeUs:J

.field final synthetic this$0:Lcom/android/server/am/OomAdjProfiler;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OomAdjProfiler;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/OomAdjProfiler;
    .param p2, "x1"    # Lcom/android/server/am/OomAdjProfiler$1;

    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;)V

    return-void
.end method


# virtual methods
.method public addCpuTimeMs(J)V
    .locals 4
    .param p1, "cpuTimeMs"    # J

    .line 197
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iget-object v2, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v2}, Lcom/android/server/am/OomAdjProfiler;->access$100(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v3}, Lcom/android/server/am/OomAdjProfiler;->access$200(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(JZZ)V

    .line 198
    return-void
.end method

.method public addCpuTimeMs(JZZ)V
    .locals 2
    .param p1, "cpuTimeMs"    # J
    .param p3, "onBattery"    # Z
    .param p4, "screenOff"    # Z

    .line 201
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(JZZ)V

    .line 202
    return-void
.end method

.method public addCpuTimeUs(J)V
    .locals 2
    .param p1, "cpuTimeUs"    # J

    .line 205
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v0}, Lcom/android/server/am/OomAdjProfiler;->access$100(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v1}, Lcom/android/server/am/OomAdjProfiler;->access$200(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(JZZ)V

    .line 206
    return-void
.end method

.method public addCpuTimeUs(JZZ)V
    .locals 2
    .param p1, "cpuTimeUs"    # J
    .param p3, "onBattery"    # Z
    .param p4, "screenOff"    # Z

    .line 209
    if-eqz p3, :cond_0

    .line 210
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeUs:J

    .line 211
    if-eqz p4, :cond_0

    .line 212
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeUs:J

    .line 215
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 4

    .line 218
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeUs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeUs:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
