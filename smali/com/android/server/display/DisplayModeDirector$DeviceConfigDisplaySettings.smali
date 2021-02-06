.class Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceConfigDisplaySettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1491
    return-void
.end method

.method private getIntArrayProperty(Ljava/lang/String;)[I
    .locals 2
    .param p1, "prop"    # Ljava/lang/String;

    .line 1559
    const-string v0, "display_manager"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "strArray":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1563
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1

    .line 1566
    :cond_0
    return-object v1
.end method

.method private parseIntArray(Ljava/lang/String;)[I
    .locals 5
    .param p1, "strArray"    # Ljava/lang/String;

    .line 1570
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, "items":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 1574
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1575
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1580
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 1577
    :catch_0
    move-exception v2

    .line 1578
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect format for array: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayModeDirector"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    const/4 v1, 0x0

    .line 1582
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getAmbientThresholds()[I
    .locals 1

    .line 1511
    const-string/jumbo v0, "peak_refresh_rate_ambient_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessThresholds()[I
    .locals 1

    .line 1502
    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPeakRefreshRate()Ljava/lang/Float;
    .locals 3

    .line 1520
    const-string v0, "display_manager"

    const-string/jumbo v1, "peak_refresh_rate_default"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 1524
    .local v0, "defaultPeakRefreshRate":F
    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    .line 1525
    const/4 v1, 0x0

    return-object v1

    .line 1527
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getRefreshRateInZone()I
    .locals 3

    .line 1531
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2000(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1534
    .local v0, "defaultRefreshRateInZone":I
    const-string v1, "display_manager"

    const-string/jumbo v2, "refresh_rate_in_zone"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1539
    .local v1, "refreshRate":I
    return v1
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getBrightnessThresholds()[I

    move-result-object v0

    .line 1545
    .local v0, "brightnessThresholds":[I
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getAmbientThresholds()[I

    move-result-object v1

    .line 1546
    .local v1, "ambientThresholds":[I
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v2

    .line 1547
    .local v2, "defaultPeakRefreshRate":Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInZone()I

    move-result v3

    .line 1549
    .local v3, "refreshRateInZone":I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1551
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1552
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1553
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1554
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1555
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1556
    return-void
.end method

.method public startListening()V
    .locals 2

    .line 1494
    nop

    .line 1495
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1494
    const-string v1, "display_manager"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1496
    return-void
.end method
