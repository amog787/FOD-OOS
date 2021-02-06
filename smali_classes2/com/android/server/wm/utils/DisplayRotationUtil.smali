.class public Lcom/android/server/wm/utils/DisplayRotationUtil;
.super Ljava/lang/Object;
.source "DisplayRotationUtil.java"


# instance fields
.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static getBoundIndexFromRotation(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "rotation"    # I

    .line 57
    invoke-static {p1}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getRotationToBoundsOffset(I)I

    move-result v0

    add-int/2addr v0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    return v0
.end method

.method private static getRotationToBoundsOffset(I)I
    .locals 2
    .param p0, "rotation"    # I

    .line 40
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    return v0

    .line 46
    :cond_1
    return v1

    .line 44
    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getRotatedBounds([Landroid/graphics/Rect;III)[Landroid/graphics/Rect;
    .locals 5
    .param p1, "bounds"    # [Landroid/graphics/Rect;
    .param p2, "rotation"    # I
    .param p3, "initialDisplayWidth"    # I
    .param p4, "initialDisplayHeight"    # I

    .line 74
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 78
    if-nez p2, :cond_0

    .line 79
    return-object p1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, p3, p4, v0}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 83
    new-array v0, v1, [Landroid/graphics/Rect;

    .line 84
    .local v0, "newBounds":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 86
    aget-object v2, p1, v1

    .line 87
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 89
    .local v3, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 90
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 92
    .end local v3    # "rectF":Landroid/graphics/RectF;
    :cond_1
    invoke-static {v1, p2}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getBoundIndexFromRotation(II)I

    move-result v3

    aput-object v2, v0, v3

    .line 84
    .end local v2    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 75
    .end local v0    # "newBounds":[Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounds must have exactly 4 elements: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
