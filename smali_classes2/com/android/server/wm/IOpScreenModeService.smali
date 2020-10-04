.class public interface abstract Lcom/android/server/wm/IOpScreenModeService;
.super Ljava/lang/Object;
.source "IOpScreenModeService.java"


# virtual methods
.method public abstract adjustDensityForUser(II)I
.end method

.method public abstract doScreenRotation()V
.end method

.method public abstract getPreferredModeId(Lcom/android/server/wm/WindowState;I)I
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
.end method

.method public abstract isQHD()Z
.end method

.method public abstract onSetDensityForUser(II)V
.end method

.method public abstract setRefreshRate(Landroid/os/IBinder;I)V
.end method

.method public abstract setRefreshRate(Lcom/android/server/wm/AppWindowToken;I)V
.end method

.method public abstract updateGlobalModeId(I)I
.end method
