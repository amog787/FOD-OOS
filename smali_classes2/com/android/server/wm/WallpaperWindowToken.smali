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

    .line 41
    const/16 v3, 0x7dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 42
    iget-object v0, p4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 43
    return-void
.end method


# virtual methods
.method hasVisibleNotDrawnWallpaper()Z
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 148
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    return v1

    .line 146
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hideWallpaperToken(ZLjava/lang/String;)V
    .locals 3
    .param p1, "wasDeferred"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 54
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    .line 52
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 56
    .end local v0    # "j":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WallpaperWindowToken;->setHidden(Z)V

    .line 57
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

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "wallpaperNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 64
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

    .line 66
    const/4 p6, 0x0

    .line 68
    goto :goto_1

    .line 67
    :catch_0
    move-exception v1

    .line 61
    .end local v8    # "wallpaper":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    .end local v0    # "wallpaperNdx":I
    :cond_0
    return-void
.end method

.method setExiting()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 49
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

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WallpaperWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    .line 164
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method updateWallpaperOffset(IIZ)V
    .locals 4
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "sync"    # Z

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 74
    .local v0, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "wallpaperNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 76
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/4 p3, 0x0

    .line 74
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 81
    .end local v1    # "wallpaperNdx":I
    :cond_1
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 85
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 86
    .local v1, "dw":I
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 88
    .local v2, "dh":I
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isHidden()Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 89
    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setHidden(Z)V

    .line 92
    iget-object v3, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 96
    .local v3, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v4, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "wallpaperNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 97
    iget-object v5, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 98
    .local v5, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_1

    .line 99
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v1, v2, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 102
    :cond_1
    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 96
    .end local v5    # "wallpaper":Lcom/android/server/wm/WindowState;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 104
    .end local v4    # "wallpaperNdx":I
    :cond_2
    return-void
.end method

.method updateWallpaperWindows(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isHidden()Z

    move-result v0

    const-string v1, "WindowManager"

    if-ne v0, p1, :cond_1

    .line 119
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperWindowToken;->setHidden(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 127
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 128
    .local v2, "dw":I
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 129
    .local v3, "dh":I
    iget-object v4, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 130
    .local v4, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v5, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "wallpaperNdx":I
    :goto_0
    if-ltz v5, :cond_5

    .line 131
    iget-object v6, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 133
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_2

    .line 134
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v2, v3, v7}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 138
    :cond_2
    invoke-virtual {v6, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 140
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_4

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustWallpaper win "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 143
    .end local v5    # "wallpaperNdx":I
    :cond_5
    return-void
.end method
