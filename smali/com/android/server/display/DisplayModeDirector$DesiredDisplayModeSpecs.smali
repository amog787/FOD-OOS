.class public final Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesiredDisplayModeSpecs"
.end annotation


# instance fields
.field public final appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

.field public baseModeId:I

.field public final primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 616
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 617
    return-void
.end method

.method public constructor <init>(ILcom/android/server/display/DisplayModeDirector$RefreshRateRange;Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;)V
    .locals 0
    .param p1, "baseModeId"    # I
    .param p2, "primaryRefreshRateRange"    # Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;
    .param p3, "appRequestRefreshRateRange"    # Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 623
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 624
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 625
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 674
    iget v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 675
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    iput v1, v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    .line 676
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iput v1, v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    .line 677
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    iput v1, v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    .line 678
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iput v1, v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    .line 679
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 642
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 643
    return v0

    .line 646
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 647
    return v2

    .line 650
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 652
    .local v1, "desiredDisplayModeSpecs":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iget v4, v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v3, v4, :cond_2

    .line 653
    return v2

    .line 655
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget-object v4, v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 656
    return v2

    .line 658
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget-object v4, v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 660
    return v2

    .line 662
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 667
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 632
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 634
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    .line 635
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 632
    const-string v1, "baseModeId=%d primaryRefreshRateRange=[%.0f %.0f] appRequestRefreshRateRange=[%.0f %.0f]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
