.class public interface abstract Lcom/android/server/IOPAppSwitchManagerService;
.super Ljava/lang/Object;
.source "IOPAppSwitchManagerService.java"


# virtual methods
.method public abstract getAppStartModeLocked(Ljava/lang/String;)I
.end method

.method public abstract getOposAdsSettings(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z
.end method

.method public abstract unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z
.end method
