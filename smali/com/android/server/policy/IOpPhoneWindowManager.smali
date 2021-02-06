.class public interface abstract Lcom/android/server/policy/IOpPhoneWindowManager;
.super Ljava/lang/Object;
.source "IOpPhoneWindowManager.java"


# virtual methods
.method public abstract forceShuttingDownPortait()V
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract isGestureButtonEnabled()Z
.end method

.method public abstract isGestureButtonRegion(II)Z
.end method

.method public abstract isGestureButtonWithoutHideBarEnabled()Z
.end method

.method public abstract isGestureSideEnabled()Z
.end method

.method public abstract isNavIconHide()Z
.end method

.method public abstract isShuttingDown()Z
.end method

.method public abstract notifyLockTaskMode(Z)V
.end method

.method public abstract oemIsActionPassToUser()Z
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public abstract setCurrentRotation(I)V
.end method

.method public abstract shouldSkipLockTaskMode()Z
.end method

.method public abstract systemReady()V
.end method
