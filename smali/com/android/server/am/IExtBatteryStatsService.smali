.class public interface abstract Lcom/android/server/am/IExtBatteryStatsService;
.super Ljava/lang/Object;
.source "IExtBatteryStatsService.java"


# virtual methods
.method public abstract addLevelSteps(IJJ)V
.end method

.method public abstract clearTime()V
.end method

.method public abstract cloneKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cloneWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dumpDetail(Ljava/lang/String;Z)V
.end method

.method public abstract flushExternal()V
.end method

.method public abstract initInstance(Lcom/android/server/am/BatteryStatsService;Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V
.end method

.method public abstract snapShotKernelWakelockStats(J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract snapShotWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract systemServicesReady()V
.end method

.method public abstract updateCollectCount(I)V
.end method

.method public abstract updateDeepSleepStatus(Z)V
.end method

.method public abstract updateKernelWakelocks()V
.end method
