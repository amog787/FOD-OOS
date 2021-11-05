.class public interface abstract Lcom/android/server/power/IOpPowerManager;
.super Ljava/lang/Object;
.source "IOpPowerManager.java"


# virtual methods
.method public abstract addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
.end method

.method public abstract checkWakeUpOrDoze(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract clearExclusiveWakeLock(Z)V
.end method

.method public abstract disableExclusiveWakeLocks(Z)V
.end method

.method public abstract enableExclusiveWakeLocks(Z)V
.end method

.method public abstract flushExclusiveWakeLock()V
.end method

.method public abstract getExclusiveWakeLock(Z)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract handleForceStop(Landroid/os/Message;)V
.end method

.method public abstract handleLightIdleBlackList()V
.end method

.method public abstract handleOnlineConfig()V
.end method

.method public abstract ifEnableLogDump()Z
.end method

.method public abstract ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
.end method

.method public abstract init(Landroid/content/res/Resources;)V
.end method

.method public abstract initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V
.end method

.method public abstract sendOemShutDownBroadcast(Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract setDeviceIdleAggressive(Z)V
.end method

.method public abstract setDeviceIdleState(I)V
.end method

.method public abstract setWakelockDisabled(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
.end method

.method public abstract updateBlockedUids(IZ)V
.end method
