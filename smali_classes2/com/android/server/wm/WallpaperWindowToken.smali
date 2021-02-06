.class Lcom/android/server/wm/WallpaperWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "WallpaperWindowToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "explicit"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "ownerCanManageAppTokens"    # Z

    .line 47
    const/16 v3, 0x7dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 48
    iget-object v0, p4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperWindowToken;->setWindowingMode(I)V

    .line 50
    return-void
.end method


# virtual methods
.method adjustWindowParams(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 164
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 171
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 174
    .local v1, "layoutScale":F
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 175
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 176
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 177
    return-void

    .line 166
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "layoutScale":F
    :cond_1
    :goto_0
    return-void
.end method

.method forAllWallpaperWindows(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WallpaperWindowToken;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method hasVisibleNotDrawnWallpaper()Z
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 182
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    return v1

    .line 180
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 186
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hideWallpaperToken(ZLjava/lang/String;)V
    .locals 2
    .param p1, "wasDeferred"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 61
    .local v1, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    .line 59
    .end local v1    # "wallpaper":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    .end local v0    # "j":I
    :cond_0
    return-void
.end method

.method sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "wallpaperNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 70
    .local v8, "wallpaper":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v1, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/4 p6, 0x0

    .line 74
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 67
    .end local v8    # "wallpaper":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 76
    .end local v0    # "wallpaperNdx":I
    :cond_0
    return-void
.end method

.method setExiting()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 56
    return-void
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ndx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 112
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    .end local v0    # "ndx":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WallpaperWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    .line 203
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method updateWallpaperOffset(Z)V
    .locals 4
    .param p1, "sync"    # Z

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 80
    .local v0, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "wallpaperNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 82
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const/4 p1, 0x0

    .line 80
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 87
    .end local v1    # "wallpaperNdx":I
    :cond_1
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 96
    .local v0, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "wallpaperNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 97
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 98
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_1

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    .line 102
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 96
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 104
    .end local v1    # "wallpaperNdx":I
    :cond_2
    return-void
.end method

.method updateWallpaperWindows(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eq v0, p1, :cond_1

    .line 119
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 126
    .local v0, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 128
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 129
    iget-object v3, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 130
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    .line 131
    .local v3, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    invoke-virtual {v3, p0}, Lcom/android/server/wm/RecentsAnimationController;->linkFixedRotationTransformIfNeeded(Lcom/android/server/wm/WindowToken;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 140
    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 147
    .end local v3    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "wallpaperNdx":I
    :goto_1
    if-ltz v3, :cond_8

    .line 148
    iget-object v4, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 150
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_5

    .line 151
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    .line 155
    :cond_5
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 157
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v5, :cond_7

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustWallpaper win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 160
    .end local v3    # "wallpaperNdx":I
    :cond_8
    return-void
.end method
