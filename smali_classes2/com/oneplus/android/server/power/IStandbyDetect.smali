.class public interface abstract Lcom/oneplus/android/server/power/IStandbyDetect;
.super Ljava/lang/Object;
.source "IStandbyDetect.java"


# virtual methods
.method public abstract checkIfHitBatteryLowLocked(Landroid/content/Intent;)V
.end method

.method public abstract dumpStandbyStats(Ljava/io/PrintWriter;)V
.end method

.method public abstract enteringDeepIdleLocked()V
.end method

.method public abstract initInstance(Lcom/android/server/DeviceIdleController;)V
.end method

.method public abstract leavingDeepIdleLocked(Z)V
.end method

.method public abstract notifyEnterDeepIdle()V
.end method

.method public abstract resetTimeofDeepIdleStart()V
.end method

.method public abstract setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V
.end method

.method public abstract shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
.end method

.method public abstract update1stLightIdleStatus(Z)V
.end method

.method public abstract updateScreenStatus(Z)V
.end method
