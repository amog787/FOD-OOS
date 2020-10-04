.class public Lcom/android/server/wm/OpOneHandModeInjector;
.super Ljava/lang/Object;
.source "OpOneHandModeInjector.java"


# static fields
.field public static final ENABLED:Z

.field private static sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x102

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isBetaVersion()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/wm/OpOneHandModeInjector;->ENABLED:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFrameLw(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 60
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 61
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->computeFrameLw(Lcom/android/server/wm/WindowState;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static continueAnimation()V
    .locals 1

    .line 198
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 199
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->continueAnimation()V

    .line 202
    :cond_0
    return-void
.end method

.method public static forceCancelImmediately(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 190
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->forceCancelImmediately(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public static forceCancelOneHandMode(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 92
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->forceCancelOneHandMode(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public static getCornerRadius()I
    .locals 1

    .line 124
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 125
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->getCornerRadius()I

    move-result v0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOffsetY()I
    .locals 1

    .line 115
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 116
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->getOffsetY()I

    move-result v0

    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOneHandModeLock()Ljava/lang/Object;
    .locals 1

    .line 225
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 226
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->getOneHandModeLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOneHandModeScreenSize()Landroid/graphics/Rect;
    .locals 1

    .line 132
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 133
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->getOneHandModeScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/server/wm/OpOneHandModeInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_onehandmode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 40
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpOneHandMode;

    sput-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    .line 42
    :cond_0
    return-void
.end method

.method public static initOneHandMode(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 45
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 46
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpOneHandMode;->initOneHandMode(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static isBetaVersion()Z
    .locals 4

    .line 208
    const-string v0, "unknown"

    const-string v1, "ro.build.alpha"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "isAlpha":Ljava/lang/String;
    const-string v2, "ro.build.beta"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "isBeta":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isForceCancellingOneHandMode()Z
    .locals 1

    .line 98
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 99
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->isForceCancellingOneHandMode()Z

    move-result v0

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneHandModeAnimating()Z
    .locals 1

    .line 74
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->isOneHandModeAnimating()Z

    move-result v0

    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneHandModeRunning()Z
    .locals 1

    .line 107
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 108
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->isOneHandModeRunning()Z

    move-result v0

    return v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneHandModeShouldShowWallpaper()Z
    .locals 1

    .line 82
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 83
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->isOneHandModeShouldShowWallpaper()Z

    move-result v0

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static notifyOneHandModeAnimationDone(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 68
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->notifyOneHandModeAnimationDone(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static notifyTopResumedActivityChanged()V
    .locals 1

    .line 216
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 217
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->notifyTopResumedActivityChanged()V

    .line 220
    :cond_0
    return-void
.end method

.method public static requestExitOneHandMode()Z
    .locals 1

    .line 148
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 149
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->requestExitOneHandMode()Z

    move-result v0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static requestOneHandModeByStatus(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 157
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 158
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->requestOneHandModeByStatus(I)Z

    move-result v0

    return v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static requestStartOneHandMode()Z
    .locals 1

    .line 140
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 141
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->requestStartOneHandMode()Z

    move-result v0

    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static resetCornerRadiusAndAnimationIfNeeded(Landroid/view/animation/Animation;IZF)F
    .locals 1
    .param p0, "a"    # Landroid/view/animation/Animation;
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "oriRadius"    # F

    .line 179
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 180
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpOneHandMode;->resetCornerRadiusAndAnimationIfNeeded(Landroid/view/animation/Animation;IZF)F

    move-result v0

    return v0

    .line 183
    :cond_0
    return p3
.end method

.method public static systemReady()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 54
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->systemReady()V

    .line 57
    :cond_0
    return-void
.end method

.method public static updateOneHandDims(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;I)Z
    .locals 1
    .param p0, "dimmer"    # Lcom/android/server/wm/Dimmer;
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offsetY"    # I

    .line 168
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    .line 169
    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpOneHandMode;->updateOneHandDims(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;I)Z

    move-result v0

    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
