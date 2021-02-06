.class public Lcom/android/server/wm/ShellRoot;
.super Ljava/lang/Object;
.source "ShellRoot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellRoot"


# instance fields
.field private mAccessibilityWindow:Landroid/view/IWindow;

.field private mAccessibilityWindowDeath:Landroid/os/IBinder$DeathRecipient;

.field private mClient:Landroid/view/IWindow;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mToken:Lcom/android/server/wm/WindowToken;


# direct methods
.method constructor <init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V
    .locals 15
    .param p1, "client"    # Landroid/view/IWindow;
    .param p2, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "windowType"    # I

    .line 49
    move-object v1, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    const-string v12, "ShellRoot"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 50
    iput-object v10, v1, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 51
    new-instance v2, Lcom/android/server/wm/-$$Lambda$ShellRoot$ZIRxB0zj35u-emFBSiaW8a8zUus;

    invoke-direct {v2, p0, v11}, Lcom/android/server/wm/-$$Lambda$ShellRoot$ZIRxB0zj35u-emFBSiaW8a8zUus;-><init>(Lcom/android/server/wm/ShellRoot;I)V

    iput-object v2, v1, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 53
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 59
    move-object/from16 v13, p1

    iput-object v13, v1, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    .line 60
    new-instance v14, Lcom/android/server/wm/WindowToken;

    iget-object v3, v10, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 61
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v14

    move/from16 v5, p3

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V

    iput-object v14, v1, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    .line 62
    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowToken;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shell Root Leash "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 67
    iget-object v0, v1, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 68
    return-void

    .line 54
    :catch_0
    move-exception v0

    move-object/from16 v13, p1

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add shell root for layer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v12, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    return-void
.end method


# virtual methods
.method clear()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 73
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 77
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    .line 79
    :cond_1
    return-void
.end method

.method getClient()Landroid/view/IWindow;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    return-object v0
.end method

.method getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getWindowInfo()Landroid/view/WindowInfo;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    iget v0, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/4 v1, 0x0

    const/16 v2, 0x7f2

    if-eq v0, v2, :cond_0

    .line 115
    return-object v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    return-object v1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    if-nez v0, :cond_2

    .line 121
    return-object v1

    .line 123
    :cond_2
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 124
    .local v0, "windowInfo":Landroid/view/WindowInfo;
    iget-object v1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 125
    iget-object v1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    iget v1, v1, Lcom/android/server/wm/WindowToken;->windowType:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 126
    iget-object v1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 128
    const-string v1, "Splitscreen Divider"

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    .line 130
    iput-boolean v1, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 131
    iput-boolean v1, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .local v1, "regionRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    .line 134
    iget-object v2, v0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 135
    return-object v0
.end method

.method public synthetic lambda$new$0$ShellRoot(I)V
    .locals 1
    .param p1, "windowType"    # I

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->removeShellRoot(I)V

    return-void
.end method

.method public synthetic lambda$setAccessibilityWindow$1$ShellRoot()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ShellRoot;->setAccessibilityWindow(Landroid/view/IWindow;)V

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setAccessibilityWindow(Landroid/view/IWindow;)V
    .locals 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    .line 143
    if-eqz p1, :cond_1

    .line 145
    :try_start_0
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ShellRoot$lmw8rpv8pDkMx1BUK9v0HtaPVZ8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$ShellRoot$lmw8rpv8pDkMx1BUK9v0HtaPVZ8;-><init>(Lcom/android/server/wm/ShellRoot;)V

    iput-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Landroid/os/IBinder$DeathRecipient;

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 158
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    aput v3, v2, v1

    .line 157
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked([I)V

    .line 160
    :cond_2
    return-void
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    iget v0, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v1, 0x7f2

    if-eq v0, v1, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 96
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 101
    :cond_1
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 103
    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 105
    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x0

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object v3, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 109
    .local v1, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/16 v5, 0x10

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/wm/WindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 111
    return-void
.end method
