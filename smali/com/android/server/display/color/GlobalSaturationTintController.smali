.class final Lcom/android/server/display/color/GlobalSaturationTintController;
.super Lcom/android/server/display/color/TintController;
.source "GlobalSaturationTintController.java"


# instance fields
.field private final mMatrixGlobalSaturation:[F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 74
    const/16 v0, 0x96

    return v0
.end method

.method public getMatrix()[F
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setMatrix(I)V
    .locals 8
    .param p1, "saturationLevel"    # I

    .line 44
    const/16 v0, 0x64

    if-gez p1, :cond_0

    .line 45
    const/4 p1, 0x0

    goto :goto_0

    .line 46
    :cond_0
    if-le p1, v0, :cond_1

    .line 47
    const/16 p1, 0x64

    .line 49
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting saturation level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/GlobalSaturationTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 53
    iget-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/color/GlobalSaturationTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 56
    int-to-float v2, p1

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    .line 57
    .local v2, "saturation":F
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 58
    .local v3, "desaturation":F
    const/4 v4, 0x3

    new-array v4, v4, [F

    const v5, 0x3e6c8b44    # 0.231f

    mul-float/2addr v5, v3

    aput v5, v4, v1

    const v5, 0x3f370a3d    # 0.715f

    mul-float/2addr v5, v3

    aput v5, v4, v0

    const v5, 0x3d9374bc    # 0.072f

    mul-float/2addr v5, v3

    const/4 v6, 0x2

    aput v5, v4, v6

    .line 60
    .local v4, "luminance":[F
    iget-object v5, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    aget v7, v4, v1

    add-float/2addr v7, v2

    aput v7, v5, v1

    .line 61
    aget v7, v4, v1

    aput v7, v5, v0

    .line 62
    aget v1, v4, v1

    aput v1, v5, v6

    .line 63
    const/4 v1, 0x4

    aget v7, v4, v0

    aput v7, v5, v1

    .line 64
    const/4 v1, 0x5

    aget v7, v4, v0

    add-float/2addr v7, v2

    aput v7, v5, v1

    .line 65
    const/4 v1, 0x6

    aget v0, v4, v0

    aput v0, v5, v1

    .line 66
    const/16 v0, 0x8

    aget v1, v4, v6

    aput v1, v5, v0

    .line 67
    const/16 v0, 0x9

    aget v1, v4, v6

    aput v1, v5, v0

    .line 68
    const/16 v0, 0xa

    aget v1, v4, v6

    add-float/2addr v1, v2

    aput v1, v5, v0

    .line 70
    .end local v2    # "saturation":F
    .end local v3    # "desaturation":F
    .end local v4    # "luminance":[F
    :goto_1
    return-void
.end method

.method public setUp(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needsLinear"    # Z

    .line 35
    return-void
.end method
