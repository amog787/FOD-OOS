.class public Lcom/android/server/wm/OpDisplayPolicyInjector;
.super Ljava/lang/Object;
.source "OpDisplayPolicyInjector.java"


# static fields
.field private static final EXTRA_FOCUS_WINDOW:Ljava/lang/String; = "focusWindow"

.field private static final EXTRA_LONGSHOT:Ljava/lang/String; = "longshot"

.field private static final EXTRA_VOICE_LONGSHOT:Ljava/lang/String; = "voiceLongshot"

.field public static final SCREENSHOT_TYPE_LONGSHOT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DisplayPolicyInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    nop

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isHomeApp(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p0, "winCandidate"    # Lcom/android/server/wm/WindowState;

    .line 111
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 113
    .local v1, "activityType":I
    :goto_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isNeedToHideNavBar(ZLcom/android/server/wm/WindowState;Z)Z
    .locals 1
    .param p0, "hideNavigationBar"    # Z
    .param p1, "winCandidate"    # Lcom/android/server/wm/WindowState;
    .param p2, "forcingShowNavBar"    # Z

    .line 100
    if-nez p1, :cond_0

    .line 101
    return p0

    .line 104
    :cond_0
    if-eqz p0, :cond_1

    if-nez p2, :cond_1

    .line 105
    invoke-static {p1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isHomeApp(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isSystemUI(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0
.end method

.method public static isSystemUI(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "winCandidate"    # Lcom/android/server/wm/WindowState;

    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 119
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0
.end method

.method public static stopLongshotConnection(Lcom/android/internal/util/ScreenshotHelper;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "screenshotHelper"    # Lcom/android/internal/util/ScreenshotHelper;
    .param p1, "focusedWindow"    # Lcom/android/server/wm/WindowState;

    .line 42
    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/util/ScreenshotHelper;->getScreenshotHelperInjector()Lcom/android/internal/util/ScreenshotHelperInjector;

    move-result-object v0

    .line 44
    .local v0, "screenshotHelperInjector":Lcom/android/internal/util/ScreenshotHelperInjector;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelperInjector;->stopLongshotConnection()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->longshotStop()V

    .line 51
    .end local v0    # "screenshotHelperInjector":Lcom/android/internal/util/ScreenshotHelperInjector;
    :cond_0
    return-void
.end method

.method public static takeScreenshot(Lcom/android/server/wm/WindowState;Landroid/content/Context;ZLcom/android/internal/util/ScreenshotHelper;ZIZZLandroid/os/Handler;I)V
    .locals 14
    .param p0, "focusedWindow"    # Lcom/android/server/wm/WindowState;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDocked"    # Z
    .param p3, "screenshotHelper"    # Lcom/android/internal/util/ScreenshotHelper;
    .param p4, "isUserSetupComplete"    # Z
    .param p5, "displayRotation"    # I
    .param p6, "statusBarVisible"    # Z
    .param p7, "navigationBarVisible"    # Z
    .param p8, "handler"    # Landroid/os/Handler;
    .param p9, "screenshotType"    # I

    .line 56
    move-object v0, p1

    move/from16 v1, p9

    const/4 v2, 0x0

    .line 58
    .local v2, "longshot":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 59
    .local v3, "inMultiWindow":Z
    :goto_0
    move/from16 v4, p2

    .line 61
    .local v4, "dockMinimized":Z
    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    if-eqz p4, :cond_3

    .line 62
    invoke-static {p1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    if-nez p5, :cond_3

    .line 64
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->isZenModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 68
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 71
    :goto_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v12, v5

    .line 73
    .local v12, "screenshotBundle":Landroid/os/Bundle;
    const/16 v5, 0x64

    if-ne v5, v1, :cond_4

    .line 74
    const/4 v5, 0x1

    const-string v6, "voiceLongshot"

    invoke-virtual {v12, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    const/4 v1, 0x1

    .line 77
    .end local p9    # "screenshotType":I
    .local v1, "screenshotType":I
    :cond_4
    const-string v5, "longshot"

    invoke-virtual {v12, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    if-eqz p0, :cond_5

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v6, "focusWindow"

    invoke-virtual {v12, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/util/ScreenshotHelper;->getScreenshotHelperInjector()Lcom/android/internal/util/ScreenshotHelperInjector;

    move-result-object v13

    .line 83
    .local v13, "screenshotHelperInjector":Lcom/android/internal/util/ScreenshotHelperInjector;
    if-eqz v13, :cond_6

    .line 84
    move-object v5, v13

    move v6, v1

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/util/ScreenshotHelperInjector;->takeScreenshot(IZZLandroid/os/Handler;ZLandroid/os/Bundle;)V

    .line 88
    :cond_6
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 89
    .local v5, "vibrator":Landroid/os/Vibrator;
    const/16 v6, 0x19

    invoke-static {p1, v5, v6}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    .line 90
    return-void
.end method
