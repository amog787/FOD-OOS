.class public abstract Lcom/android/server/wm/WindowManagerInternal;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;,
        Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;,
        Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;,
        Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addNonHighRefreshRatePackage(Ljava/lang/String;)V
.end method

.method public abstract addWindowToken(Landroid/os/IBinder;II)V
.end method

.method public abstract clearForcedDisplaySize(I)V
.end method

.method public abstract clearSnapshotCache()V
.end method

.method public abstract computeWindowsForAccessibility(I)V
.end method

.method public abstract getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
.end method

.method public abstract getDisplayIdForWindow(Landroid/os/IBinder;)I
.end method

.method public abstract getFocusedWindowToken()Landroid/os/IBinder;
.end method

.method public abstract getImeControlTargetNameForLogging(I)Ljava/lang/String;
.end method

.method public abstract getImeTargetNameForLogging(I)Ljava/lang/String;
.end method

.method public abstract getInputMethodWindowVisibleHeight(I)I
.end method

.method public abstract getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;
.end method

.method public abstract getMagnificationRegion(ILandroid/graphics/Region;)V
.end method

.method public abstract getTopFocusedDisplayId()I
.end method

.method public abstract getTopFocusedDisplayUiContext()Landroid/content/Context;
.end method

.method public abstract getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
.end method

.method public abstract getWindowName(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract getWindowOwnerUserId(Landroid/os/IBinder;)I
.end method

.method public abstract hideIme(Landroid/os/IBinder;I)V
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isHardKeyboardAvailable()Z
.end method

.method public abstract isInputMethodClientFocus(III)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isStackVisibleLw(I)Z
.end method

.method public abstract isTouchableDisplay(I)Z
.end method

.method public abstract isUidAllowedOnDisplay(II)Z
.end method

.method public abstract isUidFocused(I)Z
.end method

.method public abstract lockNow()V
.end method

.method public abstract registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
.end method

.method public abstract registerDragDropControllerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
.end method

.method public abstract removeNonHighRefreshRatePackage(Ljava/lang/String;)V
.end method

.method public abstract removeWindowToken(Landroid/os/IBinder;ZI)V
.end method

.method public abstract reportPasswordChanged(I)V
.end method

.method public abstract requestTraversalFromDisplayManager()V
.end method

.method public abstract setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V
.end method

.method public abstract setForceShowMagnifiableBounds(IZ)V
.end method

.method public abstract setForcedDisplaySize(III)V
.end method

.method public abstract setInputFilter(Landroid/view/IInputFilter;)V
.end method

.method public abstract setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
.end method

.method public abstract setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
.end method

.method public abstract setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V
.end method

.method public abstract setVr2dDisplayId(I)V
.end method

.method public abstract setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)Z
.end method

.method public abstract shouldShowIme(I)Z
.end method

.method public abstract shouldShowSystemDecorOnDisplay(I)Z
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showImePostLayout(Landroid/os/IBinder;)V
.end method

.method public abstract updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V
.end method

.method public abstract updateInputMethodWindowStatus(Landroid/os/IBinder;ZZ)V
.end method

.method public abstract waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V
.end method
