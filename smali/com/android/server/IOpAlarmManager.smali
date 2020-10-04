.class public interface abstract Lcom/android/server/IOpAlarmManager;
.super Ljava/lang/Object;
.source "IOpAlarmManager.java"


# virtual methods
.method public abstract alleviateFirePendingLocked(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I
.end method

.method public abstract dumpNextWakeFromIdleInfo()V
.end method

.method public abstract ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z
.end method

.method public abstract ifEnableLogDump()Z
.end method

.method public abstract ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
.end method

.method public abstract ifNeedPending(Lcom/android/server/AlarmManagerService$Alarm;)Z
.end method

.method public abstract initInstance(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
.end method

.method public abstract modifyMinTrigger(JJJILandroid/app/PendingIntent;ILjava/lang/String;J)[J
.end method

.method public abstract onStart(Lcom/android/server/AlarmManagerService$AmsInner;)V
.end method

.method public abstract setDeepSleepMode(Z)V
.end method

.method public abstract setDeepSleepWhitelist([I)V
.end method

.method public abstract setPkgNetworkAlarmRestriction(Z)V
.end method

.method public abstract updateFlag(Ljava/lang/String;ILandroid/app/AlarmManager$AlarmClockInfo;)I
.end method
