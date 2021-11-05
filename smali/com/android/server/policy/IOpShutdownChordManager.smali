.class public interface abstract Lcom/android/server/policy/IOpShutdownChordManager;
.super Ljava/lang/Object;
.source "IOpShutdownChordManager.java"


# virtual methods
.method public abstract init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Ljava/lang/Long;
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
.end method

.method public abstract interceptPowerKeyDown(Landroid/view/KeyEvent;ZZZZI)Z
.end method

.method public abstract interceptPowerKeyUp()Z
.end method

.method public abstract registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
.end method

.method public abstract updateSettings(Landroid/content/ContentResolver;)V
.end method
