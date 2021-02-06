.class public final Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateRange"
.end annotation


# instance fields
.field public max:F

.field public min:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v1, p2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    .line 552
    move v0, p1

    .line 553
    .local v0, "t":F
    move p1, p2

    .line 554
    move p2, v0

    .line 556
    .end local v0    # "t":F
    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    .line 557
    iput p2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    .line 558
    return-void

    .line 545
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong values for min and max when initializing RefreshRateRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    .line 548
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 565
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 566
    return v0

    .line 569
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 570
    return v2

    .line 573
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 574
    .local v1, "refreshRateRange":Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    iget v4, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iget v4, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 579
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
