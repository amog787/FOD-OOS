.class public interface abstract Lcom/android/server/wm/IOpOneHandMode;
.super Ljava/lang/Object;
.source "IOpOneHandMode.java"


# virtual methods
.method public abstract computeFrameLw(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract continueAnimation()V
.end method

.method public abstract forceCancelImmediately(Ljava/lang/String;)V
.end method

.method public abstract forceCancelOneHandMode(Ljava/lang/String;)V
.end method

.method public abstract getCornerRadius()I
.end method

.method public abstract getOffsetY()I
.end method

.method public abstract getOneHandModeLock()Ljava/lang/Object;
.end method

.method public abstract getOneHandModeScreenSize()Landroid/graphics/Rect;
.end method

.method public abstract initOneHandMode(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract isForceCancellingOneHandMode()Z
.end method

.method public abstract isOneHandModeAnimating()Z
.end method

.method public abstract isOneHandModeRunning()Z
.end method

.method public abstract isOneHandModeShouldShowWallpaper()Z
.end method

.method public abstract notifyOneHandModeAnimationDone(Ljava/lang/String;)V
.end method

.method public abstract notifyTopResumedActivityChanged()V
.end method

.method public abstract requestExitOneHandMode()Z
.end method

.method public abstract requestOneHandModeByStatus(I)Z
.end method

.method public abstract requestStartOneHandMode()Z
.end method

.method public abstract resetCornerRadiusAndAnimationIfNeeded(Landroid/view/animation/Animation;IZF)F
.end method

.method public abstract systemReady()V
.end method

.method public abstract updateOneHandDims(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;I)Z
.end method
