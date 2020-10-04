.class public final Lcom/android/server/AnyMotionDetector$Vector3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector3"
.end annotation


# instance fields
.field public timeMillisSinceBoot:J

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(JFFF)V
    .locals 0
    .param p1, "timeMillisSinceBoot"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-wide p1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 377
    iput p3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 378
    iput p4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 379
    iput p5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 380
    return-void
.end method


# virtual methods
.method public angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .locals 5
    .param p1, "other"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 400
    .local v0, "crossVector":Lcom/android/server/AnyMotionDetector$Vector3;
    nop

    .line 401
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 400
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 402
    .local v1, "degrees":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "angleBetween: this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", other = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", degrees = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    const-string v3, "AnyMotionDetector"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v1
.end method

.method public cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 10
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 408
    new-instance v6, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v3, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float v4, v0, v3

    iget v5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v7, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float v8, v5, v7

    sub-float/2addr v4, v8

    iget v8, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v5, v8

    iget v9, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v3, v9

    sub-float/2addr v5, v3

    mul-float/2addr v9, v7

    mul-float/2addr v0, v8

    sub-float v7, v9, v0

    move-object v0, v6

    move v3, v4

    move v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v6
.end method

.method public dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .locals 3
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 426
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 438
    new-instance v6, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v3, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    sub-float v4, v0, v4

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    sub-float v5, v0, v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v6
.end method

.method public norm()F
    .locals 2

    .line 383
    invoke-virtual {p0, p0}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 8

    .line 387
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    move-result v0

    .line 388
    .local v0, "mag":F
    new-instance v7, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    div-float v4, v1, v0

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    div-float v5, v1, v0

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    div-float v6, v1, v0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v7
.end method

.method public plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 434
    new-instance v6, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v3, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    add-float/2addr v5, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v6
.end method

.method public times(F)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7
    .param p1, "val"    # F

    .line 430
    new-instance v6, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float v3, v0, p1

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float v4, v0, p1

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 417
    const-string v0, ""

    .line 418
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timeMillisSinceBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    return-object v0
.end method
