.class public interface abstract Lcom/android/server/IOpWirelessChargeDisconnectDetector;
.super Ljava/lang/Object;
.source "IOpWirelessChargeDisconnectDetector.java"


# virtual methods
.method public abstract copyPowerDisconnectedBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract fakeBatteryChangedBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract initInstance(Landroid/content/Context;)V
.end method

.method public abstract isFakingWirelessCharging()Z
.end method

.method public abstract shouldAbortPowerConnectedBroadcast(I)Z
.end method

.method public abstract shouldDeferWirelessDisconnection()Z
.end method
