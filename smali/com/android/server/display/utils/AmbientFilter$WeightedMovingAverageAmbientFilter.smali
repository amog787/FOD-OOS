.class Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;
.super Lcom/android/server/display/utils/AmbientFilter;
.source "AmbientFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/utils/AmbientFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeightedMovingAverageAmbientFilter"
.end annotation


# static fields
.field private static final PREDICTION_TIME:I = 0x64


# instance fields
.field private final mIntercept:F


# direct methods
.method constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "horizon"    # I
    .param p3, "intercept"    # F

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;-><init>(Ljava/lang/String;I)V

    .line 180
    invoke-direct {p0, p3}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->validateArguments(F)V

    .line 181
    iput p3, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    .line 182
    return-void
.end method

.method private antiderivative(F)F
    .locals 2
    .param p1, "x"    # F

    .line 249
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private calculateIntegral(FF)F
    .locals 2
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 244
    invoke-direct {p0, p2}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->antiderivative(F)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->antiderivative(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getWeights(JLcom/android/server/display/utils/RollingBuffer;)[F
    .locals 9
    .param p1, "time"    # J
    .param p3, "buffer"    # Lcom/android/server/display/utils/RollingBuffer;

    .line 228
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 229
    .local v0, "weights":[F
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v1

    .line 230
    .local v1, "startTime":J
    const/4 v3, 0x0

    .line 231
    .local v3, "previousTime":F
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    const/high16 v6, 0x447a0000    # 1000.0f

    if-ge v4, v5, :cond_0

    .line 232
    invoke-virtual {p3, v4}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v7

    sub-long/2addr v7, v1

    long-to-float v5, v7

    div-float/2addr v5, v6

    .line 233
    .local v5, "currentTime":F
    invoke-direct {p0, v3, v5}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->calculateIntegral(FF)F

    move-result v6

    .line 234
    .local v6, "weight":F
    add-int/lit8 v7, v4, -0x1

    aput v6, v0, v7

    .line 235
    move v3, v5

    .line 231
    .end local v5    # "currentTime":F
    .end local v6    # "weight":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v4, 0x64

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-float v4, v4

    div-float/2addr v4, v6

    .line 238
    .local v4, "lastTime":F
    invoke-direct {p0, v3, v4}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->calculateIntegral(FF)F

    move-result v5

    .line 239
    .local v5, "lastWeight":F
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v5, v0, v6

    .line 240
    return-object v0
.end method

.method private validateArguments(F)V
    .locals 2
    .param p1, "intercept"    # F

    .line 222
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 225
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intercept must be a non-negative number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 189
    invoke-super {p0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected filter(JLcom/android/server/display/utils/RollingBuffer;)F
    .locals 7
    .param p1, "time"    # J
    .param p3, "buffer"    # Lcom/android/server/display/utils/RollingBuffer;

    .line 200
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, "total":F
    const/4 v1, 0x0

    .line 205
    .local v1, "totalWeight":F
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->getWeights(JLcom/android/server/display/utils/RollingBuffer;)[F

    move-result-object v2

    .line 209
    .local v2, "weights":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 210
    invoke-virtual {p3, v3}, Lcom/android/server/display/utils/RollingBuffer;->getValue(I)F

    move-result v4

    .line 211
    .local v4, "value":F
    aget v5, v2, v3

    .line 212
    .local v5, "weight":F
    mul-float v6, v5, v4

    add-float/2addr v0, v6

    .line 213
    add-float/2addr v1, v5

    .line 209
    .end local v4    # "value":F
    .end local v5    # "weight":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    .line 216
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p3, v3}, Lcom/android/server/display/utils/RollingBuffer;->getValue(I)F

    move-result v3

    return v3

    .line 218
    :cond_2
    div-float v3, v0, v1

    return v3
.end method
