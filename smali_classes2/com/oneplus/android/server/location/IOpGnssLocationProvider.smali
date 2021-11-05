.class public interface abstract Lcom/oneplus/android/server/location/IOpGnssLocationProvider;
.super Ljava/lang/Object;
.source "IOpGnssLocationProvider.java"


# virtual methods
.method public abstract getForceMSA()Z
.end method

.method public abstract getGnssHalDbgLevel(Z)I
.end method

.method public abstract getHandledFusedLocation(Landroid/location/Location;)Landroid/location/Location;
.end method

.method public abstract getHandledNetworkLocation(Landroid/location/Location;)Landroid/location/Location;
.end method

.method public abstract getLogLevelStatusUpdates()Z
.end method

.method public abstract handleExtraGnssProviderCmd(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract initInstance(Landroid/content/Context;)V
.end method

.method public abstract isDisableDeviceIdle()Z
.end method

.method public abstract resetForceMSA()V
.end method

.method public abstract setLogUpate()V
.end method
