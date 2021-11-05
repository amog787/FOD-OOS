.class Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
.super Ljava/lang/Object;
.source "CountQuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/CountQuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExecutionStats"
.end annotation


# instance fields
.field public countInWindow:I

.field public countLimit:I

.field public expirationTimeElapsed:J

.field public inQuotaTimeElapsed:J

.field public windowSizeMs:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    instance-of v0, p1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 106
    .local v0, "other":Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    iget-wide v4, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    iget-wide v4, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    iget v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    iget v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 112
    .end local v0    # "other":Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 119
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 120
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    add-int/2addr v1, v2

    .line 121
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    add-int/2addr v0, v2

    .line 122
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 123
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", windowSizeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", countLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countInWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inQuotaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
