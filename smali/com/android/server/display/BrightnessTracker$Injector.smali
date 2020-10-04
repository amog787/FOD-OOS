.class Lcom/android/server/display/BrightnessTracker$Injector;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelIdleJob(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 1091
    invoke-static {p1}, Lcom/android/server/display/BrightnessIdleJob;->cancelJob(Landroid/content/Context;)V

    .line 1092
    return-void
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtimeNanos()J
    .locals 2

    .line 1063
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public enableColorSampling(ZI)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "noFrames"    # I

    .line 1128
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1129
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1130
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    move-result v1

    return v1
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    .line 1040
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 1055
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getFocusedStack()Landroid/app/ActivityManager$StackInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFrameRate(Landroid/content/Context;)F
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1115
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1116
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1117
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    return v2
.end method

.method public getNightDisplayColorTemperature(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1099
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    .line 1100
    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result v0

    .line 1099
    return v0
.end method

.method public getProfileIds(Landroid/os/UserManager;I)[I
    .locals 2
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 1075
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1076
    invoke-virtual {p1, p2, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0

    .line 1078
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p2, v1, v0

    return-object v1
.end method

.method public getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 2

    .line 1121
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1122
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1123
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v1

    return-object v1
.end method

.method public getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "userId"    # I

    .line 1051
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getUserId(Landroid/os/UserManager;I)I
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userSerialNumber"    # I

    .line 1071
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v0

    return v0
.end method

.method public getUserSerialNumber(Landroid/os/UserManager;I)I
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 1067
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    return v0
.end method

.method public isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 1044
    const/4 v0, 0x0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1095
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public isNightDisplayActivated(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1104
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    return v0
.end method

.method public registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "settingsObserver"    # Landroid/database/ContentObserver;

    .line 1019
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1022
    return-void
.end method

.method public registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1136
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1137
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p2, p3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1138
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    .line 1031
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1032
    return-void
.end method

.method public registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorListener"    # Landroid/hardware/SensorEventListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1006
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1007
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1008
    .local v1, "lightSensor":Landroid/hardware/Sensor;
    const/4 v2, 0x3

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1010
    return-void
.end method

.method public sampleColor(I)Landroid/hardware/display/DisplayedContentSample;
    .locals 7
    .param p1, "noFramesToSample"    # I

    .line 1108
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1109
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1110
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    int-to-long v3, p1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v1

    return-object v1
.end method

.method public scheduleIdleJob(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 1087
    invoke-static {p1}, Lcom/android/server/display/BrightnessIdleJob;->scheduleJob(Landroid/content/Context;)V

    .line 1088
    return-void
.end method

.method public unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1142
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1143
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1144
    return-void
.end method

.method public unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsObserver"    # Landroid/database/ContentObserver;

    .line 1026
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1027
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 1036
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1037
    return-void
.end method

.method public unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorListener"    # Landroid/hardware/SensorEventListener;

    .line 1013
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1014
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1015
    return-void
.end method
