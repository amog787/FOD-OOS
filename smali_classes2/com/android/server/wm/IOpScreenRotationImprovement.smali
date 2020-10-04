.class public interface abstract Lcom/android/server/wm/IOpScreenRotationImprovement;
.super Ljava/lang/Object;
.source "IOpScreenRotationImprovement.java"


# virtual methods
.method public abstract init(Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
.end method

.method public abstract initBlackFrame(Landroid/view/SurfaceControl$Transaction;ZIIZ)Lcom/android/server/wm/BlackFrame;
.end method

.method public abstract loadAnimation(IZII)Landroid/view/animation/Animation;
.end method

.method public abstract stepAnimation(JILandroid/view/animation/Animation;)V
.end method

.method public abstract updateEnteringBlackFrame(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BlackFrame;)Lcom/android/server/wm/BlackFrame;
.end method
