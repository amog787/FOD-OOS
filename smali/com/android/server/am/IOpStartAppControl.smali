.class public interface abstract Lcom/android/server/am/IOpStartAppControl;
.super Ljava/lang/Object;
.source "IOpStartAppControl.java"


# virtual methods
.method public abstract activityFinished(Landroid/content/pm/ActivityInfo;)V
.end method

.method public abstract addAccessibilityService(Landroid/content/ComponentName;)V
.end method

.method public abstract appBecomeVisible(I)V
.end method

.method public abstract canActivityGo(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract canInstrumentationGo(Landroid/content/ComponentName;I)Z
.end method

.method public abstract canJobSchedulerGo(Ljava/lang/Object;)Z
.end method

.method public abstract canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
.end method

.method public abstract canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
.end method

.method public abstract canProviderGo(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z
.end method

.method public abstract canReceiverGo(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z
.end method

.method public abstract dispatchBlockedAuthes(Landroid/app/IApplicationThread;Ljava/lang/String;)V
.end method

.method public abstract getJobTimeout()J
.end method

.method public abstract handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract initAms(Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isJobRestrict(Ljava/lang/Object;)Z
.end method

.method public abstract isOnePixelWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract removeAccessibilityService(Landroid/content/ComponentName;)V
.end method

.method public abstract reportRestrictJob(Ljava/lang/Object;J)V
.end method

.method public abstract setCurrentIME(Ljava/lang/String;)V
.end method

.method public abstract setCurrentWallpaper(Ljava/lang/String;)V
.end method

.method public abstract skipBroadcast(Ljava/lang/String;ILandroid/content/Intent;)Z
.end method

.method public abstract startJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract stopJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract updateAccessibilityService(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateGMSActionSet(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateGMSRestrict(Z)V
.end method

.method public abstract updateHighPowerUsagePackage(Ljava/lang/String;)V
.end method

.method public abstract updateHighPowerUsagePackages(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateWidgetComponent(Landroid/content/ComponentName;Z)V
.end method
