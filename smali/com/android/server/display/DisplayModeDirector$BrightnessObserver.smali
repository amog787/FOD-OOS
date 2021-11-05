.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    }
.end annotation


# static fields
.field private static final LIGHT_SENSOR_RATE_MS:I = 0xfa


# instance fields
.field private mAmbientBrightnessThresholds:[I

.field private mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private mAmbientLux:F

.field private final mContext:Landroid/content/Context;

.field private final mDisplayBrightnessSetting:Landroid/net/Uri;

.field private mDisplayBrightnessThresholds:[I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field private mLowPowerModeEnabled:Z

.field private mRefreshRateChangeable:Z

.field private mRefreshRateInZone:I

.field private mScreenOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldObserveAmbientChange:Z

.field private mShouldObserveDisplayChange:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1282
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 1283
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1255
    nop

    .line 1256
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessSetting:Landroid/net/Uri;

    .line 1266
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 1268
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 1276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    .line 1277
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1278
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1284
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 1285
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1287
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 1290
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_0

    .line 1294
    return-void

    .line 1291
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "display brightness threshold array and ambient brightness threshold array have different length"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1253
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .param p1, "x1"    # F

    .line 1253
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1253
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1253
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1253
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    return-object v0
.end method

.method private checkShouldObserve([I)Z
    .locals 4
    .param p1, "a"    # [I

    .line 1447
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 1448
    return v1

    .line 1451
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 1452
    .local v3, "d":I
    if-ltz v3, :cond_1

    .line 1453
    const/4 v0, 0x1

    return v0

    .line 1451
    .end local v3    # "d":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1457
    :cond_2
    return v1
.end method

.method private isDefaultDisplayOn()Z
    .locals 5

    .line 1523
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1524
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1525
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    .line 1526
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    nop

    .line 1525
    :goto_0
    return v1
.end method

.method private isInsideZone(IF)Z
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "lux"    # F

    .line 1461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 1462
    aget v1, v1, v0

    .line 1463
    .local v1, "disp":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    aget v2, v2, v0

    .line 1465
    .local v2, "ambi":I
    const/4 v3, 0x1

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    .line 1466
    if-gt p1, v1, :cond_2

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 1467
    return v3

    .line 1469
    :cond_0
    if-ltz v1, :cond_1

    .line 1470
    if-gt p1, v1, :cond_2

    .line 1471
    return v3

    .line 1473
    :cond_1
    if-ltz v2, :cond_2

    .line 1474
    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 1475
    return v3

    .line 1461
    .end local v1    # "disp":I
    .end local v2    # "ambi":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1480
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private onBrightnessChangedLocked()V
    .locals 5

    .line 1484
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1487
    .local v0, "brightness":I
    const/4 v1, 0x0

    .line 1488
    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideZone(IF)Z

    move-result v2

    .line 1489
    .local v2, "insideZone":Z
    if-eqz v2, :cond_0

    .line 1490
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-static {v4, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 1494
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display brightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ambient lux "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", Vote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayModeDirector"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1498
    return-void
.end method

.method private onScreenOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 1501
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    if-eq v0, p1, :cond_0

    .line 1502
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    .line 1503
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1505
    :cond_0
    return-void
.end method

.method private restartObserver()V
    .locals 8

    .line 1386
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkShouldObserve([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayChange:Z

    .line 1387
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkShouldObserve([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    .line 1389
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1390
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayChange:Z

    if-eqz v1, :cond_0

    .line 1393
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1394
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 1397
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1400
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    if-eqz v1, :cond_5

    .line 1401
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1402
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x1040216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1405
    .local v2, "lightSensorType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1406
    .local v3, "lightSensor":Landroid/hardware/Sensor;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1407
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    .line 1408
    .local v4, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1409
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    .line 1410
    .local v6, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1411
    move-object v3, v6

    .line 1412
    goto :goto_2

    .line 1408
    .end local v6    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1417
    .end local v4    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v5    # "i":I
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 1418
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 1421
    :cond_3
    if-eqz v3, :cond_4

    .line 1422
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1424
    .local v4, "res":Landroid/content/res/Resources;
    const-string v5, "DisplayModeDirector"

    invoke-static {v5, v4}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 1425
    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 1427
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDefaultDisplayOn()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onScreenOn(Z)V

    .line 1429
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "lightSensorType":Ljava/lang/String;
    .end local v3    # "lightSensor":Landroid/hardware/Sensor;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_4
    goto :goto_3

    .line 1430
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 1431
    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 1434
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v1, :cond_6

    .line 1435
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1436
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1437
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 1438
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1440
    :cond_6
    :goto_4
    return-void
.end method

.method private updateSensorStatus()V
    .locals 5

    .line 1508
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1512
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v2, :cond_1

    .line 1514
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x3d090

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 1515
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    .line 1514
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1517
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 1518
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1520
    :goto_0
    return-void

    .line 1509
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1357
    const-string v0, "  BrightnessObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 1362
    .local v4, "d":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    .end local v4    # "d":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1366
    .local v3, "d":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientBrightnessThreshold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    .end local v3    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1370
    return-void
.end method

.method public observe(Landroid/hardware/SensorManager;)V
    .locals 4
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 1297
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1300
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getBrightnessThresholds()[I

    move-result-object v0

    .line 1301
    .local v0, "brightnessThresholds":[I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getAmbientThresholds()[I

    move-result-object v1

    .line 1303
    .local v1, "ambientThresholds":[I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 1305
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1306
    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 1309
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInZone()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    .line 1310
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1311
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    .line 1312
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1380
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1381
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 1382
    monitor-exit v0

    .line 1383
    return-void

    .line 1382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDeviceConfigRefreshRateInZoneChanged(I)V
    .locals 1
    .param p1, "refreshRate"    # I

    .line 1350
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    if-eq p1, v0, :cond_0

    .line 1351
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    .line 1352
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1354
    :cond_0
    return-void
.end method

.method public onDeviceConfigThresholdsChanged([I[I)V
    .locals 2
    .param p1, "brightnessThresholds"    # [I
    .param p2, "ambientThresholds"    # [I

    .line 1335
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 1337
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1338
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    goto :goto_0

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1343
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 1346
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1347
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 1373
    if-nez p1, :cond_0

    .line 1374
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDefaultDisplayOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onScreenOn(Z)V

    .line 1376
    :cond_0
    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 1327
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1328
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1329
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1331
    :cond_0
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .locals 4
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 1315
    sub-float v0, p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1316
    .local v0, "changeable":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eq v2, v0, :cond_1

    .line 1317
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1318
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1319
    if-nez v0, :cond_1

    .line 1321
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1324
    :cond_1
    return-void
.end method
