.class public interface abstract Lcom/android/server/IOpSmartDoze;
.super Ljava/lang/Object;
.source "IOpSmartDoze.java"


# virtual methods
.method public abstract getAfterInactiveTimeout()J
.end method

.method public abstract getInactiveTimeout()J
.end method

.method public abstract getNotificationDirectRepliedUid(Ljava/lang/String;)V
.end method

.method public abstract initInstance(Lcom/android/server/net/NetworkPolicyManagerService;)V
.end method

.method public abstract initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V
.end method

.method public abstract isSmartDozeWhitelisted(I)Z
.end method

.method public abstract prepareDeviceIdleController(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V
.end method

.method public abstract setAlarmCauseExitDoze()V
.end method

.method public abstract setAlarmToUpdateWakeLock()V
.end method

.method public abstract setDeviceIdleState(I)V
.end method

.method public abstract shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z
.end method

.method public abstract updateRulesForSmartDozeWhitelistedAppIds(Landroid/util/SparseIntArray;)V
.end method
