.class public interface abstract Lcom/android/server/wm/IOpScreenRotationImprovement;
.super Ljava/lang/Object;
.source "IOpScreenRotationImprovement.java"


# virtual methods
.method public abstract calColorForSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;I)V
.end method

.method public abstract init(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract kill()V
.end method

.method public abstract loadAnimation(IZII)Landroid/view/animation/Animation;
.end method

.method public abstract setInitColorForBackColorSurface(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract startScreenRotationAnimation()V
.end method
