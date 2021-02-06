.class interface abstract Lcom/android/server/am/IBroadcast;
.super Ljava/lang/Object;
.source "IBroadcast.java"


# virtual methods
.method public abstract adjustIfAppNotExist(Lcom/android/server/am/BroadcastRecord;)V
.end method

.method public abstract adjustReceiverListForSMS(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;
.end method

.method public abstract dumpsys(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract enqueueBroadcastLocked(ZLcom/android/server/am/BroadcastRecord;)V
.end method

.method public abstract init()V
.end method

.method public abstract init(Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract isEnableDelayStrategy()Z
.end method

.method public abstract isEnableFeature()Z
.end method

.method public abstract processOrderedBroadcastForPriorityLocked(Lcom/android/server/am/BroadcastRecord;I)V
.end method

.method public abstract processParallelBroadcastLocked()V
.end method

.method public abstract skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
.end method

.method public abstract skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
.end method

.method public abstract speedMonitor(ZI)V
.end method

.method public abstract systemReady(Landroid/content/Context;)V
.end method

.method public abstract updateAnrCount()V
.end method

.method public abstract updateRcvInfo(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
.end method

.method public abstract updateReceiverCount()V
.end method
