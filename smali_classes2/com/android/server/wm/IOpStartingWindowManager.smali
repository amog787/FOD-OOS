.class public interface abstract Lcom/android/server/wm/IOpStartingWindowManager;
.super Ljava/lang/Object;
.source "IOpStartingWindowManager.java"


# virtual methods
.method public abstract checkActivityTypeHome(Lcom/android/server/wm/AppWindowToken;Z)Z
.end method

.method public abstract checkAppWindowAnimating(Lcom/android/server/wm/AppWindowToken;)Z
.end method

.method public abstract checkSkipTransitionAnimation(Lcom/android/server/wm/DisplayContent;)Z
.end method

.method public abstract checkSplashWindowFlag()Z
.end method

.method public abstract checkStartingWindowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/TypedArray;Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkoutWindowNeedHide(Lcom/android/server/wm/WindowState;I)I
.end method

.method public abstract clearCacheWhenOnConfigurationChange(I)V
.end method

.method public abstract createAnimationForLauncherExit()Landroid/view/animation/Animation;
.end method

.method public abstract getAppTransit(I)I
.end method

.method public abstract getStartingWindowType(III)I
.end method

.method public abstract handleDestroySurfaces(Ljava/lang/String;I)Z
.end method

.method public abstract handleStartingWindow(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract handleStatusbarForStartingWindow(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract interceptRemoveStartingWindow(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)Z
.end method

.method public abstract onStartAppShotcut()V
.end method

.method public abstract preloadAppSplash(ILcom/android/server/wm/SafeActivityOptions;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
.end method

.method public abstract putSnapshot(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract reviseWindowFlagsForStarting(Lcom/android/server/wm/ActivityRecord;ZZZZZ)V
.end method

.method public abstract setAppTransit(I)V
.end method

.method public abstract setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract setStartingWindowExitAnimation(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract skipAppTransitionAnimation()Z
.end method
