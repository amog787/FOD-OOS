.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowState"
.end annotation


# virtual methods
.method public abstract canAcquireSleepToken()Z
.end method

.method public canAddInternalSystemWindow()Z
    .locals 1

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public abstract canAffectSystemUiFlags()Z
.end method

.method public abstract canReceiveKeys()Z
.end method

.method public abstract canShowWhenLocked()Z
.end method

.method public abstract computeFrameLw()V
.end method

.method public getActivityType()I
    .locals 1

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getAppToken()Landroid/view/IApplicationToken;
.end method

.method public abstract getAttrs()Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract getBaseType()I
.end method

.method public abstract getContentFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getDisplayFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenContentInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenInsetsPendingLw()Z
.end method

.method public abstract getGivenVisibleInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract getOverscanFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getOwningPackage()Ljava/lang/String;
.end method

.method public abstract getOwningUid()I
.end method

.method public abstract getRotationAnimationHint()I
.end method

.method public abstract getSurfaceLayer()I
.end method

.method public abstract getSystemUiVisibility()I
.end method

.method public abstract getVisibleFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getWindowFrames()Lcom/android/server/wm/WindowFrames;
.end method

.method public abstract getWindowPid()I
.end method

.method public abstract getWindowToken()Landroid/os/IBinder;
.end method

.method public abstract getWindowingMode()I
.end method

.method public abstract hasAppShownWindows()Z
.end method

.method public abstract hasDrawnLw()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hideLw(Z)Z
.end method

.method public abstract inMultiWindowMode()Z
.end method

.method public abstract isActivityTypeHome()Z
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isAnimatingLw()Z
.end method

.method public abstract isDefaultDisplay()Z
.end method

.method public abstract isDimming()Z
.end method

.method public abstract isDisplayedLw()Z
.end method

.method public abstract isDrawnLw()Z
.end method

.method public abstract isGoneForLayoutLw()Z
.end method

.method public abstract isInputMethodTarget()Z
.end method

.method public abstract isInputMethodWindow()Z
.end method

.method public isLetterboxedForDisplayCutoutLw()Z
    .locals 1

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isVisibleLw()Z
.end method

.method public abstract isVoiceInteraction()Z
.end method

.method public abstract longshotStart()V
.end method

.method public abstract longshotStop()V
.end method

.method public abstract showLw(Z)Z
.end method

.method public abstract writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
.end method
