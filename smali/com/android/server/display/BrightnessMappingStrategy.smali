.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final MIN_PERMISSABLE_INCREASE:F = 0.004f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final SHORT_TERM_MODEL_THRESHOLD_RATIO:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"

.field private static mHBMLuxThreshold:I

.field public static mHBMSupport:Z

.field private static mMaxHBMLevel:I

.field private static mMinHBMLevel:I


# instance fields
.field protected mLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/BrightnessMappingStrategy;->mHBMSupport:Z

    .line 69
    const/16 v0, 0x4e20

    sput v0, Lcom/android/server/display/BrightnessMappingStrategy;->mHBMLuxThreshold:I

    .line 70
    const/4 v0, -0x1

    sput v0, Lcom/android/server/display/BrightnessMappingStrategy;->mMinHBMLevel:I

    .line 71
    sput v0, Lcom/android/server/display/BrightnessMappingStrategy;->mMaxHBMLevel:I

    .line 74
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/display/utils/Plog;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 52
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->mMinHBMLevel:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 52
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->mMaxHBMLevel:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 52
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->mHBMLuxThreshold:I

    return v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 22
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 78
    move-object/from16 v0, p0

    const v1, 0x1070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v1

    .line 80
    .local v1, "luxLevels":[F
    const v2, 0x1070015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 82
    .local v9, "brightnessLevelsBacklight":[I
    const v2, 0x1070013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v10

    .line 84
    .local v10, "brightnessLevelsNits":[F
    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    .line 88
    .local v8, "autoBrightnessAdjustmentMaxGamma":F
    const v2, 0x107006c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 90
    .local v6, "nitsRange":[F
    const v2, 0x107006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 93
    .local v7, "backlightRange":[I
    const v2, 0x10e0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    .line 98
    .local v4, "shortTermModelTimeout":J
    const/4 v2, 0x0

    .line 99
    .local v2, "hbmLuxLevels":[F
    const/4 v11, 0x0

    .line 100
    .local v11, "hbmLevelsBacklight":[F
    new-array v12, v3, [I

    const/16 v13, 0x62

    const/4 v14, 0x0

    aput v13, v12, v14

    invoke-static {v12}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 101
    const v12, 0x1070009

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 103
    const v12, 0x1070008

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v11

    .line 105
    const v12, 0x10e0007

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/android/server/display/BrightnessMappingStrategy;->mHBMLuxThreshold:I

    .line 107
    const v12, 0x10e0085

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/android/server/display/BrightnessMappingStrategy;->mMinHBMLevel:I

    .line 109
    const v12, 0x10e007b

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/android/server/display/BrightnessMappingStrategy;->mMaxHBMLevel:I

    .line 111
    array-length v12, v2

    if-lez v12, :cond_0

    array-length v12, v11

    if-lez v12, :cond_0

    .line 112
    sput-boolean v3, Lcom/android/server/display/BrightnessMappingStrategy;->mHBMSupport:Z

    .line 117
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v11

    goto :goto_0

    .line 100
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v11

    .line 117
    .end local v2    # "hbmLuxLevels":[F
    .end local v11    # "hbmLevelsBacklight":[F
    .local v18, "hbmLuxLevels":[F
    .local v19, "hbmLevelsBacklight":[F
    :goto_0
    invoke-static {v6, v7}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    invoke-static {v1, v10}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    const v2, 0x10e00b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 121
    .local v2, "minimumBacklight":I
    const v11, 0x10e00b7

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 123
    .local v15, "maximumBacklight":I
    aget v11, v7, v14

    if-gt v11, v2, :cond_2

    array-length v11, v7

    sub-int/2addr v11, v3

    aget v3, v7, v11

    if-ge v3, v15, :cond_3

    .line 125
    :cond_2
    const-string v3, "BrightnessMappingStrategy"

    const-string v11, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3
    new-instance v3, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v3, v1, v10}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 130
    .local v3, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 131
    const v11, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v11}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 132
    invoke-virtual {v3, v11}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 133
    sget-boolean v11, Lcom/android/server/display/BrightnessMappingStrategy;->mHBMSupport:Z

    if-eqz v11, :cond_4

    .line 134
    new-instance v20, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;

    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v12

    move-object/from16 v11, v20

    move-object v13, v6

    move-object v14, v7

    move/from16 v21, v15

    .end local v15    # "maximumBacklight":I
    .local v21, "maximumBacklight":I
    move v15, v8

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v11 .. v17}, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF[F[F)V

    return-object v20

    .line 137
    .end local v21    # "maximumBacklight":I
    .restart local v15    # "maximumBacklight":I
    :cond_4
    new-instance v11, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v12

    invoke-direct {v11, v12, v6, v7, v8}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v11

    .line 141
    .end local v2    # "minimumBacklight":I
    .end local v3    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .end local v15    # "maximumBacklight":I
    :cond_5
    invoke-static {v1, v9}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 142
    new-instance v11, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    const/4 v12, 0x0

    move-object v2, v11

    move-object v3, v1

    move-wide v13, v4

    .end local v4    # "shortTermModelTimeout":J
    .local v13, "shortTermModelTimeout":J
    move-object v4, v9

    move v5, v8

    move-object v15, v6

    move-object/from16 v16, v7

    .end local v6    # "nitsRange":[F
    .end local v7    # "backlightRange":[I
    .local v15, "nitsRange":[F
    .local v16, "backlightRange":[I
    move-wide v6, v13

    move/from16 v17, v8

    .end local v8    # "autoBrightnessAdjustmentMaxGamma":F
    .local v17, "autoBrightnessAdjustmentMaxGamma":F
    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJLcom/android/server/display/BrightnessMappingStrategy$1;)V

    return-object v11

    .line 145
    .end local v13    # "shortTermModelTimeout":J
    .end local v15    # "nitsRange":[F
    .end local v16    # "backlightRange":[I
    .end local v17    # "autoBrightnessAdjustmentMaxGamma":F
    .restart local v4    # "shortTermModelTimeout":J
    .restart local v6    # "nitsRange":[F
    .restart local v7    # "backlightRange":[I
    .restart local v8    # "autoBrightnessAdjustmentMaxGamma":F
    :cond_6
    const/4 v2, 0x0

    return-object v2
.end method

.method private findInsertionPoint([FF)I
    .locals 2
    .param p1, "arr"    # [F
    .param p2, "val"    # F

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 442
    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 443
    return v0

    .line 441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "i":I
    :cond_1
    array-length v0, p1

    return v0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 165
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 166
    .local v0, "N":I
    new-array v1, v0, [F

    .line 167
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 168
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 4
    .param p0, "lux"    # [I

    .line 151
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 152
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 153
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private insertControlPoint([F[FFF)Landroid/util/Pair;
    .locals 5
    .param p1, "luxLevels"    # [F
    .param p2, "brightnessLevels"    # [F
    .param p3, "lux"    # F
    .param p4, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 409
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 412
    .local v0, "idx":I
    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 413
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 414
    .local v1, "newLuxLevels":[F
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 415
    .local v2, "newBrightnessLevels":[F
    aput p3, v1, v0

    .line 416
    aput p4, v2, v0

    goto :goto_0

    .line 417
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_0
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    .line 418
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 419
    .restart local v1    # "newLuxLevels":[F
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 420
    .restart local v2    # "newBrightnessLevels":[F
    aput p4, v2, v0

    goto :goto_0

    .line 422
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 423
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    aput p3, v1, v0

    .line 425
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 426
    .restart local v2    # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    aput p4, v2, v0

    .line 430
    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 431
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .locals 6
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 175
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p0

    if-eqz v1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    .line 178
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 179
    return v0

    .line 181
    :cond_1
    array-length v1, p0

    .line 182
    .local v1, "N":I
    aget v2, p0, v0

    .line 183
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 184
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_8

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 187
    :cond_2
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_7

    .line 188
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_6

    aget v5, p1, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    goto :goto_2

    .line 191
    :cond_3
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 194
    :cond_4
    aget v2, p0, v4

    .line 195
    aget v3, p1, v4

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :cond_5
    :goto_1
    return v0

    .line 189
    :cond_6
    :goto_2
    return v0

    .line 197
    .end local v4    # "i":I
    :cond_7
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_8
    :goto_3
    return v0

    .line 176
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":F
    :cond_9
    :goto_4
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .locals 6
    .param p0, "x"    # [F
    .param p1, "y"    # [I

    .line 201
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 204
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 205
    return v0

    .line 207
    :cond_1
    array-length v1, p0

    .line 208
    .local v1, "N":I
    aget v2, p0, v0

    .line 209
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 210
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_7

    if-ltz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 213
    :cond_2
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_6

    .line 214
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_5

    aget v5, p1, v4

    if-le v3, v5, :cond_3

    goto :goto_1

    .line 217
    :cond_3
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 218
    return v0

    .line 220
    :cond_4
    aget v2, p0, v4

    .line 221
    aget v3, p1, v4

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    :cond_5
    :goto_1
    return v0

    .line 223
    .end local v4    # "i":I
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_7
    :goto_2
    return v0

    .line 202
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":I
    :cond_8
    :goto_3
    return v0
.end method

.method protected static normalizeAbsoluteBrightness(I)F
    .locals 4
    .param p0, "brightness"    # I

    .line 402
    const/4 v0, 0x1

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v0

    return v0
.end method

.method private permissibleRatio(FF)F
    .locals 2
    .param p1, "currLux"    # F
    .param p2, "prevLux"    # F

    .line 493
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p1, v0

    .line 494
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p2

    .line 495
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    .line 493
    invoke-static {v1}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private smoothCurve([F[FI)V
    .locals 8
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "idx"    # I

    .line 450
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 453
    :cond_0
    aget v0, p1, p3

    .line 454
    .local v0, "prevLux":F
    aget v1, p2, p3

    .line 456
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p3, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 457
    aget v3, p1, v2

    .line 458
    .local v3, "currLux":F
    aget v4, p2, v2

    .line 459
    .local v4, "currBrightness":F
    nop

    .line 460
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    const v6, 0x3b83126f    # 0.004f

    add-float/2addr v6, v1

    .line 459
    invoke-static {v5, v6}, Landroid/util/MathUtils;->max(FF)F

    move-result v5

    .line 462
    .local v5, "maxBrightness":F
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 464
    .local v6, "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_1

    .line 465
    goto :goto_1

    .line 467
    :cond_1
    move v0, v3

    .line 468
    move v1, v6

    .line 469
    aput v6, p2, v2

    .line 456
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "maxBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v2    # "i":I
    :cond_2
    :goto_1
    aget v0, p1, p3

    .line 473
    aget v1, p2, p3

    .line 474
    add-int/lit8 v2, p3, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 475
    aget v3, p1, v2

    .line 476
    .restart local v3    # "currLux":F
    aget v4, p2, v2

    .line 477
    .restart local v4    # "currBrightness":F
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 478
    .local v5, "minBrightness":F
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 480
    .restart local v6    # "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_3

    .line 481
    goto :goto_3

    .line 483
    :cond_3
    move v0, v3

    .line 484
    move v1, v6

    .line 485
    aput v6, p2, v2

    .line 474
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "minBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 487
    .end local v2    # "i":I
    :cond_4
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_5

    .line 488
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "smoothed curve"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 490
    :cond_5
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public convertNitsToBrightness(F)F
    .locals 1
    .param p1, "nits"    # F

    .line 288
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method protected getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 8
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "userLux"    # F
    .param p4, "userBrightness"    # F
    .param p5, "adjustment"    # F
    .param p6, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 530
    move-object v0, p1

    .line 531
    .local v0, "newLux":[F
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 532
    .local v1, "newBrightness":[F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 533
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "unadjusted curve"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 535
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p5, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    .line 536
    neg-float v4, p5

    invoke-static {p6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 537
    .local v4, "gamma":F
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_1

    .line 538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdjustedCurve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, p5

    .line 539
    invoke-static {p6, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    const-string v6, "BrightnessMappingStrategy"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1
    cmpl-float v3, v4, v3

    if-eqz v3, :cond_2

    .line 542
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 543
    aget v5, v1, v3

    invoke-static {v5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    aput v5, v1, v3

    .line 542
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    .end local v3    # "i":I
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_3

    .line 547
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 549
    :cond_3
    cmpl-float v2, p3, v2

    if-eqz v2, :cond_4

    .line 550
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 552
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 553
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 554
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_4

    .line 555
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma and user adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 557
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 558
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    const-string/jumbo v7, "user adjusted curve"

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 561
    .end local v2    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_4
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public getBrightness(F)F
    .locals 2
    .param p1, "lux"    # F

    .line 283
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getShortTermModelTimeout()J
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method protected inferAutoBrightnessAdjustment(FFF)F
    .locals 8
    .param p1, "maxGamma"    # F
    .param p2, "desiredBrightness"    # F
    .param p3, "currentBrightness"    # F

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 504
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_3

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    .line 508
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 510
    :cond_1
    cmpl-float v2, p2, v3

    if-nez v2, :cond_2

    .line 511
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 514
    :cond_2
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    .line 516
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_1

    .line 505
    :cond_3
    :goto_0
    sub-float v0, p2, p3

    .line 518
    :goto_1
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 519
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_4

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inferAutoBrightnessAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, v0

    .line 521
    invoke-static {p1, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    const-string v7, "BrightnessMappingStrategy"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-static {p3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_4
    return v0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 235
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 236
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public shouldResetShortTermModel(FF)Z
    .locals 8
    .param p1, "ambientLux"    # F
    .param p2, "shortTermModelAnchor"    # F

    .line 372
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 373
    .local v0, "config":Landroid/hardware/display/BrightnessConfiguration;
    const v1, 0x3f19999a    # 0.6f

    .line 374
    .local v1, "minThresholdRatio":F
    const v2, 0x3f19999a    # 0.6f

    .line 375
    .local v2, "maxThresholdRatio":F
    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    .line 377
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v1

    .line 379
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v2

    .line 383
    :cond_1
    mul-float v3, p2, v1

    sub-float v3, p2, v3

    .line 385
    .local v3, "minAmbientLux":F
    mul-float v4, p2, v2

    add-float/2addr v4, p2

    .line 387
    .local v4, "maxAmbientLux":F
    cmpg-float v5, v3, p1

    const-string v6, "BrightnessMappingStrategy"

    if-gez v5, :cond_3

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_3

    .line 388
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_2

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " < "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2
    const/4 v5, 0x0

    return v5

    .line 394
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v5, 0x1

    return v5
.end method

.method public updateBatteryLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 294
    return-void
.end method
