.class public interface abstract Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;
.super Ljava/lang/Object;
.source "IHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;,
        Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;
    }
.end annotation


# virtual methods
.method public abstract beginCpuStatistics()V
.end method

.method public abstract cancelBgDetectNotificationIfNeeded()V
.end method

.method public abstract doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
.end method

.method public abstract dumpBGCStats(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
.end method

.method public abstract dumpDailyPowerFiles(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V
.end method

.method public abstract finishCpuStatistics()V
.end method

.method public abstract forceUpdateOnlineConfig()V
.end method

.method public abstract getBgPowerHungryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceTemp()I
.end method

.method public abstract getResult(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
.end method

.method public abstract informBGCDailyReporting(Z)V
.end method

.method public abstract informBatteryStatReset()V
.end method

.method public abstract informPkgRemoved(Ljava/lang/String;I)V
.end method

.method public abstract initInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
.end method

.method public abstract postProcessOfForceStop(Ljava/lang/String;I)V
.end method

.method public abstract removeUidStats(I)V
.end method

.method public abstract resetClean(Ljava/io/PrintWriter;)V
.end method

.method public abstract shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z
.end method

.method public abstract startMonitor()V
.end method

.method public abstract stopBgPowerHungryApp(Ljava/lang/String;I)V
.end method

.method public abstract updateWidgetPackage(Ljava/lang/String;Z)V
.end method

.method public abstract updateWidgetPackages(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
