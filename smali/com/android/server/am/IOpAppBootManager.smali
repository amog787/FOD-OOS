.class public interface abstract Lcom/android/server/am/IOpAppBootManager;
.super Ljava/lang/Object;
.source "IOpAppBootManager.java"


# virtual methods
.method public abstract addDependencyPackageFlag(Ljava/lang/String;I)V
.end method

.method public abstract canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
.end method

.method public abstract canInstrumentationGo(Landroid/content/ComponentName;II)Z
.end method

.method public abstract canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z
.end method

.method public abstract canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
.end method

.method public abstract canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
.end method

.method public abstract canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Z
.end method

.method public abstract canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
.end method

.method public abstract checkAppInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getScreenState()Z
.end method

.method public abstract handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
.end method

.method public abstract initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isBlackJobClass(Ljava/lang/String;)Z
.end method

.method public abstract isDebug()Z
.end method

.method public abstract isNotAppUserSetted(Ljava/lang/String;)Z
.end method

.method public abstract myLog(Ljava/lang/String;)V
.end method

.method public abstract setCurrentIME(Landroid/content/Intent;)V
.end method

.method public abstract setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
.end method

.method public abstract skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
.end method

.method public abstract updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V
.end method

.method public abstract updateAppStopInfo(Ljava/lang/String;)V
.end method

.method public abstract updateAppStopInfo(Ljava/lang/String;I)V
.end method

.method public abstract updatePowerFlag(Ljava/lang/String;I)V
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
