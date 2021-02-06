.class Lcom/android/server/policy/DisplayFoldController;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayFoldController"


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

.field private mFocusedApp:Ljava/lang/String;

.field private mFolded:Ljava/lang/Boolean;

.field private final mFoldedArea:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayFoldListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mOverrideFoldedArea:Landroid/graphics/Rect;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V
    .locals 1
    .param p1, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p2, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p3, "displayId"    # I
    .param p4, "foldedArea"    # Landroid/graphics/Rect;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 55
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 58
    new-instance v0, Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-direct {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 63
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 64
    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 65
    iput p3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 67
    iput-object p5, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 189
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 190
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 191
    .local v0, "displayService":Landroid/hardware/display/DisplayManagerInternal;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040223

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "configFoldedArea":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {v7}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    move-object v8, v1

    .local v1, "foldedArea":Landroid/graphics/Rect;
    goto :goto_1

    .line 195
    .end local v1    # "foldedArea":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v1

    .line 200
    .local v8, "foldedArea":Landroid/graphics/Rect;
    :goto_1
    new-instance v9, Lcom/android/server/policy/DisplayFoldController;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 201
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, v9

    move-object v3, v0

    move v4, p1

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/DisplayFoldController;-><init>(Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V

    .line 200
    return-object v9
.end method

.method static createWithProxSensor(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 162
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 163
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 164
    .local v1, "proxSensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_0

    .line 165
    const/4 v2, 0x0

    return-object v2

    .line 168
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v2

    .line 169
    .local v2, "result":Lcom/android/server/policy/DisplayFoldController;
    new-instance v3, Lcom/android/server/policy/DisplayFoldController$1;

    invoke-direct {v3, v2}, Lcom/android/server/policy/DisplayFoldController$1;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 181
    return-object v2
.end method


# virtual methods
.method finishedGoingToSleep()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedGoingToSleep()V

    .line 72
    return-void
.end method

.method finishedWakingUp()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedWakingUp(Ljava/lang/Boolean;)V

    .line 76
    return-void
.end method

.method getFoldedArea()Landroid/graphics/Rect;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public synthetic lambda$registerDisplayFoldListener$1$DisplayFoldController(Landroid/view/IDisplayFoldListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 134
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 138
    :goto_0
    return-void
.end method

.method public synthetic lambda$requestDeviceFolded$0$DisplayFoldController(Z)V
    .locals 0
    .param p1, "folded"    # Z

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->setDeviceFolded(Z)V

    return-void
.end method

.method onDefaultDisplayFocusChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    .line 186
    return-void
.end method

.method registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 128
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;-><init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method requestDeviceFolded(Z)V
    .locals 2
    .param p1, "folded"    # Z

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;-><init>(Lcom/android/server/policy/DisplayFoldController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method setDeviceFolded(Z)V
    .locals 7
    .param p1, "folded"    # Z

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    if-eqz p1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .local v0, "foldedArea":Landroid/graphics/Rect;
    goto :goto_0

    .line 90
    .end local v0    # "foldedArea":Landroid/graphics/Rect;
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 96
    .restart local v0    # "foldedArea":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 97
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 99
    .local v1, "dx":I
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 103
    .local v2, "dy":I
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 104
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 104
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->setForcedDisplaySize(III)V

    .line 106
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    neg-int v5, v1

    neg-int v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 107
    .end local v0    # "foldedArea":Landroid/graphics/Rect;
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    goto :goto_1

    .line 93
    :cond_2
    return-void

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->clearForcedDisplaySize(I)V

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->setDeviceFolded(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->logFocusedAppWithFoldState(ZLjava/lang/String;)V

    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 116
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 117
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayFoldListener;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-interface {v2, v3, p1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_3

    .line 120
    :catch_0
    move-exception v2

    .line 117
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 125
    return-void
.end method

.method setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    return-void
.end method

.method unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 143
    return-void
.end method
