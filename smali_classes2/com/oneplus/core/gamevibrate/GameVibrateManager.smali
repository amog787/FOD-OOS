.class public Lcom/oneplus/core/gamevibrate/GameVibrateManager;
.super Ljava/lang/Object;
.source "GameVibrateManager.java"

# interfaces
.implements Lcom/oneplus/core/gamevibrate/IGameVibrateManager;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/core/gamevibrate/IGameVibrateService;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_ONEPLUS:Z

.field public static final ONEPLUS_GAME_VIBRATE_SERVICE:Ljava/lang/String; = "game_vibrate_service"

.field private static final TAG:Ljava/lang/String; = "GameVibrateManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->DEBUG_ONEPLUS:Z

    .line 35
    new-instance v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager$1;

    invoke-direct {v0}, Lcom/oneplus/core/gamevibrate/GameVibrateManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    .locals 1

    .line 32
    sget-object v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    return-object v0
.end method


# virtual methods
.method public getGameStartFlag()Z
    .locals 3

    .line 90
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 91
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->getGameStartFlag()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 98
    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "getGameStartFlag(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getSupportedGame()[Ljava/lang/String;
    .locals 3

    .line 120
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 121
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->getSupportedGame()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 126
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 128
    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "getSupportedGame(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getZoneInfo()[I
    .locals 3

    .line 162
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 163
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->getZoneInfo()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 168
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 170
    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "getZoneInfo(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public init(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->DEBUG_ONEPLUS:Z

    const-string v1, "GameVibrateManager"

    if-eqz v0, :cond_0

    .line 57
    const-string v0, " init "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 60
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_1

    .line 62
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 67
    :cond_1
    const-string v2, "init(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_1
    return-void
.end method

.method public isOnlineConfigEnable()Z
    .locals 3

    .line 105
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 106
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->isOnlineConfigEnable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 113
    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "isOnlineConfigEnable(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 191
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 192
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    goto :goto_1

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 199
    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "onPointerEvent(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 73
    sget-boolean v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->DEBUG_ONEPLUS:Z

    const-string v1, "GameVibrateManager"

    if-eqz v0, :cond_0

    .line 74
    const-string v0, " release "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 77
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_1

    .line 79
    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 84
    :cond_1
    const-string v2, "release(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_1
    return-void
.end method

.method public saveZoneInfo(ZZ)V
    .locals 3
    .param p1, "init"    # Z
    .param p2, "requestUpdate"    # Z

    .line 135
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 136
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->saveZoneInfo(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    goto :goto_1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 143
    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "saveZoneInfo(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_1
    return-void
.end method

.method public setScreenSize()V
    .locals 3

    .line 177
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 178
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->setScreenSize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    goto :goto_1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 185
    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "setScreenSize(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_1
    return-void
.end method

.method public setZoneInfo([I)V
    .locals 3
    .param p1, "data"    # [I

    .line 149
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    .line 150
    .local v0, "service":Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->setZoneInfo([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    goto :goto_1

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 157
    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "setZoneInfo() GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_1
    return-void
.end method
