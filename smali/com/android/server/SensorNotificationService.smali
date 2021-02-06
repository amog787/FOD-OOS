.class public Lcom/android/server/SensorNotificationService;
.super Lcom/android/server/SystemService;
.source "SensorNotificationService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "SensorNotificationService"

.field private static final DBG:Z = false

.field private static final KM_IN_M:J = 0x3e8L

.field private static final LOCATION_MIN_DISTANCE:J = 0x186a0L

.field private static final LOCATION_MIN_TIME:J = 0x1b7740L

.field private static final MILLIS_2010_1_1:J = 0x125ea667180L

.field private static final MINUTE_IN_MS:J = 0xea60L

.field private static final PROPERTY_USE_MOCKED_LOCATION:Ljava/lang/String; = "sensor.notification.use_mocked"

.field private static final TAG:Ljava/lang/String; = "SensorNotificationService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalGeomagneticFieldUpdateTime:J

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMetaSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const-string v0, "SensorNotificationService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    .line 63
    invoke-virtual {p0}, Lcom/android/server/SensorNotificationService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private broadcastDynamicSensorChanged()V
    .locals 3

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 103
    return-void
.end method

.method private useMockedLocation()Z
    .locals 2

    .line 168
    const-string/jumbo v0, "sensor.notification.use_mocked"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 159
    return-void
.end method

.method public onBootPhase(I)V
    .locals 7
    .param p1, "phase"    # I

    .line 71
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 73
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    .line 74
    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    :cond_1
    :goto_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    .line 86
    if-nez v1, :cond_2

    goto :goto_1

    .line 89
    :cond_2
    const-wide/32 v3, 0x1b7740

    const v5, 0x47c35000    # 100000.0f

    const-string/jumbo v2, "passive"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 96
    :cond_3
    :goto_1
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 13
    .param p1, "location"    # Landroid/location/Location;

    .line 121
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 126
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 127
    return-void

    .line 130
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 133
    .local v7, "time":J
    invoke-direct {p0}, Lcom/android/server/SensorNotificationService;->useMockedLocation()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eq v0, v1, :cond_4

    const-wide v0, 0x125ea667180L

    cmp-long v0, v7, v0

    if-gez v0, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 138
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v2, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 139
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v1, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 145
    .local v0, "field":Landroid/hardware/GeomagneticField;
    nop

    .line 146
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getFieldStrength()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 147
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v9

    double-to-float v2, v2

    .line 148
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getInclination()F

    move-result v3

    float-to-double v11, v3

    mul-double/2addr v11, v4

    div-double/2addr v11, v9

    double-to-float v3, v11

    .line 145
    invoke-static {v1, v2, v3}, Landroid/hardware/SensorAdditionalInfo;->createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v1

    .line 149
    .local v1, "info":Landroid/hardware/SensorAdditionalInfo;
    if-eqz v1, :cond_3

    .line 150
    iget-object v2, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_3
    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SensorNotificationService"

    const-string v3, "Invalid local geomagnetic field, ignore."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 134
    .end local v0    # "field":Landroid/hardware/GeomagneticField;
    :cond_4
    :goto_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 165
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 163
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 107
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/server/SensorNotificationService;->broadcastDynamicSensorChanged()V

    .line 110
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 67
    const-class v0, Lcom/android/server/SensorNotificationService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 161
    return-void
.end method
