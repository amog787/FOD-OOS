.class public interface abstract Lcom/android/server/am/IOpBGFrozen;
.super Ljava/lang/Object;
.source "IOpBGFrozen.java"


# virtual methods
.method public abstract addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V
.end method

.method public abstract addProc(IILcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
.end method

.method public abstract broadcastTimeoutEvent(IILandroid/content/Intent;)V
.end method

.method public abstract bumpServiceEvent(IIZLjava/lang/String;)V
.end method

.method public abstract checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
.end method

.method public abstract checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract checkTimeoutBegin(III)V
.end method

.method public abstract checkTimeoutEnd(I)V
.end method

.method public abstract clearImportantUids()V
.end method

.method public abstract clientConnectionRemoveEvent(II)V
.end method

.method public abstract contentNotifyResumeEvent(IZ)V
.end method

.method public abstract getEnable()Z
.end method

.method public abstract getJobTimeout()J
.end method

.method public abstract importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
.end method

.method public abstract initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V
.end method

.method public abstract isBlockedGpsUid(I)Z
.end method

.method public abstract isDeliverDisplayChange(I)Z
.end method

.method public abstract isJobRestrict(Lcom/android/server/job/controllers/JobStatus;)Z
.end method

.method public abstract isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isUidFrozen(I)Z
.end method

.method public abstract isUidImperceptible(I)Z
.end method

.method public abstract mediaProjectionEvent(IZ)V
.end method

.method public abstract permRequestDecEvent(I)V
.end method

.method public abstract receiveBroadcastEvent(IIZZLandroid/content/Intent;)V
.end method

.method public abstract removeDisplayCallback(II)V
.end method

.method public abstract removeProc(II)V
.end method

.method public abstract reportRestrictJob(Lcom/android/server/job/controllers/JobStatus;J)V
.end method

.method public abstract screenStateChangedEvent(Z)V
.end method

.method public abstract serviceTimeoutEvent(IILjava/lang/String;)V
.end method

.method public abstract shellCommand(Ljava/lang/String;I[Ljava/lang/String;Ljava/io/PrintWriter;)Z
.end method

.method public abstract skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
.end method

.method public abstract skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
.end method

.method public abstract startMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public abstract stopMonitoring(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract triggerResume(ILjava/lang/String;)V
.end method

.method public abstract updateDisplayEvent(II)V
.end method

.method public abstract updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract updateLastImportantUidsIfNeeded()V
.end method

.method public abstract updateLocationReceiverUidsChange(IZZZ)V
.end method

.method public abstract virtualDeviceChangeEvent(IZLjava/lang/String;)V
.end method
