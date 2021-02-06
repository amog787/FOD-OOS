.class public Lcom/android/server/display/OpAmbientLuxDetecter;
.super Ljava/lang/Object;
.source "OpAmbientLuxDetecter.java"


# static fields
.field private static final DARKEN_GAP:I = 0x1f40

.field private static final DARKEN_LIMIT_LENGTH:I = 0x1e

.field private static final DARKEN_LUX:I = 0x3e8

.field private static final FAST_BRIGHTEN_DEBOUNCE_TIME:J = 0x5dcL

.field private static final SAMPLE_LENGTH:I = 0xa

.field private static final SUPPORT_IRISCHIP:Z

.field private static final SUPPORT_SOFTIRIS:Z

.field private static final TAG:Ljava/lang/String; = "OpAmbientLuxDetecter"


# instance fields
.field private mAmbientBrighteningThreshold:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mCurrentBrightness:F

.field private mFastAmbientLux:F

.field private mIs18865N19801:Z

.field private mLastObservedLux:F

.field private mLoggingEnabled:Z

.field private mMaxFactor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x125

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/OpAmbientLuxDetecter;->SUPPORT_SOFTIRIS:Z

    .line 26
    new-array v0, v0, [I

    const/16 v1, 0x124

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/OpAmbientLuxDetecter;->SUPPORT_IRISCHIP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mIs18865N19801:Z

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mMaxFactor:[I

    .line 37
    invoke-virtual {p0}, Lcom/android/server/display/OpAmbientLuxDetecter;->isOnePlus18865N19801()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mIs18865N19801:Z

    .line 38
    return-void

    :array_0
    .array-data 4
        0x9
        0x9
        0x9
        0x7
        0x7
        0x5
        0x5
        0x3
        0x3
    .end array-data
.end method

.method private getDcEnable()Z
    .locals 3

    .line 259
    const-string/jumbo v0, "persist.vendor.dc.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isOnePlus7Projects()Z
    .locals 2

    .line 263
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "projectName":Ljava/lang/String;
    const-string v1, "18821"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18825"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    const-string v1, "18827"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18831"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    const-string v1, "18857"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 267
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private useScreenShotAlgo()Z
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/android/server/display/OpAmbientLuxDetecter;->getDcEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/OpAmbientLuxDetecter;->isOnePlus7Projects()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method isOnePlus18865N19801()Z
    .locals 2

    .line 274
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "projectName":Ljava/lang/String;
    const-string v1, "18865"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    const-string v1, "19801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 277
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public nextFastBrighteningTransition(J)F
    .locals 28
    .param p1, "time"    # J

    .line 141
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v3

    .line 142
    .local v3, "N":I
    move-wide/from16 v4, p1

    .line 144
    .local v4, "earliestValidTime":J
    iget v6, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientBrighteningThreshold:F

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    sub-float/2addr v6, v7

    .line 145
    .local v6, "deltaLux":F
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    sub-float/2addr v8, v7

    .line 146
    .local v8, "delta":F
    const-wide/16 v9, 0x5dc

    .line 148
    .local v9, "duration":J
    const/4 v11, 0x0

    cmpg-float v11, v8, v11

    const/high16 v12, -0x40800000    # -1.0f

    if-gez v11, :cond_0

    .line 149
    return v12

    .line 151
    :cond_0
    const v11, 0x461c4000    # 10000.0f

    cmpl-float v11, v8, v11

    const-string v13, "OpAmbientLuxDetecter"

    if-lez v11, :cond_1

    const v11, 0x459c4000    # 5000.0f

    cmpg-float v7, v7, v11

    if-ltz v7, :cond_6

    :cond_1
    const v7, 0x45bb8000    # 6000.0f

    cmpl-float v7, v8, v7

    const/high16 v11, 0x447a0000    # 1000.0f

    if-lez v7, :cond_2

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v7, v7, v11

    if-ltz v7, :cond_6

    :cond_2
    const/high16 v7, 0x457a0000    # 4000.0f

    cmpl-float v7, v8, v7

    const/high16 v14, 0x43480000    # 200.0f

    if-lez v7, :cond_3

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v7, v7, v14

    if-ltz v7, :cond_6

    :cond_3
    const/high16 v7, 0x44fa0000    # 2000.0f

    cmpl-float v7, v8, v7

    if-lez v7, :cond_4

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v15, 0x42c80000    # 100.0f

    cmpg-float v7, v7, v15

    if-ltz v7, :cond_6

    :cond_4
    cmpl-float v7, v8, v11

    const/high16 v15, 0x42480000    # 50.0f

    if-lez v7, :cond_5

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v7, v7, v15

    if-ltz v7, :cond_6

    :cond_5
    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v16, v8, v7

    if-lez v16, :cond_7

    iget v12, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v17, 0x41a00000    # 20.0f

    cmpg-float v12, v12, v17

    if-gez v12, :cond_7

    .line 157
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "great change:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mFastAmbientLux:F

    return v7

    .line 161
    :cond_7
    iget v12, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v17, 0x41200000    # 10.0f

    div-float v12, v12, v17

    .line 162
    .local v12, "diff":F
    sget-boolean v18, Lcom/android/server/display/OpAmbientLuxDetecter;->SUPPORT_IRISCHIP:Z

    const/high16 v19, 0x40400000    # 3.0f

    if-nez v18, :cond_9

    sget-boolean v18, Lcom/android/server/display/OpAmbientLuxDetecter;->SUPPORT_SOFTIRIS:Z

    if-eqz v18, :cond_8

    goto :goto_0

    :cond_8
    move-wide/from16 v22, v4

    move/from16 v24, v8

    move-wide/from16 v26, v9

    goto/16 :goto_5

    :cond_9
    :goto_0
    const/high16 v18, 0x40c00000    # 6.0f

    cmpl-float v18, v12, v18

    if-lez v18, :cond_11

    const/16 v7, 0x14

    if-le v3, v7, :cond_11

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v7, v7, v12

    if-gtz v7, :cond_11

    .line 163
    const/4 v7, 0x0

    .line 164
    .local v7, "maxCount":I
    iget-object v14, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v21, v3, -0xa

    add-int/lit8 v15, v21, -0x2

    invoke-virtual {v14, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v14

    .line 165
    .local v14, "luxOfPointOfInfection":F
    const/4 v15, 0x1

    .local v15, "j":I
    :goto_1
    const/16 v11, 0xa

    if-ge v15, v11, :cond_b

    .line 166
    iget-object v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-wide/from16 v22, v4

    .end local v4    # "earliestValidTime":J
    .local v22, "earliestValidTime":J
    sub-int v4, v3, v15

    invoke-virtual {v11, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 167
    .local v4, "luxA":F
    iget-object v5, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    sub-int v11, v3, v15

    const/16 v21, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v5

    .line 168
    .local v5, "luxB":F
    sub-float v11, v4, v5

    .line 170
    .local v11, "gap":F
    move/from16 v24, v5

    .end local v5    # "luxB":F
    .local v24, "luxB":F
    neg-float v5, v12

    const/high16 v25, 0x40000000    # 2.0f

    div-float v5, v5, v25

    cmpl-float v5, v11, v5

    if-lez v5, :cond_a

    sub-float v5, v4, v14

    move/from16 v25, v4

    .end local v4    # "luxA":F
    .local v25, "luxA":F
    iget-object v4, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mMaxFactor:[I

    add-int/lit8 v26, v15, -0x1

    aget v4, v4, v26

    int-to-float v4, v4

    mul-float/2addr v4, v12

    cmpl-float v4, v5, v4

    if-lez v4, :cond_c

    .line 171
    nop

    .end local v11    # "gap":F
    .end local v24    # "luxB":F
    .end local v25    # "luxA":F
    add-int/lit8 v7, v7, 0x1

    .line 165
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v4, v22

    goto :goto_1

    .line 170
    .restart local v4    # "luxA":F
    .restart local v11    # "gap":F
    .restart local v24    # "luxB":F
    :cond_a
    move/from16 v25, v4

    .end local v4    # "luxA":F
    .restart local v25    # "luxA":F
    goto :goto_2

    .line 165
    .end local v11    # "gap":F
    .end local v22    # "earliestValidTime":J
    .end local v24    # "luxB":F
    .end local v25    # "luxA":F
    .local v4, "earliestValidTime":J
    :cond_b
    move-wide/from16 v22, v4

    .line 177
    .end local v4    # "earliestValidTime":J
    .end local v15    # "j":I
    .restart local v22    # "earliestValidTime":J
    :cond_c
    :goto_2
    const/4 v4, 0x0

    .line 178
    .local v4, "minCount":I
    const/16 v5, 0x32

    if-le v3, v5, :cond_d

    const/16 v20, 0x14

    goto :goto_3

    :cond_d
    const/16 v20, 0x5

    :goto_3
    move/from16 v5, v20

    .line 179
    .local v5, "m":I
    const/16 v11, 0x9

    if-ne v7, v11, :cond_10

    .line 180
    add-int/lit8 v11, v3, -0xa

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    .line 181
    .local v11, "i":I
    div-float v12, v12, v19

    .line 182
    const/4 v15, 0x1

    .restart local v15    # "j":I
    :goto_4
    move/from16 v20, v7

    .end local v7    # "maxCount":I
    .local v20, "maxCount":I
    add-int/lit8 v7, v5, 0x1

    if-ge v15, v7, :cond_e

    .line 183
    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move/from16 v24, v8

    .end local v8    # "delta":F
    .local v24, "delta":F
    sub-int v8, v11, v15

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    iget-object v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    sub-int v25, v11, v15

    move-wide/from16 v26, v9

    const/16 v21, 0x1

    .end local v9    # "duration":J
    .local v26, "duration":J
    add-int/lit8 v9, v25, -0x1

    invoke-virtual {v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v8

    sub-float/2addr v7, v8

    .line 185
    .local v7, "gap":F
    cmpg-float v8, v7, v12

    if-gez v8, :cond_f

    neg-float v8, v12

    cmpl-float v8, v7, v8

    if-lez v8, :cond_f

    .line 186
    nop

    .end local v7    # "gap":F
    add-int/lit8 v4, v4, 0x1

    .line 182
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v20

    move/from16 v8, v24

    move-wide/from16 v9, v26

    goto :goto_4

    .end local v24    # "delta":F
    .end local v26    # "duration":J
    .restart local v8    # "delta":F
    .restart local v9    # "duration":J
    :cond_e
    move/from16 v24, v8

    move-wide/from16 v26, v9

    .line 191
    .end local v8    # "delta":F
    .end local v9    # "duration":J
    .end local v15    # "j":I
    .restart local v24    # "delta":F
    .restart local v26    # "duration":J
    :cond_f
    if-ne v4, v5, :cond_12

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slop changing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mFastAmbientLux:F

    return v7

    .line 179
    .end local v11    # "i":I
    .end local v20    # "maxCount":I
    .end local v24    # "delta":F
    .end local v26    # "duration":J
    .local v7, "maxCount":I
    .restart local v8    # "delta":F
    .restart local v9    # "duration":J
    :cond_10
    move/from16 v20, v7

    move/from16 v24, v8

    move-wide/from16 v26, v9

    .end local v7    # "maxCount":I
    .end local v8    # "delta":F
    .end local v9    # "duration":J
    .restart local v20    # "maxCount":I
    .restart local v24    # "delta":F
    .restart local v26    # "duration":J
    goto :goto_5

    .line 162
    .end local v5    # "m":I
    .end local v14    # "luxOfPointOfInfection":F
    .end local v20    # "maxCount":I
    .end local v22    # "earliestValidTime":J
    .end local v24    # "delta":F
    .end local v26    # "duration":J
    .local v4, "earliestValidTime":J
    .restart local v8    # "delta":F
    .restart local v9    # "duration":J
    :cond_11
    move-wide/from16 v22, v4

    move/from16 v24, v8

    move-wide/from16 v26, v9

    .line 198
    .end local v4    # "earliestValidTime":J
    .end local v8    # "delta":F
    .end local v9    # "duration":J
    .restart local v22    # "earliestValidTime":J
    .restart local v24    # "delta":F
    .restart local v26    # "duration":J
    :cond_12
    :goto_5
    iget-boolean v4, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mIs18865N19801:Z

    if-eqz v4, :cond_16

    iget v4, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v4, v4, v19

    if-gez v4, :cond_16

    iget v4, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    .line 199
    add-int/lit8 v4, v3, -0x2

    .local v4, "i":I
    :goto_6
    const/4 v5, 0x1

    if-lt v4, v5, :cond_15

    .line 200
    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    iget-object v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_14

    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    cmpg-float v7, v7, v19

    if-gez v7, :cond_13

    goto :goto_7

    .line 199
    :cond_13
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 201
    :cond_14
    :goto_7
    iget-object v5, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v7

    .line 202
    .end local v22    # "earliestValidTime":J
    .local v7, "earliestValidTime":J
    move-wide v4, v7

    goto :goto_8

    .line 199
    .end local v7    # "earliestValidTime":J
    .restart local v22    # "earliestValidTime":J
    :cond_15
    move-wide/from16 v4, v22

    .line 205
    .end local v22    # "earliestValidTime":J
    .local v4, "earliestValidTime":J
    :goto_8
    sub-long v7, v1, v4

    const-wide/16 v9, 0x320

    cmp-long v7, v7, v9

    if-lez v7, :cond_17

    const/4 v7, 0x5

    if-le v3, v7, :cond_17

    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v8, v3, -0x2

    .line 206
    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    const/high16 v8, 0x42200000    # 40.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_17

    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v8, v3, -0x3

    .line 207
    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_17

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/high16 v7, 0x41000000    # 8.0f

    return v7

    .line 214
    .end local v4    # "earliestValidTime":J
    .restart local v22    # "earliestValidTime":J
    :cond_16
    move-wide/from16 v4, v22

    .end local v22    # "earliestValidTime":J
    .restart local v4    # "earliestValidTime":J
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/OpAmbientLuxDetecter;->useScreenShotAlgo()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 215
    const v7, 0x44bb8000    # 1500.0f

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mCurrentBrightness:F

    mul-float/2addr v8, v7

    .line 216
    .local v8, "backlightCompensate":F
    cmpl-float v7, v6, v8

    if-lez v7, :cond_18

    move v7, v6

    goto :goto_9

    :cond_18
    move v7, v8

    :goto_9
    move v6, v7

    .line 217
    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v9, v6, v7

    if-lez v9, :cond_19

    move v7, v6

    goto :goto_a

    :cond_19
    const/high16 v7, 0x43fa0000    # 500.0f

    :goto_a
    move v6, v7

    .line 218
    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    add-float/2addr v7, v6

    .line 219
    .end local v8    # "backlightCompensate":F
    .local v7, "brightenThreshold":F
    goto :goto_c

    .line 220
    .end local v7    # "brightenThreshold":F
    :cond_1a
    const/high16 v7, 0x447a0000    # 1000.0f

    cmpl-float v8, v6, v7

    if-lez v8, :cond_1b

    move v7, v6

    goto :goto_b

    :cond_1b
    const/high16 v7, 0x447a0000    # 1000.0f

    :goto_b
    move v6, v7

    .line 221
    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    add-float/2addr v7, v6

    .line 224
    .restart local v7    # "brightenThreshold":F
    :goto_c
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v9, 0x43fa0000    # 500.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1c

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v9, 0x447a0000    # 1000.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1c

    .line 225
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 226
    :cond_1c
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v8, v8, v17

    const/high16 v9, 0x437a0000    # 250.0f

    if-gez v8, :cond_1d

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1d

    .line 227
    const/high16 v7, 0x437a0000    # 250.0f

    .line 228
    :cond_1d
    iget-boolean v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mIs18865N19801:Z

    if-eqz v8, :cond_21

    .line 229
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1e

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v10, 0x43160000    # 150.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_1e

    .line 230
    const/high16 v7, 0x43160000    # 150.0f

    .line 231
    const-wide/16 v10, 0x5dc

    move-wide/from16 v26, v10

    .line 233
    :cond_1e
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v8, v8, v19

    if-gez v8, :cond_1f

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v10, 0x43480000    # 200.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_1f

    .line 234
    const/high16 v7, 0x43480000    # 200.0f

    .line 235
    const-wide/16 v10, 0x5dc

    move-wide/from16 v26, v10

    .line 237
    :cond_1f
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v10, 0x40a00000    # 5.0f

    cmpg-float v8, v8, v10

    if-gez v8, :cond_20

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_20

    .line 238
    const/high16 v7, 0x437a0000    # 250.0f

    .line 239
    const-wide/16 v9, 0x5dc

    .end local v26    # "duration":J
    .restart local v9    # "duration":J
    goto :goto_d

    .line 244
    .end local v9    # "duration":J
    .restart local v26    # "duration":J
    :cond_20
    move-wide/from16 v9, v26

    goto :goto_d

    .line 228
    :cond_21
    move-wide/from16 v9, v26

    .line 244
    .end local v26    # "duration":J
    .restart local v9    # "duration":J
    :goto_d
    add-int/lit8 v8, v3, -0x1

    .local v8, "i":I
    :goto_e
    if-ltz v8, :cond_23

    .line 245
    iget-object v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v11, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    cmpg-float v11, v11, v7

    if-gtz v11, :cond_22

    .line 246
    goto :goto_f

    .line 248
    :cond_22
    iget-object v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v11, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    .line 244
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 250
    .end local v8    # "i":I
    :cond_23
    :goto_f
    iget-boolean v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLoggingEnabled:Z

    if-eqz v8, :cond_24

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "nextFastBrighteningTransition: mAmbientLux = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", brightenThreshold = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", earliestValidTime = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", time = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_24
    add-long v13, v4, v9

    cmp-long v8, v13, v1

    if-gez v8, :cond_25

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    move/from16 v16, v8

    goto :goto_10

    :cond_25
    const/high16 v16, -0x40800000    # -1.0f

    :goto_10
    return v16
.end method

.method public nextFastDarkeningTransition(J)F
    .locals 11
    .param p1, "time"    # J

    .line 90
    iget-object v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 91
    .local v0, "N":I
    iget v1, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    iget v2, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    sub-float/2addr v1, v2

    .line 92
    .local v1, "delta":F
    const/4 v3, 0x0

    .line 93
    .local v3, "ambientLux":F
    const/high16 v4, 0x45fa0000    # 8000.0f

    cmpl-float v5, v1, v4

    const/high16 v6, -0x40800000    # -1.0f

    if-lez v5, :cond_2

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    const/16 v2, 0x1e

    if-le v0, v2, :cond_2

    .line 94
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x6

    if-ge v2, v7, :cond_1

    .line 95
    iget-object v7, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    sub-int v8, v0, v2

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    .line 96
    .local v7, "luxA":F
    iget-object v8, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    sub-int v9, v0, v2

    add-int/lit8 v9, v9, -0xa

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v8

    .line 97
    .local v8, "luxB":F
    sub-float v9, v8, v7

    .line 98
    .local v9, "gap":F
    add-float/2addr v3, v7

    .line 99
    cmpg-float v10, v7, v5

    if-gez v10, :cond_0

    cmpl-float v10, v9, v4

    if-lez v10, :cond_0

    .line 100
    nop

    .line 94
    .end local v7    # "luxA":F
    .end local v8    # "luxB":F
    .end local v9    # "gap":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .restart local v7    # "luxA":F
    .restart local v8    # "luxB":F
    .restart local v9    # "gap":F
    :cond_0
    return v6

    .line 104
    .end local v2    # "i":I
    .end local v7    # "luxA":F
    .end local v8    # "luxB":F
    .end local v9    # "gap":F
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fast darkening:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OpAmbientLuxDetecter"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/high16 v2, 0x40a00000    # 5.0f

    div-float v2, v3, v2

    return v2

    .line 107
    :cond_2
    return v6
.end method

.method public setCurrentInfo(Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;FFFFF)V
    .locals 0
    .param p1, "ambientLightRingBuffer"    # Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
    .param p2, "ambientLux"    # F
    .param p3, "lastObservedLux"    # F
    .param p4, "fastAmbientLux"    # F
    .param p5, "currentBrightness"    # F
    .param p6, "ambientBrighteningThreshold"    # F

    .line 59
    iput-object p1, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 60
    iput p2, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    .line 61
    iput p3, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    .line 62
    iput p4, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mFastAmbientLux:F

    .line 63
    iput p5, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mCurrentBrightness:F

    .line 64
    iput p6, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientBrighteningThreshold:F

    .line 65
    return-void
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 49
    iget-boolean v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLoggingEnabled:Z

    .line 53
    const/4 v0, 0x1

    return v0
.end method
