.class public interface abstract Lcom/android/server/policy/IOpPowerKeyLaunchManager;
.super Ljava/lang/Object;
.source "IOpPowerKeyLaunchManager.java"


# virtual methods
.method public abstract cancelPendingPowerKeyAction()V
.end method

.method public abstract handleEmergency(Landroid/util/MutableBoolean;)Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V
.end method

.method public abstract initGestureLauncherService(Lcom/android/server/GestureLauncherService;)V
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
.end method

.method public abstract interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
.end method

.method public abstract interceptPowerKeyUp()V
.end method

.method public abstract isDoubleTapPowerWalletHasNoActiveCard()Z
.end method

.method public abstract processEmergencyTap(Landroid/view/KeyEvent;ZZ)Z
.end method

.method public abstract registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
.end method

.method public abstract updateSettings(Landroid/content/ContentResolver;)V
.end method
