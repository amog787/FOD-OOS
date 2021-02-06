.class public interface abstract Lcom/android/server/policy/IOpQuickPay;
.super Ljava/lang/Object;
.source "IOpQuickPay.java"


# virtual methods
.method public abstract beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
.end method

.method public abstract focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract initOpQuickPay(Landroid/content/Context;Landroid/os/Handler;I)V
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)I
.end method

.method public abstract notifyAppLaunchFailedLw(Ljava/lang/String;)V
.end method

.method public abstract registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
.end method

.method public abstract updateSettings(Landroid/content/ContentResolver;)V
.end method
