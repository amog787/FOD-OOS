.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;,
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"


# instance fields
.field protected mLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/display/utils/Plog;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 20
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 62
    move-object/from16 v0, p0

    const v1, 0x1070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v1

    .line 64
    .local v1, "luxLevels":[F
    const v2, 0x1070016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 66
    .local v2, "brightnessLevelsBacklight":[I
    const v3, 0x1070014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 68
    .local v3, "brightnessLevelsNits":[F
    const/4 v4, 0x1

    const/high16 v5, 0x1130000

    invoke-virtual {v0, v5, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    .line 76
    .local v5, "autoBrightnessAdjustmentMaxGamma":F
    new-array v6, v4, [I

    const/16 v7, 0x70

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    const v6, 0x1070074

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 78
    .local v6, "nitsRange":[F
    const v9, 0x1070072

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    move-object v13, v6

    move-object v14, v9

    .local v9, "backlightRange":[I
    goto :goto_0

    .line 80
    .end local v6    # "nitsRange":[F
    .end local v9    # "backlightRange":[I
    :cond_0
    const v6, 0x1070073

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 81
    .restart local v6    # "nitsRange":[F
    const v9, 0x1070071

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    move-object v13, v6

    move-object v14, v9

    .line 87
    .end local v6    # "nitsRange":[F
    .local v13, "nitsRange":[F
    .local v14, "backlightRange":[I
    :goto_0
    const/4 v6, 0x0

    .line 88
    .local v6, "HBMBrightnessBacklight":[F
    const/4 v9, 0x0

    .line 89
    .local v9, "HBMLuxLevels":[F
    new-array v10, v4, [I

    const/16 v11, 0x7b

    aput v11, v10, v8

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 90
    const v10, 0x1070008

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 92
    const v10, 0x1070009

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v9

    move-object v15, v6

    move-object/from16 v16, v9

    goto :goto_1

    .line 89
    :cond_1
    move-object v15, v6

    move-object/from16 v16, v9

    .line 97
    .end local v6    # "HBMBrightnessBacklight":[F
    .end local v9    # "HBMLuxLevels":[F
    .local v15, "HBMBrightnessBacklight":[F
    .local v16, "HBMLuxLevels":[F
    :goto_1
    invoke-static {v13, v14}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 98
    invoke-static {v1, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    const v6, 0x10e00b7

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 104
    .local v12, "minimumBacklight":I
    new-array v6, v4, [I

    aput v7, v6, v8

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    const v6, 0x10e00b5

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move v10, v6

    .local v6, "maximumBacklight":I
    goto :goto_2

    .line 107
    .end local v6    # "maximumBacklight":I
    :cond_2
    const v6, 0x10e00b4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move v10, v6

    .line 110
    .local v10, "maximumBacklight":I
    :goto_2
    aget v6, v14, v8

    if-gt v6, v12, :cond_3

    array-length v6, v14

    sub-int/2addr v6, v4

    aget v6, v14, v6

    if-ge v6, v10, :cond_4

    .line 112
    :cond_3
    const-string v6, "BrightnessMappingStrategy"

    const-string v7, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_4
    new-instance v6, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v6, v1, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    move-object/from16 v17, v6

    .line 119
    .local v17, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    new-array v4, v4, [I

    aput v11, v4, v8

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 120
    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v7

    move-object v6, v4

    move-object v8, v13

    move-object v9, v14

    move/from16 v18, v10

    .end local v10    # "maximumBacklight":I
    .local v18, "maximumBacklight":I
    move v10, v5

    move-object/from16 v11, v16

    move/from16 v19, v12

    .end local v12    # "minimumBacklight":I
    .local v19, "minimumBacklight":I
    move-object v12, v15

    invoke-direct/range {v6 .. v12}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF[F[F)V

    return-object v4

    .line 123
    .end local v18    # "maximumBacklight":I
    .end local v19    # "minimumBacklight":I
    .restart local v10    # "maximumBacklight":I
    .restart local v12    # "minimumBacklight":I
    :cond_5
    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v6

    invoke-direct {v4, v6, v13, v14, v5}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v4

    .line 127
    .end local v10    # "maximumBacklight":I
    .end local v12    # "minimumBacklight":I
    .end local v17    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    :cond_6
    invoke-static {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 128
    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {v4, v1, v2, v5}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object v4

    .line 131
    :cond_7
    const/4 v4, 0x0

    return-object v4
.end method

.method private findInsertionPoint([FF)I
    .locals 2
    .param p1, "arr"    # [F
    .param p2, "val"    # F

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 379
    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 380
    return v0

    .line 378
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_1
    array-length v0, p1

    return v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 145
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 146
    .local v0, "N":I
    new-array v1, v0, [F

    .line 147
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 148
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 4
    .param p0, "lux"    # [I

    .line 137
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 138
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 139
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
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

    .line 346
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 349
    .local v0, "idx":I
    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 350
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 351
    .local v1, "newLuxLevels":[F
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 352
    .local v2, "newBrightnessLevels":[F
    aput p3, v1, v0

    .line 353
    aput p4, v2, v0

    goto :goto_0

    .line 354
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_0
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    .line 355
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 356
    .restart local v1    # "newLuxLevels":[F
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 357
    .restart local v2    # "newBrightnessLevels":[F
    aput p4, v2, v0

    goto :goto_0

    .line 359
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 360
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    aput p3, v1, v0

    .line 362
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 363
    .restart local v2    # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    aput p4, v2, v0

    .line 367
    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 368
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .locals 6
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 155
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p0

    if-eqz v1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    .line 158
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 159
    return v0

    .line 161
    :cond_1
    array-length v1, p0

    .line 162
    .local v1, "N":I
    aget v2, p0, v0

    .line 163
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 164
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

    .line 167
    :cond_2
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_7

    .line 168
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_6

    aget v5, p1, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    goto :goto_2

    .line 171
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

    .line 174
    :cond_4
    aget v2, p0, v4

    .line 175
    aget v3, p1, v4

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_5
    :goto_1
    return v0

    .line 169
    :cond_6
    :goto_2
    return v0

    .line 177
    .end local v4    # "i":I
    :cond_7
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_8
    :goto_3
    return v0

    .line 156
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

    .line 181
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 184
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 185
    return v0

    .line 187
    :cond_1
    array-length v1, p0

    .line 188
    .local v1, "N":I
    aget v2, p0, v0

    .line 189
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 190
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_7

    if-ltz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 193
    :cond_2
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_6

    .line 194
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_5

    aget v5, p1, v4

    if-le v3, v5, :cond_3

    goto :goto_1

    .line 197
    :cond_3
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 198
    return v0

    .line 200
    :cond_4
    aget v2, p0, v4

    .line 201
    aget v3, p1, v4

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_5
    :goto_1
    return v0

    .line 203
    .end local v4    # "i":I
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_7
    :goto_2
    return v0

    .line 182
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":I
    :cond_8
    :goto_3
    return v0
.end method

.method private permissibleRatio(FF)F
    .locals 2
    .param p1, "currLux"    # F
    .param p2, "prevLux"    # F

    .line 428
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p1, v0

    .line 429
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p2

    .line 430
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    .line 428
    invoke-static {v1}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private smoothCurve([F[FI)V
    .locals 8
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "idx"    # I

    .line 387
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 390
    :cond_0
    aget v0, p1, p3

    .line 391
    .local v0, "prevLux":F
    aget v1, p2, p3

    .line 393
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p3, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 394
    aget v3, p1, v2

    .line 395
    .local v3, "currLux":F
    aget v4, p2, v2

    .line 396
    .local v4, "currBrightness":F
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 397
    .local v5, "maxBrightness":F
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 399
    .local v6, "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_1

    .line 400
    goto :goto_1

    .line 402
    :cond_1
    move v0, v3

    .line 403
    move v1, v6

    .line 404
    aput v6, p2, v2

    .line 393
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "maxBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "i":I
    :cond_2
    :goto_1
    aget v0, p1, p3

    .line 408
    aget v1, p2, p3

    .line 409
    add-int/lit8 v2, p3, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 410
    aget v3, p1, v2

    .line 411
    .restart local v3    # "currLux":F
    aget v4, p2, v2

    .line 412
    .restart local v4    # "currBrightness":F
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 413
    .local v5, "minBrightness":F
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 415
    .restart local v6    # "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_3

    .line 416
    goto :goto_3

    .line 418
    :cond_3
    move v0, v3

    .line 419
    move v1, v6

    .line 420
    aput v6, p2, v2

    .line 409
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "minBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 422
    .end local v2    # "i":I
    :cond_4
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_5

    .line 423
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "smoothed curve"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 425
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

    .line 270
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract enableCurveGenAlgo(Z)V
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

    .line 465
    move-object v0, p1

    .line 466
    .local v0, "newLux":[F
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 467
    .local v1, "newBrightness":[F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 468
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "unadjusted curve"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 470
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p5, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    .line 471
    neg-float v4, p5

    invoke-static {p6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 472
    .local v4, "gamma":F
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_1

    .line 473
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

    .line 474
    invoke-static {p6, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 473
    const-string v6, "BrightnessMappingStrategy"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_2

    .line 477
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 478
    aget v5, v1, v2

    invoke-static {v5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    aput v5, v1, v2

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v2    # "i":I
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_3

    .line 482
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma adjusted curve"

    invoke-virtual {v2, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 484
    :cond_3
    cmpl-float v2, p3, v3

    if-eqz v2, :cond_4

    .line 485
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 487
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 488
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 489
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_4

    .line 490
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v5, "gamma and user adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 492
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 493
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    const-string/jumbo v7, "user adjusted curve"

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 496
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

    .line 257
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public getHBMBrightness(F)F
    .locals 2
    .param p1, "lux"    # F

    .line 266
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getHBMBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public abstract getHBMBrightness(FLjava/lang/String;I)F
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method protected inferAutoBrightnessAdjustment(FFF)F
    .locals 8
    .param p1, "maxGamma"    # F
    .param p2, "desiredBrightness"    # F
    .param p3, "currentBrightness"    # F

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 439
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_3

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    .line 443
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 445
    :cond_1
    cmpl-float v2, p2, v3

    if-nez v2, :cond_2

    .line 446
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 449
    :cond_2
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    .line 451
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_1

    .line 440
    :cond_3
    :goto_0
    sub-float v0, p2, p3

    .line 453
    :goto_1
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 454
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_4

    .line 455
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

    .line 456
    invoke-static {p1, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    const-string v7, "BrightnessMappingStrategy"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-static {p3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_4
    return v0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method protected normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p1, "brightness"    # I

    .line 339
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 341
    int-to-float v0, p1

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 215
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 216
    const/4 v0, 0x0

    return v0

    .line 218
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 219
    const/4 v0, 0x1

    return v0
.end method
