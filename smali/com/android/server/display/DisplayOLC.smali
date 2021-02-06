.class final Lcom/android/server/display/DisplayOLC;
.super Ljava/lang/Object;
.source "DisplayOLC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;
    }
.end annotation


# static fields
.field public static HBM_THRESHOLD:[I = null

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final PROJ_NAME:Ljava/lang/String; = "DisplayOLC"

.field private static final TAG:Ljava/lang/String; = "DisplayOLC"

.field static mEnableDarkThemeLimit:Z

.field private static mLimitPercent:D

.field private static mMinDarkThemeLevel:F

.field private static mOpMinBrightnessLevel:F


# instance fields
.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mContext:Landroid/content/Context;

.field private mMinDarkThemeNit:F

.field private mOnlineConfigHandler:Landroid/os/Handler;

.field private mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOpMinBrightnessNit:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-wide v0, 0x3fe999999999999aL    # 0.8

    sput-wide v0, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    .line 30
    sput v0, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeLevel:F

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayOLC;->mEnableDarkThemeLimit:Z

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    return-void

    :array_0
    .array-data 4
        0x4e20
        0x7530
        0x9c40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bms"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 24
    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    .line 25
    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    .line 29
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeNit:F

    .line 38
    iput-object p1, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 40
    invoke-direct {p0}, Lcom/android/server/display/DisplayOLC;->initOnlineConfig()Z

    .line 41
    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_0

    .line 42
    iget v2, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    sput v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    .line 43
    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v2, p0, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeNit:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    sput v1, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeLevel:F

    .line 45
    :cond_0
    sget v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_1

    move v0, v1

    :cond_1
    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOpMinBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mOpMinBrightnessLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDarkThemeNit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDarkThemeLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayOLC"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayOLC;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayOLC;

    .line 19
    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayOLC;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayOLC;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayOLC;->parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static enableDarkThemeLimit(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 68
    sput-boolean p0, Lcom/android/server/display/DisplayOLC;->mEnableDarkThemeLimit:Z

    .line 69
    return-void
.end method

.method private handleConfigChangeEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .line 128
    const-string v0, "DisplayOLC"

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "HBMThreshold"

    const-string v5, "UseCurveGenAlgo"

    const-string v6, "MiniBrightness"

    const-string v7, "MiniPercent"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v8

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v9

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v10

    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v10, :cond_5

    if-eq v1, v8, :cond_3

    if-eq v1, v9, :cond_1

    goto/16 :goto_3

    .line 147
    :cond_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 148
    .local v1, "enable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UseCurveGenAlgo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "use_curve_gen_algo"

    if-eqz v1, :cond_2

    move v3, v10

    :cond_2
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    goto/16 :goto_3

    .line 140
    .end local v1    # "enable":Z
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 141
    .local v1, "hbmThresholdDeltaArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_4

    .line 142
    sget-object v3, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HBM_THRESHOLD["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    .end local v2    # "i":I
    :cond_4
    goto/16 :goto_3

    .line 136
    .end local v1    # "hbmThresholdDeltaArray":Lorg/json/JSONArray;
    :cond_5
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    sput-wide v1, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLimitPercent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_3

    .line 130
    :cond_6
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    .line 131
    iget-object v2, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    sput v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    .line 132
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    sput v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOpMinBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    goto :goto_3

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig]  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_3
    nop

    .line 159
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7992c032 -> :sswitch_3
        -0x3ef647d8 -> :sswitch_2
        -0xf572f25 -> :sswitch_1
        0x2257a318 -> :sswitch_0
    .end sparse-switch
.end method

.method private initOnlineConfig()Z
    .locals 5

    .line 72
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;-><init>(Lcom/android/server/display/DisplayOLC;)V

    const-string v4, "DisplayOLC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 73
    if-nez v0, :cond_0

    .line 74
    const-string v0, "OLC Observer is null"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Brightness_OLC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    .line 78
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Lcom/android/server/display/DisplayOLC$1;

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayOLC$1;-><init>(Lcom/android/server/display/DisplayOLC;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 98
    const-string v0, "OLC init DONE!"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public static limitPercent(D)D
    .locals 3
    .param p0, "p"    # D

    .line 50
    sget-wide v0, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 51
    sget-wide p0, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "limitPercent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayOLC"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-wide p0
.end method

.method public static limitTarget(F)F
    .locals 3
    .param p0, "target"    # F

    .line 57
    sget v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    sget-boolean v1, Lcom/android/server/display/DisplayOLC;->mEnableDarkThemeLimit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeLevel:F

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 58
    .local v0, "minBrightnessLevel":F
    cmpl-float v1, p0, v2

    if-nez v1, :cond_1

    .line 59
    return p0

    .line 60
    :cond_1
    cmpl-float v1, v0, p0

    if-lez v1, :cond_2

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOBE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayOLC"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v0

    .line 64
    :cond_2
    return p0
.end method

.method private parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 103
    const-string v0, "DisplayOLC"

    if-nez p1, :cond_0

    .line 104
    const-string v1, "OLC is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 110
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 112
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 113
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/server/display/DisplayOLC;->handleConfigChangeEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_1

    .line 109
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "iterator":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "index":I
    :cond_2
    goto :goto_2

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig]  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 120
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 124
    :goto_3
    return-void
.end method
