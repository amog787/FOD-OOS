.class public interface abstract Lcom/android/server/wm/IOpWindowManagerService;
.super Ljava/lang/Object;
.source "IOpWindowManagerService.java"


# virtual methods
.method public abstract createScreenRotationAnimation(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;II)Lcom/android/server/wm/IScreenRotationAnimation;
.end method

.method public abstract forceDarkSystemUI(Lcom/android/server/wm/WindowState;I)I
.end method

.method public abstract isFullscreenScene()Z
.end method

.method public abstract notifySplitScreenModeChange(Z)V
.end method

.method public abstract notifyWindowStateChange(Landroid/os/Bundle;)V
.end method

.method public abstract setFullscreenScene(Z)V
.end method

.method public abstract stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
.end method
