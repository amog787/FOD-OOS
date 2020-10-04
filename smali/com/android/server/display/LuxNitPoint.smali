.class Lcom/android/server/display/LuxNitPoint;
.super Ljava/lang/Object;
.source "CurveGen.java"


# instance fields
.field lux:F

.field nit:F


# direct methods
.method constructor <init>(FF)V
    .locals 0
    .param p1, "lux"    # F
    .param p2, "nit"    # F

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p1, p0, Lcom/android/server/display/LuxNitPoint;->lux:F

    .line 450
    iput p2, p0, Lcom/android/server/display/LuxNitPoint;->nit:F

    .line 451
    return-void
.end method


# virtual methods
.method copy()Lcom/android/server/display/LuxNitPoint;
    .locals 3

    .line 454
    new-instance v0, Lcom/android/server/display/LuxNitPoint;

    iget v1, p0, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v2, p0, Lcom/android/server/display/LuxNitPoint;->nit:F

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    return-object v0
.end method

.method fromJsonObject(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .line 471
    :try_start_0
    const-string/jumbo v0, "lux"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/LuxNitPoint;->lux:F

    .line 472
    const-string/jumbo v0, "nit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/LuxNitPoint;->nit:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    const/4 v0, 0x1

    return v0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 476
    const/4 v1, 0x0

    return v1
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 459
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 460
    .local v0, "ret":Lorg/json/JSONObject;
    const-string/jumbo v1, "lux"

    iget v2, p0, Lcom/android/server/display/LuxNitPoint;->lux:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 461
    const-string/jumbo v1, "nit"

    iget v2, p0, Lcom/android/server/display/LuxNitPoint;->nit:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    return-object v0

    .line 463
    .end local v0    # "ret":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 465
    const/4 v1, 0x0

    return-object v1
.end method
