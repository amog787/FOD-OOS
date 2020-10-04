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
.field private mOnBatteryScreenOffTimeMs:J

.field private mOnBatteryTimeMs:J

.field final synthetic this$0:Lcom/android/server/am/OomAdjProfiler;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OomAdjProfiler;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/OomAdjProfiler;
    .param p2, "x1"    # Lcom/android/server/am/OomAdjProfiler$1;

    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;)V

    return-void
.end method


# virtual methods
.method public addCpuTimeMs(J)V
    .locals 2
    .param p1, "cpuTimeMs"    # J

    .line 189
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v0}, Lcom/android/server/am/OomAdjProfiler;->access$100(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v1}, Lcom/android/server/am/OomAdjProfiler;->access$200(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeMs(JZZ)V

    .line 190
    return-void
.end method

.method public addCpuTimeMs(JZZ)V
    .locals 2
    .param p1, "cpuTimeMs"    # J
    .param p3, "onBattery"    # Z
    .param p4, "screenOff"    # Z

    .line 193
    if-eqz p3, :cond_0

    .line 194
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeMs:J

    .line 195
    if-eqz p4, :cond_0

    .line 196
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeMs:J

    .line 199
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 4

    .line 202
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeMs:J

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
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
