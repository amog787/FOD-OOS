.class public Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;
.super Ljava/lang/Object;
.source "ColorZoomWindowManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ColorZoomWindowManagerServiceInjector"

.field private static sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTapExcluedWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 315
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 316
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->addTapExcluedWindow(Lcom/android/server/wm/WindowState;)V

    .line 319
    :cond_0
    return-void
.end method

.method public static adjustInputWindowHandle(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/WindowState;Landroid/view/InputWindowHandle;)V
    .locals 1
    .param p0, "monitor"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "handle"    # Landroid/view/InputWindowHandle;

    .line 284
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 285
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IColorZoomWindowManager;->adjustInputWindowHandle(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/WindowState;Landroid/view/InputWindowHandle;)V

    .line 288
    :cond_0
    return-void
.end method

.method public static adjustWindowCropForLeash(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "appToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "windowCrop"    # Landroid/graphics/Rect;

    .line 269
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 270
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->adjustWindowCropForLeash(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 273
    :cond_0
    return-void
.end method

.method public static adjustWindowFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowFrames;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "windowFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 291
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 292
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->adjustWindowFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowFrames;)V

    .line 295
    :cond_0
    return-void
.end method

.method public static amendWindowTapExcludeRegion(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .locals 1
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "region"    # Landroid/graphics/Region;

    .line 242
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 243
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->amendWindowTapExcludeRegion(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V

    .line 246
    :cond_0
    return-void
.end method

.method public static cantReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 437
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 438
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->cantReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 441
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkInSideGestureHotZone(FF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 490
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 491
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 492
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->checkInSideGestureHotZone(FF)Z

    move-result v0

    return v0

    .line 494
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static clearWindowFlagsIfNeed(Lcom/android/server/wm/WindowState;I)I
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "curFlags"    # I

    .line 227
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 228
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->clearWindowFlagsIfNeed(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    .line 231
    :cond_0
    return p1
.end method

.method public static displayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 351
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 352
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->displayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 355
    :cond_0
    return-void
.end method

.method static excludeWindowTypeFromTapOutTask(I)Z
    .locals 1
    .param p0, "windowType"    # I

    .line 395
    const/16 v0, 0x7d3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 403
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x904
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static gestureSwipeFromBottom()V
    .locals 1

    .line 330
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 331
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->gestureSwipeFromBottom()V

    .line 334
    :cond_0
    return-void
.end method

.method public static getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 1

    .line 116
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 117
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;-><init>()V

    return-object v0
.end method

.method public static getScaleBound(Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 445
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 446
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->getScaleBound(Landroid/graphics/Rect;)V

    .line 449
    :cond_0
    return-void
.end method

.method public static getTaskBound()Landroid/graphics/Rect;
    .locals 1

    .line 197
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 198
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->getTaskBound()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public static getWindowState(Lcom/android/server/wm/ActivityStack;)I
    .locals 1
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 298
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 299
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->getWindowState(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    return v0

    .line 302
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getZoomAnimationAdapter(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/ActivityRecord;Landroid/view/animation/Animation;ILandroid/graphics/Rect;IZ)Lcom/android/server/wm/AnimationAdapter;
    .locals 8
    .param p0, "adapter"    # Lcom/android/server/wm/AnimationAdapter;
    .param p1, "appToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "a"    # Landroid/view/animation/Animation;
    .param p3, "appStackClipMode"    # I
    .param p4, "transitStartRect"    # Landroid/graphics/Rect;
    .param p5, "transit"    # I
    .param p6, "enter"    # Z

    .line 260
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 261
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 262
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomAnimationAdapter(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/ActivityRecord;Landroid/view/animation/Animation;ILandroid/graphics/Rect;IZ)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    return-object p0
.end method

.method public static getZoomAppConfigList(I)Ljava/util/List;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 133
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomAppConfigList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getZoomModeDisplayInfo(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "info"    # Landroid/view/DisplayInfo;
    .param p1, "displayId"    # I
    .param p2, "callingUid"    # I

    .line 369
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 370
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomModeDisplayInfo(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    return-object p0
.end method

.method public static getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 1

    .line 149
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 150
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;-><init>()V

    return-object v0
.end method

.method public static getZoomWindowTransition(ILandroid/util/ArraySet;Landroid/util/ArraySet;)I
    .locals 1
    .param p0, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .line 513
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 514
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 515
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IColorZoomWindowManager;->getZoomWindowTransition(ILandroid/util/ArraySet;Landroid/util/ArraySet;)I

    move-result v0

    return v0

    .line 517
    :cond_0
    return p0
.end method

.method public static handleSleepStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 459
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 460
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->handleSleepStack(Lcom/android/server/wm/ActivityStack;)V

    .line 463
    :cond_0
    return-void
.end method

.method public static handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;II)V
    .locals 1
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 235
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 236
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;II)V

    .line 239
    :cond_0
    return-void
.end method

.method public static handleZoomStackByTargetTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 452
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 453
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->handleZoomStackByTargetTask(Lcom/android/server/wm/Task;)V

    .line 456
    :cond_0
    return-void
.end method

.method public static hideZoomWindow(I)V
    .locals 1
    .param p0, "flag"    # I

    .line 124
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 125
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->hideZoomWindow(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 77
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 78
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p0, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 71
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 84
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 85
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->init(Lcom/android/server/wm/WindowManagerService;)V

    .line 89
    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 63
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zoom_window:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 65
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IColorZoomWindowManager;

    sput-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    .line 67
    :cond_0
    return-void
.end method

.method public static isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "callPkg"    # Ljava/lang/String;
    .param p3, "extension"    # Landroid/os/Bundle;

    .line 140
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 141
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportZoomWindowMode()Z
    .locals 1

    .line 164
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 165
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lcom/android/server/wm/IColorZoomWindowManager;->isSupportZoomWindowMode()Z

    move-result v0

    return v0

    .line 168
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static notifyWindowDied(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 190
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 191
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->notifyWindowDied(Lcom/android/server/wm/ActivityStack;)V

    .line 194
    :cond_0
    return-void
.end method

.method public static notifyZoomActivityShown(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 183
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 184
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->notifyZoomActivityShown(Lcom/android/server/wm/ActivityRecord;)V

    .line 187
    :cond_0
    return-void
.end method

.method public static onAnimationFinished(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 337
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 338
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onAnimationFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 341
    :cond_0
    return-void
.end method

.method public static onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 1
    .param p0, "cvInfo"    # Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    .line 414
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 415
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    .line 418
    :cond_0
    return-void
.end method

.method public static onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 1
    .param p0, "inputEventInfo"    # Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    .line 407
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 408
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 411
    :cond_0
    return-void
.end method

.method public static onRemoveStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 521
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 522
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onRemoveStack(Lcom/android/server/wm/ActivityStack;)V

    .line 525
    :cond_0
    return-void
.end method

.method public static onWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 498
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 499
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->onWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 502
    :cond_0
    return-void
.end method

.method public static prepareSurfaceFromDim(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 249
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 250
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->prepareSurfaceFromDim(Lcom/android/server/wm/DisplayContent;)V

    .line 253
    :cond_0
    return-void
.end method

.method public static prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1
    .param p0, "curStack"    # Lcom/android/server/wm/ActivityStack;
    .param p1, "nextStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "open"    # Z

    .line 276
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 277
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IColorZoomWindowManager;->prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public static recentsAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z
    .locals 9
    .param p0, "taskId"    # I
    .param p1, "type"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I
    .param p4, "bOptions"    # Landroid/os/Bundle;
    .param p5, "controller"    # Landroid/view/IRecentsAnimationController;
    .param p6, "moveHomeToTop"    # Z
    .param p7, "sendUserLeaveHint"    # Z

    .line 474
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 475
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 476
    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/server/wm/IColorZoomWindowManager;->recentsAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z

    move-result v0

    return v0

    .line 479
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p0, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;

    .line 421
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 422
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0

    return v0

    .line 425
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1
    .param p0, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    .line 100
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 101
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static registerZoomWindowStackOrderChangeListener(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 466
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 467
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->registerZoomWindowStackOrderChangeListener(Lcom/android/server/wm/ActivityStack;)V

    .line 470
    :cond_0
    return-void
.end method

.method public static removeIfPossible(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 505
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 506
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->removeIfPossible(Lcom/android/server/wm/Task;)V

    .line 509
    :cond_0
    return-void
.end method

.method public static removeTapExcluedWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 322
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 323
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->removeTapExcluedWindow(Lcom/android/server/wm/WindowState;)V

    .line 326
    :cond_0
    return-void
.end method

.method public static resetZoomAnimationFinished(Z)V
    .locals 1
    .param p0, "moveHomeToTop"    # Z

    .line 483
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 484
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->resetZoomAnimationFinished(Z)V

    .line 487
    :cond_0
    return-void
.end method

.method public static setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 1
    .param p0, "config"    # Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    .line 157
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 158
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    .line 161
    :cond_0
    return-void
.end method

.method public static shouldClearReusedActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/util/MergedConfiguration;)Z
    .locals 1
    .param p0, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "startActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "lastReportedConfiguration"    # Landroid/util/MergedConfiguration;

    .line 378
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 379
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->shouldClearReusedActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/util/MergedConfiguration;)Z

    move-result v0

    return v0

    .line 383
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldIgnoreInputShownForResult(II)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "displayId"    # I

    .line 387
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 388
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->shouldIgnoreInputShownForResult(II)Z

    move-result v0

    return v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .param p3, "callPkg"    # Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 93
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 96
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static topResumedActivityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 344
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 345
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->topResumedActivityChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 348
    :cond_0
    return-void
.end method

.method public static unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p0, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;

    .line 429
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 430
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0

    return v0

    .line 433
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1
    .param p0, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    .line 108
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 109
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0

    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static updateInputVisibility(Lcom/android/server/wm/WindowState;Z)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "updateBound"    # Z

    .line 213
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 214
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->updateInputVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public static updateSurfacePosition(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p0, "stack"    # Lcom/android/server/wm/WindowContainer;

    .line 220
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 221
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p0}, Lcom/android/server/wm/IColorZoomWindowManager;->updateSurfacePosition(Lcom/android/server/wm/WindowContainer;)V

    .line 224
    :cond_0
    return-void
.end method

.method public static updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V
    .locals 7
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "startActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "updatemode"    # I
    .param p5, "callingPid"    # I

    .line 175
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 176
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 177
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IColorZoomWindowManager;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    .line 180
    :cond_0
    return-void
.end method

.method public static updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 205
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 206
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IColorZoomWindowManager;->updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z
    .locals 1
    .param p0, "windowingMode"    # I
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "activityType"    # I

    .line 307
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->initInstance()V

    .line 308
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->sZoomWindowManagerService:Lcom/android/server/wm/IColorZoomWindowManager;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IColorZoomWindowManager;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v0

    return v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
