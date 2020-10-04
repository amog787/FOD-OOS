.class Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceThrottler.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DisplayWhiteBalanceThrottler"


# instance fields
.field private mBaseThresholds:[F

.field private mDecreaseDebounce:I

.field private mDecreaseThreshold:F

.field private mDecreaseThresholds:[F

.field private mIncreaseDebounce:I

.field private mIncreaseThreshold:F

.field private mIncreaseThresholds:[F

.field private mLastTime:J

.field private mLastValue:F

.field protected mLoggingEnabled:Z


# direct methods
.method constructor <init>(II[F[F[F)V
    .locals 6
    .param p1, "increaseDebounce"    # I
    .param p2, "decreaseDebounce"    # I
    .param p3, "baseThresholds"    # [F
    .param p4, "increaseThresholds"    # [F
    .param p5, "decreaseThresholds"    # [F

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    int-to-float v1, p1

    int-to-float v2, p2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->validateArguments(FF[F[F[F)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    .line 75
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseDebounce:I

    .line 76
    iput p2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseDebounce:I

    .line 77
    iput-object p3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mBaseThresholds:[F

    .line 78
    iput-object p4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThresholds:[F

    .line 79
    iput-object p5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThresholds:[F

    .line 80
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    .line 81
    return-void
.end method

.method private computeThresholds(F)V
    .locals 3
    .param p1, "value"    # F

    .line 213
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mBaseThresholds:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->getHighestIndexBefore(F[F)I

    move-result v0

    .line 214
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThresholds:[F

    aget v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThreshold:F

    .line 215
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThresholds:[F

    aget v1, v1, v0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThreshold:F

    .line 216
    return-void
.end method

.method private getHighestIndexBefore(F[F)I
    .locals 2
    .param p1, "value"    # F
    .param p2, "values"    # [F

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 220
    aget v1, p2, v0

    cmpl-float v1, v1, p1

    if-ltz v1, :cond_0

    .line 221
    return v0

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "i":I
    :cond_1
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static isValidMapping([F[F)Z
    .locals 5
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 166
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v1, p0

    if-eqz v1, :cond_4

    array-length v1, p1

    if-eqz v1, :cond_4

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 169
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 170
    .local v1, "prevX":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 171
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    aget v3, p0, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    aget v3, p0, v2

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    aget v1, p0, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_2
    :goto_1
    return v0

    .line 176
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 167
    .end local v1    # "prevX":F
    :cond_4
    :goto_2
    return v0
.end method

.method private tooClose(F)Z
    .locals 4
    .param p1, "value"    # F

    .line 198
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 199
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThreshold:F

    .line 200
    .local v0, "threshold":F
    cmpg-float v3, p1, v0

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .local v1, "tooClose":Z
    :goto_0
    goto :goto_1

    .line 202
    .end local v0    # "threshold":F
    .end local v1    # "tooClose":Z
    :cond_1
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThreshold:F

    .line 203
    .restart local v0    # "threshold":F
    cmpl-float v3, p1, v0

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 205
    .restart local v1    # "tooClose":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    if-eqz v2, :cond_5

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    const-string/jumbo v3, "too close: "

    goto :goto_2

    :cond_3
    const-string v3, "far enough: "

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 207
    cmpl-float v3, p1, v0

    if-lez v3, :cond_4

    const-string v3, " > "

    goto :goto_3

    :cond_4
    const-string v3, " < "

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v3, "DisplayWhiteBalanceThrottler"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_5
    return v1
.end method

.method private tooSoon(F)Z
    .locals 7
    .param p1, "value"    # F

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    .local v0, "time":J
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 183
    iget-wide v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseDebounce:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .local v2, "earliestTime":J
    goto :goto_0

    .line 185
    .end local v2    # "earliestTime":J
    :cond_0
    iget-wide v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    iget v4, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseDebounce:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 187
    .restart local v2    # "earliestTime":J
    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 188
    .local v4, "tooSoon":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    if-eqz v5, :cond_4

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_2

    const-string/jumbo v6, "too soon: "

    goto :goto_2

    :cond_2
    const-string/jumbo v6, "late enough: "

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    if-eqz v4, :cond_3

    const-string v6, " < "

    goto :goto_3

    :cond_3
    const-string v6, " > "

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    const-string v6, "DisplayWhiteBalanceThrottler"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_4
    return v4
.end method

.method private validateArguments(FF[F[F[F)V
    .locals 2
    .param p1, "increaseDebounce"    # F
    .param p2, "decreaseDebounce"    # F
    .param p3, "baseThresholds"    # [F
    .param p4, "increaseThresholds"    # [F
    .param p5, "decreaseThresholds"    # [F

    .line 149
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    .line 152
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    .line 155
    invoke-static {p3, p4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->isValidMapping([F[F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-static {p3, p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->isValidMapping([F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseThresholds to decreaseThresholds is not a valid mapping."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseThresholds to increaseThresholds is not a valid mapping."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decreaseDebounce must be a non-negative number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "increaseDebounce must be a non-negative number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    .line 106
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThreshold:F

    .line 107
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThreshold:F

    .line 108
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    .line 109
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 134
    const-string v0, "  DisplayWhiteBalanceThrottler"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIncreaseDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDecreaseDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBaseThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mBaseThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIncreaseThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDecreaseThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIncreaseThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDecreaseThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 120
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public throttle(F)Z
    .locals 4
    .param p1, "value"    # F

    .line 92
    iget-wide v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->tooSoon(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->tooClose(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->computeThresholds(F)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    .line 97
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    .line 98
    const/4 v0, 0x0

    return v0
.end method
