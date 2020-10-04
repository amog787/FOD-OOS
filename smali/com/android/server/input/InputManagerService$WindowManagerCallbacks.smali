.class public interface abstract Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowManagerCallbacks"
.end annotation


# virtual methods
.method public abstract dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract getPointerDisplayId()I
.end method

.method public abstract getPointerLayer()I
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IJI)I
.end method

.method public abstract notifyANR(Landroid/os/IBinder;Ljava/lang/String;)J
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyConfigurationChanged()V
.end method

.method public abstract notifyInputChannelBroken(Landroid/os/IBinder;)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract onPointerDownOutsideFocus(Landroid/os/IBinder;)V
.end method
