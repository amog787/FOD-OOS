.class public Lcom/android/server/wm/OpDisplayContentInjector;
.super Ljava/lang/Object;
.source "OpDisplayContentInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpDisplayContentInjector"

.field private static sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpDisplayContentInjector;->DEBUG:Z

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb0

    aput v2, v0, v1

    .line 39
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpDisplayContentInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)I
    .locals 8
    .param p0, "homeStake"    # Lcom/android/server/wm/ActivityStack;
    .param p1, "splitScreenPrimaryStack"    # Lcom/android/server/wm/ActivityStack;

    .line 154
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    :goto_0
    nop

    .line 157
    .local v0, "homeWin":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "net.oneplus.launcher"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 159
    .local v3, "isOPLauncher":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 161
    const/4 v4, 0x0

    .line 162
    .local v4, "isCTSdocked":Z
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 164
    .local v5, "topApp":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_2

    .line 165
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.server.wm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move v4, v1

    .line 167
    .end local v5    # "topApp":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    if-nez v4, :cond_6

    .line 168
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_4

    goto :goto_3

    .line 169
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v2

    :goto_3
    move v1, v2

    .line 170
    .local v1, "orientation":I
    sget-boolean v2, Lcom/android/server/wm/OpDisplayContentInjector;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lock Orientation for OPLauncher to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "OpDisplayContentInjector"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_5
    return v1

    .line 177
    .end local v0    # "homeWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "orientation":I
    .end local v3    # "isOPLauncher":Z
    .end local v4    # "isCTSdocked":Z
    :cond_6
    const/4 v0, -0x2

    return v0
.end method

.method public static handleAppTransitionReady()I
    .locals 1

    .line 66
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->initInstance()V

    .line 67
    sget-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/android/server/wm/IOpDisplayContent;->handleAppTransitionReady()I

    move-result v0

    return v0

    .line 70
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 51
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->initInstance()V

    .line 52
    sget-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpDisplayContent;->init(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Lcom/android/server/wm/DisplayContent;)V

    .line 55
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/wm/OpDisplayContentInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaycontent:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpDisplayContent;

    sput-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    .line 47
    :cond_0
    return-void
.end method

.method public static makeCovered()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->initInstance()V

    .line 59
    sget-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/android/server/wm/IOpDisplayContent;->makeCovered()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static removeImmediately()V
    .locals 1

    .line 95
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->initInstance()V

    .line 96
    sget-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/android/server/wm/IOpDisplayContent;->removeImmediately()V

    .line 99
    :cond_0
    return-void
.end method

.method public static setBooleanNotificationRemoteInputeDraft(Z)V
    .locals 1
    .param p0, "value"    # Z

    .line 88
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->initInstance()V

    .line 89
    sget-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpDisplayContent;->setBooleanNotificationRemoteInputeDraft(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public static setFocusedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "newFocus"    # Lcom/android/server/wm/ActivityRecord;

    .line 74
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpDisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static setSourceBoundFromIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 81
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->initInstance()V

    .line 82
    sget-object v0, Lcom/android/server/wm/OpDisplayContentInjector;->sOpDisplayContent:Lcom/android/server/wm/IOpDisplayContent;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpDisplayContent;->setSourceBoundFromIntent(Landroid/content/Intent;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static shouldScheduleToastTimeout(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p0, "oldFocus"    # Lcom/android/server/wm/WindowState;

    .line 148
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.widget.toast.legacy.cts"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 148
    :goto_1
    return v0
.end method

.method public static updateFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "newFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "oldFocus"    # Lcom/android/server/wm/WindowState;

    .line 105
    const/4 v0, 0x0

    const-string v1, "OpDisplayContentInjector"

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    if-eqz v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No need waiting to show for old focused win:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear mDeferredHideWallpaper for newFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 122
    :cond_1
    const/16 v2, 0x7f8

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v2, :cond_3

    .line 123
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    .line 124
    .local v3, "pid":I
    sget-boolean v4, Lcom/android/server/wm/OpDisplayContentInjector;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set focused StatusBar win as top, pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Process;->setProcessGroup(II)V

    .line 128
    const/4 v4, -0x2

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_0

    .line 138
    .end local v3    # "pid":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 130
    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v2, :cond_5

    .line 131
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    .line 132
    .local v2, "pid":I
    sget-boolean v3, Lcom/android/server/wm/OpDisplayContentInjector;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set non-focused StatusBar win as default, pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_4
    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/Process;->setProcessGroup(II)V

    .line 136
    invoke-static {v2, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 139
    .end local v2    # "pid":I
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "setProcessGroup for StatusBar window failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    nop

    .line 142
    :goto_3
    return-void
.end method
