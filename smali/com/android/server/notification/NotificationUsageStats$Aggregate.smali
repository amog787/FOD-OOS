.class public Lcom/android/server/notification/NotificationUsageStats$Aggregate;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aggregate"
.end annotation


# instance fields
.field avg:D

.field numSamples:J

.field sum2:D

.field var:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSample(J)V
    .locals 17
    .param p1, "sample"    # J

    .line 1004
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    .line 1005
    iget-wide v1, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    long-to-double v5, v1

    .line 1006
    .local v5, "n":D
    move-wide/from16 v7, p1

    long-to-double v9, v7

    iget-wide v11, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    sub-double/2addr v9, v11

    .line 1007
    .local v9, "delta":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double v15, v13, v5

    mul-double/2addr v15, v9

    add-double/2addr v11, v15

    iput-wide v11, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    .line 1008
    iget-wide v11, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    sub-double v15, v5, v13

    div-double/2addr v15, v5

    mul-double/2addr v15, v9

    mul-double/2addr v15, v9

    add-double/2addr v11, v15

    iput-wide v11, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    .line 1009
    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sub-double v13, v5, v13

    :goto_0
    move-wide v1, v13

    .line 1010
    .local v1, "divisor":D
    iget-wide v3, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    div-double/2addr v3, v1

    iput-wide v3, v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    .line 1011
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aggregate{numSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", var="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
