.class public interface abstract Lcom/android/server/IOpAggressiveDoze;
.super Ljava/lang/Object;
.source "IOpAggressiveDoze.java"


# static fields
.field public static final POLICY_AGGRESSIVE:I = 0x1

.field public static final POLICY_DEFAULT:I = 0x0

.field public static final POLICY_MAX:I = 0x2


# virtual methods
.method public abstract anyMotionResultOverride(I)I
.end method

.method public abstract clearGpsUids()V
.end method

.method public abstract clearWhitelistUid()V
.end method

.method public abstract getStopGpsState()Z
.end method

.method public abstract isDozingGps(I)Z
.end method

.method public abstract isMoving(Landroid/location/Location;)Z
.end method

.method public abstract mayUseAggressiveTimeoutLocked(FJJJJJFJJ)Z
.end method

.method public abstract onChange(ZLandroid/net/Uri;)V
.end method

.method public abstract prepareDeviceIdleController(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V
.end method

.method public abstract prepareLocationManagerService(Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
.end method

.method public abstract requestLocationUpdatesOverride()Z
.end method

.method public abstract scheduleAlarmOverride()Z
.end method

.method public abstract shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z
.end method

.method public abstract startMonitoringMotionOverride()Z
.end method

.method public abstract tryClearAllPendingBroadcasts()V
.end method
