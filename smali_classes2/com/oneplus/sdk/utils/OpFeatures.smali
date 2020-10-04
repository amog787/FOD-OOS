.class public Lcom/oneplus/sdk/utils/OpFeatures;
.super Ljava/lang/Object;
.source "OpFeatures.java"


# static fields
.field public static final OP_FEATURE_AUTO_STARTUP:I = 0x4

.field public static final OP_FEATURE_BACK_COVER_THEME:I = 0x9

.field public static final OP_FEATURE_BG_DETECTION:I = 0xe

.field private static final OP_FEATURE_BIT_BASE:I = 0x0

.field private static final OP_FEATURE_BIT_END:I = 0x14

.field public static final OP_FEATURE_BLACK_GESTURE:I = 0x11

.field public static final OP_FEATURE_BUGREPORT:I = 0x3

.field public static final OP_FEATURE_CTA_PERMISSION_CONTROL:I = 0xc

.field public static final OP_FEATURE_EXT_AUDIO_DECODER:I = 0x13

.field public static final OP_FEATURE_GESTURE_SCREENSHOT:I = 0xd

.field public static final OP_FEATURE_KEY_LOCK:I = 0xb

.field public static final OP_FEATURE_MDM:I = 0x2

.field public static final OP_FEATURE_MMS_NOTI_SOUND:I = 0x6

.field public static final OP_FEATURE_MULTI_SIM_RINGTONES:I = 0x7

.field public static final OP_FEATURE_OP_KEYGUARD:I = 0x5

.field public static final OP_FEATURE_POST_INSTALL_AMAZON_APPS:I = 0x14

.field public static final OP_FEATURE_RESERVE_APP:I = 0x12

.field public static final OP_FEATURE_RINGTONE_ALIAS:I = 0xf

.field public static final OP_FEATURE_RINGTONE_BKP:I = 0x10

.field public static final OP_FEATURE_SKU_CHINA:I = 0x0

.field public static final OP_FEATURE_SKU_GLOBAL:I = 0x1

.field public static final OP_FEATURE_SWAP_KEYS:I = 0x8

.field public static final OP_FEATURE_TRI_STATE_KEY:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs isSupport([I)Z
    .locals 6
    .param p0, "features"    # [I

    .line 127
    const/4 v0, 0x1

    .line 129
    .local v0, "result":Z
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "result":Z
    .local v3, "result":Z
    :goto_0
    if-ge v0, v1, :cond_2

    aget v4, p0, v0

    .line 131
    .local v4, "feature":I
    if-ltz v4, :cond_1

    const/16 v5, 0x14

    if-gt v4, v5, :cond_1

    .line 134
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [I

    aput v4, v5, v2

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 135
    const/4 v3, 0x0

    .line 141
    :cond_0
    nop

    .line 129
    .end local v4    # "feature":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .restart local v4    # "feature":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid required OP feature id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "result":Z
    .end local v4    # "feature":I
    .end local p0    # "features":[I
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .restart local v3    # "result":Z
    .restart local v4    # "feature":I
    .restart local p0    # "features":[I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 139
    const/4 v3, 0x0

    .line 140
    nop

    .line 143
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "feature":I
    :cond_2
    return v3
.end method
