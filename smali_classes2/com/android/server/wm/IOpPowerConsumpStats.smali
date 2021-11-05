.class public interface abstract Lcom/android/server/wm/IOpPowerConsumpStats;
.super Ljava/lang/Object;
.source "IOpPowerConsumpStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;
    }
.end annotation


# virtual methods
.method public abstract dumpDailyPowerFiles(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpPkgStatInfo(Ljava/lang/String;)V
.end method

.method public abstract getResult(Ljava/io/PrintWriter;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
.end method

.method public abstract handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Z
.end method

.method public abstract initPlugState(ZIZ)Z
.end method

.method public abstract notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V
.end method

.method public abstract notifyBatteryLevelEvent(I)V
.end method

.method public abstract notifyDozeEvent(ZLjava/lang/String;)V
.end method

.method public abstract notifyFastChargeEvent(Z)V
.end method

.method public abstract notifyPkgEvent(Landroid/content/ComponentName;Z)V
.end method

.method public abstract notifyPlugEvent(Ljava/lang/Boolean;IZ)V
.end method

.method public abstract notifyScreenEvent(Ljava/lang/Boolean;)V
.end method

.method public abstract registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V
.end method

.method public abstract resetClean(Ljava/io/PrintWriter;)V
.end method

.method public abstract updateLastUserActivityTime(JIII)V
.end method

.method public abstract updateScreenState(I)V
.end method
