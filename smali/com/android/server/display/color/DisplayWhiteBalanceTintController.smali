.class final Lcom/android/server/display/color/DisplayWhiteBalanceTintController;
.super Lcom/android/server/display/color/TintController;
.source "DisplayWhiteBalanceTintController.java"


# static fields
.field private static final COLORSPACE_MATRIX_LENGTH:I = 0x9

.field private static final NUM_DISPLAY_PRIMARIES_VALS:I = 0xc

.field private static final NUM_VALUES_PER_PRIMARY:I = 0x3


# instance fields
.field private mChromaticAdaptationMatrix:[F

.field mCurrentColorTemperature:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mCurrentColorTemperatureXYZ:[F

.field mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDisplayNominalWhiteXYZ:[F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsAvailable:Ljava/lang/Boolean;

.field private final mLock:Ljava/lang/Object;

.field private mMatrixDisplayWhiteBalance:[F

.field mSetUp:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTemperatureDefault:I

.field mTemperatureMax:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mTemperatureMin:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    return-void
.end method

.method private getDisplayColorSpaceFromResources(Landroid/content/res/Resources;)Landroid/graphics/ColorSpace$Rgb;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 282
    const v0, 0x1070036

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "displayPrimariesValues":[Ljava/lang/String;
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 286
    .local v1, "displayRedGreenBlueXYZ":[F
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 288
    .local v2, "displayWhiteXYZ":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 289
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v3

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 293
    array-length v4, v1

    add-int/2addr v4, v3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v2, v3

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 297
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v3

    return-object v3
.end method

.method private getDisplayColorSpaceFromSurfaceControl()Landroid/graphics/ColorSpace$Rgb;
    .locals 9

    .line 260
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    .line 261
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 262
    return-object v1

    .line 265
    :cond_0
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v2

    .line 266
    .local v2, "primaries":Landroid/view/SurfaceControl$DisplayPrimaries;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    if-nez v3, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    const/16 v1, 0x9

    new-array v1, v1, [F

    iget-object v3, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    iget v3, v3, Landroid/view/SurfaceControl$CieXyz;->X:F

    const/4 v4, 0x0

    aput v3, v1, v4

    iget-object v3, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    iget v3, v3, Landroid/view/SurfaceControl$CieXyz;->Y:F

    const/4 v5, 0x1

    aput v3, v1, v5

    iget-object v3, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    iget v3, v3, Landroid/view/SurfaceControl$CieXyz;->Z:F

    const/4 v6, 0x2

    aput v3, v1, v6

    iget-object v3, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    iget v3, v3, Landroid/view/SurfaceControl$CieXyz;->X:F

    const/4 v7, 0x3

    aput v3, v1, v7

    const/4 v3, 0x4

    iget-object v8, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    iget v8, v8, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v8, v1, v3

    const/4 v3, 0x5

    iget-object v8, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    iget v8, v8, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v8, v1, v3

    const/4 v3, 0x6

    iget-object v8, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    iget v8, v8, Landroid/view/SurfaceControl$CieXyz;->X:F

    aput v8, v1, v3

    const/4 v3, 0x7

    iget-object v8, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    iget v8, v8, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v8, v1, v3

    const/16 v3, 0x8

    iget-object v8, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    iget v8, v8, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v8, v1, v3

    new-array v3, v7, [F

    iget-object v7, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    iget v7, v7, Landroid/view/SurfaceControl$CieXyz;->X:F

    aput v7, v3, v4

    iget-object v4, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    iget v4, v4, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v4, v3, v5

    iget-object v4, v2, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    iget v4, v4, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v4, v3, v6

    invoke-direct {p0, v1, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v1

    return-object v1

    .line 268
    :cond_2
    :goto_0
    return-object v1
.end method

.method private isColorMatrixCoeffValid(F)Z
    .locals 1
    .param p1, "coeff"    # F

    .line 301
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isColorMatrixValid([F)Z
    .locals 3
    .param p1, "matrix"    # [F

    .line 309
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 314
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixCoeffValid(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    return v0

    .line 313
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 310
    :cond_3
    :goto_1
    return v0
.end method

.method private makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;
    .locals 7
    .param p1, "redGreenBlueXYZ"    # [F
    .param p2, "whiteXYZ"    # [F

    .line 251
    new-instance v6, Landroid/graphics/ColorSpace$Rgb;

    const-string v1, "Display Color Space"

    const-wide v4, 0x40019999a0000000L    # 2.200000047683716

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FD)V

    return-object v6
.end method

.method private matrixToString([FI)Ljava/lang/String;
    .locals 5
    .param p1, "matrix"    # [F
    .param p2, "columns"    # I

    .line 235
    const-string v0, ""

    if-eqz p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 241
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 242
    rem-int v2, v1, p2

    if-nez v2, :cond_1

    .line 243
    const-string v2, "\n      "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%9.6f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v1, "ColorDisplayService"

    const-string v2, "Invalid arguments when formatting matrix to string"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 205
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSetUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    iget-boolean v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-nez v1, :cond_0

    .line 208
    monitor-exit v0

    return-void

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentColorTemperature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentColorTemperatureXYZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 216
    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayColorSpaceRGB RGB-to-XYZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 218
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mChromaticAdaptationMatrix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 220
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayColorSpaceRGB XYZ-to-RGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 222
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMatrixDisplayWhiteBalance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/4 v3, 0x4

    .line 224
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLevel()I
    .locals 1

    .line 192
    const/16 v0, 0x7d

    return v0
.end method

.method public getMatrix()[F
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 130
    :goto_0
    return-object v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 198
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setMatrix(I)V
    .locals 13
    .param p1, "cct"    # I

    .line 136
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-nez v0, :cond_0

    .line 137
    const-string v0, "ColorDisplayService"

    const-string v1, "Can\'t set display white balance temperature: uninitialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    if-ge p1, v0, :cond_1

    .line 143
    const-string v0, "ColorDisplayService"

    const-string v1, "Requested display color temperature is below allowed minimum"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    goto :goto_0

    .line 146
    :cond_1
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    if-le p1, v0, :cond_2

    .line 147
    const-string v0, "ColorDisplayService"

    const-string v1, "Requested display color temperature is above allowed maximum"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 152
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayWhiteBalanceTemperatureMatrix: cct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    .line 158
    invoke-static {p1}, Landroid/graphics/ColorSpace;->cctToXyz(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 160
    sget-object v1, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    iget-object v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 161
    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace;->chromaticAdaptation(Landroid/graphics/ColorSpace$Adaptation;[F[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 165
    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 166
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v2

    .line 165
    invoke-static {v1, v2}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v1

    .line 167
    .local v1, "result":[F
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v2

    move-object v1, v2

    .line 170
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x3

    aget v5, v1, v4

    add-float/2addr v3, v5

    const/4 v5, 0x6

    aget v6, v1, v5

    add-float/2addr v3, v6

    .line 171
    .local v3, "adaptedMaxR":F
    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x4

    aget v8, v1, v7

    add-float/2addr v6, v8

    const/4 v8, 0x7

    aget v8, v1, v8

    add-float/2addr v6, v8

    .line 172
    .local v6, "adaptedMaxG":F
    const/4 v8, 0x2

    aget v8, v1, v8

    const/4 v9, 0x5

    aget v9, v1, v9

    add-float/2addr v8, v9

    const/16 v9, 0x8

    aget v10, v1, v9

    add-float/2addr v8, v10

    .line 173
    .local v8, "adaptedMaxB":F
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 175
    .local v10, "denum":F
    iget-object v11, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v11, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 176
    move v11, v2

    .local v11, "i":I
    :goto_1
    array-length v12, v1

    if-ge v11, v12, :cond_4

    .line 177
    aget v12, v1, v11

    div-float/2addr v12, v10

    aput v12, v1, v11

    .line 178
    aget v12, v1, v11

    invoke-direct {p0, v12}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixCoeffValid(F)Z

    move-result v12

    if-nez v12, :cond_3

    .line 179
    const-string v2, "ColorDisplayService"

    const-string v4, "Invalid DWB color matrix"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v0

    return-void

    .line 176
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 184
    .end local v11    # "i":I
    :cond_4
    iget-object v11, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v2, v11, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v4, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v5, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    .end local v1    # "result":[F
    .end local v3    # "adaptedMaxR":F
    .end local v6    # "adaptedMaxG":F
    .end local v8    # "adaptedMaxB":F
    .end local v10    # "denum":F
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUp(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needsLinear"    # Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getDisplayColorSpaceFromSurfaceControl()Landroid/graphics/ColorSpace$Rgb;

    move-result-object v1

    .line 70
    .local v1, "displayColorSpaceRGB":Landroid/graphics/ColorSpace$Rgb;
    if-nez v1, :cond_0

    .line 71
    const-string v2, "ColorDisplayService"

    const-string v3, "Failed to get display color space from SurfaceControl, trying res"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getDisplayColorSpaceFromResources(Landroid/content/res/Resources;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v1

    .line 74
    if-nez v1, :cond_0

    .line 75
    const-string v2, "ColorDisplayService"

    const-string v3, "Failed to get display color space from resources"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 81
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixValid([F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    const-string v2, "ColorDisplayService"

    const-string v3, "Invalid display color space RGB-to-XYZ transform"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 85
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixValid([F)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    const-string v2, "ColorDisplayService"

    const-string v3, "Invalid display color space XYZ-to-RGB transform"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 90
    :cond_2
    const v2, 0x1070035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "nominalWhiteValues":[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 93
    .local v3, "displayNominalWhiteXYZ":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 94
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v4

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    .end local v4    # "i":I
    :cond_3
    const v4, 0x10e004b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 99
    .local v4, "colorTemperatureMin":I
    if-gtz v4, :cond_4

    .line 100
    const-string v5, "ColorDisplayService"

    const-string v6, "Display white balance minimum temperature must be greater than 0"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 105
    :cond_4
    const v5, 0x10e004a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 107
    .local v5, "colorTemperatureMax":I
    if-ge v5, v4, :cond_5

    .line 108
    const-string v6, "ColorDisplayService"

    const-string v7, "Display white balance max temp must be greater or equal to min"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_5
    const v6, 0x10e0048

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 116
    .local v6, "colorTemperature":I
    iget-object v7, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 117
    :try_start_0
    iput-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 118
    iput-object v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 119
    iput v4, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    .line 120
    iput v5, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 121
    iput v6, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    .line 122
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 123
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget v7, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    invoke-virtual {p0, v7}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setMatrix(I)V

    .line 126
    return-void

    .line 123
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method
