.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;,
        Lcom/android/server/policy/WindowManagerPolicy$UserRotationMode;,
        Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;,
        Lcom/android/server/policy/WindowManagerPolicy$RotationSource;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;,
        Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;,
        Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowState;,
        Lcom/android/server/policy/WindowManagerPolicy$AltBarPosition;,
        Lcom/android/server/policy/WindowManagerPolicy$NavigationBarPosition;
    }
.end annotation


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final COLOR_FADE_LAYER:I = 0x40000001

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1


# direct methods
.method public static opAdjustLayerFromType(I)I
    .locals 2
    .param p0, "origin"    # I

    .line 938
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    .line 939
    add-int/lit8 v1, p0, 0x24

    add-int/lit8 p0, v1, -0x64

    .line 941
    :cond_0
    return p0
.end method

.method public static userRotationModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 1507
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1513
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1511
    :cond_0
    const-string v0, "USER_ROTATION_LOCKED"

    return-object v0

    .line 1509
    :cond_1
    const-string v0, "USER_ROTATION_FREE"

    return-object v0
.end method


# virtual methods
.method public abstract addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(IZLjava/lang/String;[I)I
.end method

.method public abstract createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp(I)V
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .locals 1

    .line 1538
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public getMaxWindowLayer()I
    .locals 1

    .line 925
    const/16 v0, 0x29

    return v0
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .locals 2
    .param p1, "type"    # I

    .line 955
    packed-switch p1, :pswitch_data_0

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sub-window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/4 v0, 0x0

    return v0

    .line 966
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 962
    :pswitch_1
    const/4 v0, -0x1

    return v0

    .line 964
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 960
    :pswitch_3
    const/4 v0, -0x2

    return v0

    .line 958
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getUiMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .locals 2
    .param p1, "type"    # I

    .line 766
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0

    .line 767
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z

    .line 788
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v0, :cond_0

    const/16 v2, 0x63

    if-gt p1, v2, :cond_0

    .line 789
    return v1

    .line 792
    :cond_0
    const/16 v2, 0x7e8

    if-eq p1, v2, :cond_7

    const/16 v2, 0x906

    const/16 v3, 0xa

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7ea

    if-eq p1, v2, :cond_5

    const/16 v2, 0x7eb

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return v1

    .line 892
    :pswitch_0
    const/16 v0, 0x64

    return v0

    .line 901
    :pswitch_1
    const/16 v0, 0x68

    return v0

    .line 899
    :pswitch_2
    const/16 v0, 0x67

    return v0

    .line 897
    :pswitch_3
    const/16 v0, 0x66

    return v0

    .line 895
    :pswitch_4
    const/16 v0, 0x65

    return v0

    .line 838
    :pswitch_5
    const/16 v0, 0x12

    return v0

    .line 840
    :pswitch_6
    const/16 v0, 0x13

    return v0

    .line 880
    :pswitch_7
    const/16 v0, 0x20

    return v0

    .line 828
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 862
    :pswitch_9
    const/16 v0, 0x1a

    return v0

    .line 802
    :pswitch_a
    return v1

    .line 800
    :pswitch_b
    return v1

    .line 878
    :pswitch_c
    const/16 v0, 0x1f

    return v0

    .line 810
    :pswitch_d
    const/4 v0, 0x5

    return v0

    .line 798
    :pswitch_e
    return v1

    .line 812
    :pswitch_f
    const/4 v0, 0x6

    return v0

    .line 884
    :pswitch_10
    const/16 v0, 0x22

    return v0

    .line 848
    :pswitch_11
    const/16 v0, 0x16

    return v0

    .line 855
    :pswitch_12
    const/16 v0, 0x18

    return v0

    .line 887
    :pswitch_13
    const/16 v0, 0x23

    return v0

    .line 842
    :pswitch_14
    const/16 v0, 0x14

    return v0

    .line 875
    :pswitch_15
    const/16 v0, 0x1e

    return v0

    .line 882
    :pswitch_16
    const/16 v0, 0x21

    return v0

    .line 795
    :pswitch_17
    return v0

    .line 834
    :pswitch_18
    const/16 v0, 0x10

    return v0

    .line 831
    :pswitch_19
    const/16 v0, 0xf

    return v0

    .line 865
    :pswitch_1a
    if-eqz p2, :cond_1

    const/16 v3, 0x1b

    :cond_1
    return v3

    .line 844
    :pswitch_1b
    const/16 v0, 0x15

    return v0

    .line 814
    :pswitch_1c
    const/4 v0, 0x7

    return v0

    .line 820
    :pswitch_1d
    const/16 v0, 0x9

    return v0

    .line 852
    :pswitch_1e
    if-eqz p2, :cond_2

    const/16 v0, 0x17

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    :goto_0
    return v0

    .line 817
    :pswitch_1f
    const/16 v0, 0x8

    return v0

    .line 825
    :pswitch_20
    if-eqz p2, :cond_3

    const/16 v3, 0xd

    :cond_3
    return v3

    .line 804
    :pswitch_21
    const/4 v0, 0x3

    return v0

    .line 807
    :pswitch_22
    const/4 v0, 0x4

    return v0

    .line 836
    :pswitch_23
    const/16 v0, 0x11

    return v0

    .line 868
    :cond_4
    const/16 v0, 0x1c

    return v0

    .line 871
    :cond_5
    const/16 v0, 0x1d

    return v0

    .line 906
    :cond_6
    return v3

    .line 858
    :cond_7
    const/16 v0, 0x19

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d5
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7df
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7ee
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_22
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8ff
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 755
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IJI)I
.end method

.method public abstract isFODAndKeyguard()Z
.end method

.method public abstract isKeyguardDisabledAndNotShowing()Z
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract isUserSetupComplete()Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate()Z
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1544
    return-void
.end method

.method public abstract onKeyguardDone()V
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onLongshotStart()V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 1520
    return-void
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract setAllowLockscreenWhenOn(IZ)V
.end method

.method public abstract setAodShowing(Z)Z
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public abstract setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .line 1408
    return-void
.end method

.method public abstract setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 1532
    return-void
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setTopFocusedDisplay(I)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp(I)V
.end method

.method public abstract stopLongshotConnection()V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract takeOPScreenshot(II)V
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 1525
    return-void
.end method

.method public abstract userActivity()V
.end method
