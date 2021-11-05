.class public interface abstract Lcom/android/server/wm/IOpScreenCompat;
.super Ljava/lang/Object;
.source "IOpScreenCompat.java"


# virtual methods
.method public abstract expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract finishBooting()V
.end method

.method public abstract getCompatMode(Lcom/android/server/wm/ActivityRecord;)I
.end method

.method public abstract getCompatMode(Ljava/lang/String;I)I
.end method

.method public abstract getScreenExpandOffset(Lcom/android/server/wm/WindowState;)I
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract isDisplayCompat(Ljava/lang/String;I)Z
.end method

.method public abstract isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract overrideCompatInfoIfNeed(Landroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract overrideScaleIfNeed(Lcom/android/server/wm/WindowState;)F
.end method

.method public abstract resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I
.end method

.method public abstract resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract resetModeIfNeed(IILjava/lang/String;I)I
.end method

.method public abstract updateDefaultForScreenCompat()V
.end method

.method public abstract updateDefaultForScreenCompat(Ljava/lang/String;I)V
.end method

.method public abstract updateSizeForResolutionChanged()V
.end method
