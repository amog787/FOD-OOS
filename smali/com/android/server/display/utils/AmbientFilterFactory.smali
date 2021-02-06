.class public Lcom/android/server/display/utils/AmbientFilterFactory;
.super Ljava/lang/Object;
.source "AmbientFilterFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAmbientFilter(Ljava/lang/String;IF)Lcom/android/server/display/utils/AmbientFilter;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "horizon"    # I
    .param p2, "intercept"    # F

    .line 43
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;-><init>(Ljava/lang/String;IF)V

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing configurations: expected config_displayWhiteBalanceBrightnessFilterIntercept"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 61
    const v0, 0x10e0049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 63
    .local v0, "horizon":I
    const v1, 0x10500a1

    invoke-static {p1, v1}, Lcom/android/server/display/utils/AmbientFilterFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    .line 66
    .local v1, "intercept":F
    invoke-static {p0, v0, v1}, Lcom/android/server/display/utils/AmbientFilterFactory;->createAmbientFilter(Ljava/lang/String;IF)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    return-object v2
.end method

.method public static createColorTemperatureFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 81
    const v0, 0x10e004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 84
    .local v0, "horizon":I
    const v1, 0x10500a2

    invoke-static {p1, v1}, Lcom/android/server/display/utils/AmbientFilterFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    .line 88
    .local v1, "intercept":F
    invoke-static {p0, v0, v1}, Lcom/android/server/display/utils/AmbientFilterFactory;->createAmbientFilter(Ljava/lang/String;IF)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    return-object v2
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 95
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 97
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 98
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 99
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method
