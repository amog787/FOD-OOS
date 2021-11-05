.class public interface abstract Lcom/android/server/wm/IOpAppLocker;
.super Ljava/lang/Object;
.source "IOpAppLocker.java"


# virtual methods
.method public abstract addAppLockerPassedPackage(Ljava/lang/String;)V
.end method

.method public abstract clearAppLockerPassedList()V
.end method

.method public abstract initOpAppLocker(Lcom/android/server/wm/ActivityTaskManagerService;)V
.end method

.method public abstract isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z
.end method

.method public abstract isAppLocked(Ljava/lang/String;I)Z
.end method

.method public abstract isAppLockerEnabled(I)Z
.end method

.method public abstract isKeyguardDone()Z
.end method

.method public abstract isPackageInPassedList(Ljava/lang/String;)Z
.end method

.method public abstract isTopAppLocked(Landroid/app/ActivityManager$RecentTaskInfo;I)Z
.end method

.method public abstract lockAppIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
.end method

.method public abstract lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
.end method

.method public abstract setKeyguardDone(Z)V
.end method

.method public abstract showHint(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract unLockAppIfNeed(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)Z
.end method
