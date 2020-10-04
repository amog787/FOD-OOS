.class final Lcom/android/server/display/DisplayModeDirector$Vote;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Vote"
.end annotation


# static fields
.field public static final INVALID_SIZE:I = -0x1

.field public static final MAX_PRIORITY:I = 0x3

.field public static final MIN_PRIORITY:I = 0x0

.field public static final PRIORITY_APP_REQUEST_REFRESH_RATE:I = 0x1

.field public static final PRIORITY_APP_REQUEST_SIZE:I = 0x2

.field public static final PRIORITY_LOW_POWER_MODE:I = 0x3

.field public static final PRIORITY_USER_SETTING:I


# instance fields
.field public final height:I

.field public final maxRefreshRate:F

.field public final minRefreshRate:F

.field public final width:I


# direct methods
.method private constructor <init>(IIFF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minRefreshRate"    # F
    .param p4, "maxRefreshRate"    # F

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    .line 452
    iput p2, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    .line 453
    iput p3, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->minRefreshRate:F

    .line 454
    iput p4, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->maxRefreshRate:F

    .line 455
    return-void
.end method

.method public static forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 2
    .param p0, "minRefreshRate"    # F
    .param p1, "maxRefreshRate"    # F

    .line 442
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFF)V

    return-object v0
.end method

.method public static forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 446
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, 0x0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFF)V

    return-object v0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "priority"    # I

    .line 458
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 468
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :cond_0
    const-string v0, "PRIORITY_LOW_POWER_MODE"

    return-object v0

    .line 464
    :cond_1
    const-string v0, "PRIORITY_APP_REQUEST_SIZE"

    return-object v0

    .line 462
    :cond_2
    const-string v0, "PRIORITY_APP_REQUEST_REFRESH_RATE"

    return-object v0

    .line 460
    :cond_3
    const-string v0, "PRIORITY_USER_SETTING"

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vote{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->minRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->maxRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
